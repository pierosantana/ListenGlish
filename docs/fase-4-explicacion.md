# Fase 4 — Caché de Diccionario

## Qué construimos

Un endpoint `GET /api/dictionary/{word}` que devuelve la definición, fonética, URL de audio y significados de cualquier palabra en inglés, usando la Free Dictionary API como fuente y PostgreSQL como caché de 30 días.

```
GET /api/dictionary/hello
→ {
    "word": "hello",
    "phonetic": "/həˈloʊ/",
    "audioUrl": "https://api.dictionaryapi.dev/media/pronunciations/en/hello.mp3",
    "meanings": [
      { "partOfSpeech": "exclamation",
        "definitions": [
          { "definition": "Used as a greeting.", "example": "Hello there, how are you?" }
        ]
      }
    ]
  }
```

---

## Nuevos archivos

```
src/main/java/com/listenglish/
├── client/
│   ├── DictionaryApi.java          ← interfaz (contrato)
│   └── DictionaryApiClient.java    ← implementación HTTP (ya existía, ahora impl. DictionaryApi)
├── entity/
│   └── DictionaryCache.java        ← entidad JPA para tabla dictionary_cache
├── repository/
│   └── DictionaryCacheRepository.java
├── service/
│   └── DictionaryService.java
├── controller/
│   └── DictionaryController.java
└── dto/
    └── DictionaryResponse.java

src/main/resources/db/migration/
└── V2__dictionary_cache.sql

src/test/java/com/listenglish/service/
└── DictionaryServiceTest.java      ← 6 tests unitarios con Mockito
```

---

## Flujo completo

```
Cliente → DictionaryController → DictionaryService → DictionaryCacheRepository (DB)
                                                   ↘ DictionaryApiClient (HTTP)
```

1. El controller recibe `GET /api/dictionary/hello`.
2. El service normaliza: `"Hello"` → `"hello"` (lowercase + trim).
3. Busca en `dictionary_cache` por la clave `"hello"`.
4. **Cache HIT válido** (menos de 30 días): parsea el JSON guardado y devuelve.
5. **Cache MISS** (no existe): llama a la Free Dictionary API, guarda en cache, devuelve.
6. **Cache expirado** (más de 30 días): llama a la API, *actualiza* el registro existente, devuelve.

---

## Decisiones de diseño

### ¿Por qué JSONB y no columnas separadas?

La Free Dictionary API devuelve un JSON complejo con estructura variable. Si guardáramos cada campo en columna propia, tendríamos ~10 columnas y consultas complejas.

Con `JSONB` guardamos el JSON completo como un blob opaco. Ventajas:
- La migración es simple: solo `word`, `payload`, `cached_at`.
- Si la API añade nuevos campos mañana, ya los tenemos guardados.
- Solo parseamos cuando los necesitamos (en el service, no al guardar).

Desventaja: no podemos hacer `WHERE payload->>'word' = 'hello'` eficientemente sin un índice GIN sobre el JSONB (no necesario aquí porque ya tenemos la PK `word`).

### ¿Por qué TTL de 30 días?

Las definiciones de palabras en inglés no cambian. 30 días balancea:
- **Frescura**: si la API corrige un error, lo obtenemos eventualmente.
- **Rendimiento**: la mayoría de búsquedas populares (`hello`, `the`, `run`) nunca tocan la API externa tras el primer acceso.
- **Coste**: la Free Dictionary API es gratuita pero no ilimitada en producción.

### ¿Por qué JsonNode y no clases de deserialización?

Podríamos haber creado clases Java que mapeen exactamente la estructura de la API:

```java
record ApiEntry(String word, String phonetic, List<ApiPhonetic> phonetics, List<ApiMeaning> meanings) {}
```

Pero esto tiene un problema: si la API cambia su estructura (añade/elimina campos), Jackson falla en deserializar. Con `JsonNode` navegamos el árbol manualmente y simplemente ignoramos lo que no nos interesa. Más robusto para APIs externas que no controlamos.

### Interfaz DictionaryApi — Principio de Inversión de Dependencias

`DictionaryService` depende de `DictionaryApi` (interfaz), no de `DictionaryApiClient` (clase concreta).

```java
// Mal: dependencia concreta
private final DictionaryApiClient apiClient;

// Bien: dependencia abstracta
private final DictionaryApi apiClient;
```

**¿Por qué?** Dos razones:

1. **Testabilidad con Java 21+**: Mockito puede siempre crear mocks de interfaces. Mockear clases concretas con Java 21+ requiere abrir el módulo `java.lang` (flag `--add-opens`), que es frágil y puede fallar en versiones futuras de Java.

2. **SOLID - "D"**: el Principio de Inversión de Dependencias dice que los módulos de alto nivel (Service) no deben depender de módulos de bajo nivel (HTTP client). Ambos deben depender de abstracciones (interfaces).

Spring inyecta `DictionaryApiClient` porque es el único `@Component` que implementa `DictionaryApi`.

---

## El caché: comparación con Redis

En producción, el caché de diccionario podría estar en Redis. Aquí usamos PostgreSQL. ¿Diferencias?

| Aspecto | Redis | PostgreSQL (nuestra solución) |
|---------|-------|-------------------------------|
| Velocidad | ~0.1ms (RAM) | ~1ms (disco/RAM) |
| TTL automático | `EXPIRE key 30d` | Calculado manualmente en código |
| Persistencia | Configurable | Siempre persistente |
| Complejidad | Otro servicio que operar | Ya tenemos PG |
| Adecuado para | Millones de req/s | Miles de req/s |

Para ListenGlish (proyecto de aprendizaje, tráfico bajo), PostgreSQL es suficiente y más sencillo de entender.

---

## La tabla `dictionary_cache`

```sql
CREATE TABLE dictionary_cache (
    word       VARCHAR(100) PRIMARY KEY,   -- clave de caché (ya normalizada)
    payload    JSONB        NOT NULL,       -- respuesta completa de la API
    cached_at  TIMESTAMPTZ  DEFAULT NOW()  -- cuándo se guardó
);

CREATE INDEX idx_dictionary_cache_cached_at ON dictionary_cache (cached_at);
```

El índice en `cached_at` nos permitiría en el futuro hacer limpieza eficiente:
```sql
DELETE FROM dictionary_cache WHERE cached_at < NOW() - INTERVAL '30 days';
```

---

## `@Transactional` en el service

El método `getDefinition` está marcado como `@Transactional`. Esto significa:

1. Spring abre una transacción de base de datos al entrar al método.
2. Si el método termina normalmente → Spring hace `COMMIT`.
3. Si el método lanza una excepción no verificada → Spring hace `ROLLBACK`.

Esto garantiza consistencia: si la API devuelve datos pero falla el `save()`, no quedamos en un estado intermedio inconsistente.

---

## `asText(null)` — cómo Jackson maneja los nulls en JSON

Cuando un campo del JSON es `null` o no existe:

```java
// ❌ Esto devuelve la string "null", no el valor null de Java
String example = defNode.path("example").asText();

// ✅ Esto devuelve null de Java si el campo es null o no existe
String example = defNode.path("example").asText(null);
```

Siempre usamos `asText(null)` para campos opcionales como `phonetic`, `example`, `audio`.

---

## Tests — estrategia

Todos los tests de `DictionaryServiceTest` son **unitarios** (no necesitan base de datos ni Docker):

- **`@Mock DictionaryApi`**: mockeamos la interfaz, no la implementación HTTP.
- **`new ObjectMapper()`**: no necesitamos mockear — Jackson es determinista y no tiene efectos secundarios.
- **`@Mock DictionaryCacheRepository`**: mockeamos el repositorio para no necesitar base de datos.

### Los 6 tests

| Test | Qué verifica |
|------|-------------|
| `getDefinition_conCacheMiss` | Si no hay cache, llama a la API y guarda |
| `getDefinition_conCacheValido` | Si hay cache válido, NO llama a la API |
| `getDefinition_conCacheExpirado` | Si el cache expiró, refresca llamando a la API |
| `getDefinition_normalizaPalabraAMinusculas` | "Hello" → busca "hello" |
| `getDefinition_palabraNoExiste_propagaExcepcion` | WordNotFoundException llega al caller |
| `parseApiResponse_extraeCorrectamenteLosSignificados` | Parseo JSON correcto |

---

## Preguntas de entrevista

**1. ¿Por qué usas una interfaz si solo hay una implementación?**

Por testabilidad y SOLID. Con una interfaz, los tests pueden mockear sin importar la versión de Java. Y si en el futuro añadimos un cliente alternativo (con rate limiting, con fallback), el `DictionaryService` no cambia.

**2. ¿Qué pasa si dos requests llegan simultáneamente para la misma palabra sin caché?**

Ambas llaman a la API y ambas intentan hacer `save()`. En nuestra implementación actual, la segunda sobreescribe a la primera (mismo `word` PK → `UPSERT` implícito de JPA). En producción habría que usar un lock distribuido o `SELECT FOR UPDATE`, pero para este proyecto el resultado es correcto aunque ineficiente.

**3. ¿Por qué `TIMESTAMPTZ` y no `TIMESTAMP`?**

`TIMESTAMP` guarda la hora sin zona horaria. Si el servidor cambia de zona horaria o hay múltiples servidores en diferentes regiones, las comparaciones de tiempo fallan. `TIMESTAMPTZ` (timestamp with time zone) convierte y almacena siempre en UTC. Es la opción correcta para cualquier dato temporal en una aplicación web.

**4. ¿Cómo invalidarías el caché manualmente?**

Con el esquema actual, haciendo un `DELETE FROM dictionary_cache WHERE word = 'hello'` directamente en la base de datos. En una versión más completa, añadiríamos un endpoint admin `DELETE /api/admin/dictionary/{word}/cache`. O usaríamos Spring Cache (`@CacheEvict`) con Redis como backend.

**5. ¿Qué hace `@PathVariable` vs `@RequestParam`?**

- `@PathVariable`: extrae un segmento de la ruta → `GET /api/dictionary/hello` (el recurso *es* la URL).
- `@RequestParam`: extrae un parámetro de query → `GET /api/search?q=hello` (es un filtro/parámetro de búsqueda).

Para un diccionario, `@PathVariable` es más REST: "dame el recurso /dictionary/hello".

**6. ¿Por qué `RestClient` y no `RestTemplate`?**

`RestTemplate` está en modo mantenimiento desde Spring 5. `RestClient` (Spring 6.1+) tiene una API fluida (builder pattern), es más legible y soporta tanto ejecución síncrona como reactiva. Es la opción moderna recomendada por Spring para clientes HTTP síncronos.

**7. ¿Limitarías el número de definiciones devueltas? ¿Por qué?**

Sí, limitamos a 3 definiciones por `partOfSpeech`. La Free Dictionary API puede devolver 20+ definiciones para palabras comunes como "run". Enviar todo al frontend sería:
- Excesivo en términos de tamaño de respuesta.
- Abrumador para el usuario (está aprendiendo inglés, no es lingüista).

En una API real documentarías este límite y probablemente lo harías configurable.

---

## Flujo de arranque (startup)

```
1. Spring Boot arranca
2. DataSource conecta a PostgreSQL (localhost:5432/listenglish)
3. Flyway comprueba flyway_schema_history:
   - V1__initial_schema.sql → ya aplicada ✓
   - V2__dictionary_cache.sql → ya aplicada ✓
4. Hibernate valida que las entidades coincidan con el schema (ddl-auto: validate)
5. Spring registra DictionaryApiClient como @Component (implementa DictionaryApi)
6. Spring inyecta DictionaryApi → DictionaryService → DictionaryController
7. Servidor listo en puerto 8080
```

---

## Ejemplo de uso

```bash
# Primera llamada: cache miss → llama a la API
curl http://localhost:8080/api/dictionary/creativity | jq

# Segunda llamada: cache hit → respuesta instantánea desde PostgreSQL
curl http://localhost:8080/api/dictionary/creativity | jq

# Verificar qué hay en el caché
docker compose exec db psql -U listenglish -c \
  "SELECT word, cached_at FROM dictionary_cache;"

# Palabra inexistente → 500 (en Fase 6 será 404)
curl http://localhost:8080/api/dictionary/xyznotaword
```
