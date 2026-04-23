# Fase 2 — Explicación Técnica: Ingesta de Transcripciones

## ¿Qué construimos?

Un endpoint `POST /api/admin/videos` que recibe un vídeo con sus segmentos de subtítulo,
los persiste en PostgreSQL y genera el `tsvector` de búsqueda para cada segmento.

---

## Nuevos componentes

### `VideoIngestRequest` (DTO — Data Transfer Object)

Un **Java Record** que representa el cuerpo JSON de la petición.

**¿Por qué un Record y no una clase normal?**
Los Records (Java 16+) son perfectos para DTOs: son inmutables por diseño y generan
automáticamente constructor, getters, `equals`, `hashCode` y `toString`. Para un
contenedor de datos que solo transporta información, una clase normal tiene demasiado
boilerplate innecesario.

**¿Por qué un DTO separado de la entidad?**
La entidad `Video` mapea exactamente a la tabla de la BD — tiene `id`, `createdAt`, y
otras cosas que no deben exponerse en la API. El DTO define exactamente lo que aceptas
del exterior, y te permite validar y transformar antes de tocar la entidad.
Regla: **nunca expongas entidades JPA directamente como cuerpo de request/response**.

### `VideoIngestionService`

Contiene toda la lógica de ingesta. Puntos clave:

**`@Transactional`:** Esta anotación envuelve todo el método en una transacción de BD.
Si algo falla (por ejemplo, al insertar el segmento 5 de 10), PostgreSQL hace rollback
automático de todo: ni el vídeo ni los segmentos anteriores quedan en la BD.
Sin `@Transactional`, podrías terminar con un vídeo sin segmentos o con datos a medias.

**¿Por qué el método `ingest()` hace dos llamadas por segmento?**
```
subtitleSegmentRepository.save(segment)           // paso 1: INSERT (JPA)
subtitleSegmentRepository.updateSearchVector(id)  // paso 2: UPDATE con to_tsvector (SQL nativo)
```
Porque `search_vector` es de tipo `tsvector` — no es un tipo SQL estándar que JPA
pueda escribir directamente. Al poner `insertable=false` en la entidad, JPA ignora esa
columna en el INSERT. Luego actualizamos con SQL nativo que usa la función de PostgreSQL.

**Alternativa que NO usamos — trigger de BD:**
Podríamos crear un trigger de PostgreSQL que actualizara `search_vector` automáticamente
en cada INSERT. Es más eficiente (un solo viaje a la BD), pero es "magia invisible":
la lógica vive en la BD y no en el código Java. Para un proyecto educativo, preferimos
que todo sea explícito y trazable en el código.

**`VideoAlreadyExistsException`:**
Excepción de dominio definida como clase estática anidada. Es `RuntimeException`
(no chequeada), lo que significa que el compilador no obliga a atraparla con try/catch.
La Fase 6 añadirá un `@ControllerAdvice` que la convertirá automáticamente en HTTP 409.

### `updateSearchVector` en el repositorio

```java
@Modifying
@Query(value = "UPDATE subtitle_segment SET search_vector = to_tsvector('english', text) WHERE id = :id",
       nativeQuery = true)
void updateSearchVector(@Param("id") Long id);
```

**`@Modifying`:** Obligatorio para queries de modificación (UPDATE/DELETE/INSERT) en
Spring Data JPA. Sin él, Spring lanza una excepción porque asume que toda `@Query` es un SELECT.

**`nativeQuery = true`:** Usa SQL de PostgreSQL directamente, no JPQL (el SQL de JPA).
Necesario porque `to_tsvector` es una función propietaria de PostgreSQL que JPQL no conoce.

**`to_tsvector('english', text)`:**
- `'english'` = configuración de texto: diccionario, stemming y stopwords del inglés.
  Stemming: "running" → "run", "creativity" → "creat". Stopwords: "the", "is", "a" se ignoran.
- `text` = la columna de la propia tabla, no un parámetro. PostgreSQL lee el texto
  del segmento y genera la representación normalizada.

### `seed-data.json` y `seed.sh`

4 TED Talks con 7-8 segmentos cada una. El script `seed.sh` usa `curl` para llamar
al endpoint una vez por vídeo. No hay lógica especial: es la forma más directa de
poblar datos para desarrollo.

---

## Decisiones de diseño

### ¿Por qué no validación con `@Valid` / Bean Validation?

Intencionalmente omitida en esta fase. La Fase 6 añadirá `@Valid` y `jakarta.validation`
(anotaciones como `@NotBlank`, `@NotNull`). Hacerlo ahora oscurecería los conceptos
principales de esta fase.

### ¿Por qué `/api/admin/videos` y no `/api/videos`?

Sin autenticación, la separación en `/api/admin/*` es solo una convención que
documenta la intención: estos endpoints son para operaciones privilegiadas, no para
usuarios finales. Si en el futuro añades seguridad, sabes exactamente qué proteger.

### ¿Por qué calcular `durationSeconds` del último segmento si no se proporciona?

Porque `duration_seconds NOT NULL` en la BD, y el llamador puede no conocer la duración
exacta del vídeo. El último segmento da una aproximación razonable. Es mejor que
obligar al cliente a proporcionar un dato que puede omitir.

---

## Flujo completo de una petición POST /api/admin/videos

```
POST /api/admin/videos
        ↓
AdminController.ingestVideo(@RequestBody)
  Jackson deserializa el JSON a VideoIngestRequest
        ↓
VideoIngestionService.ingest(request)
  1. videoRepository.findByYoutubeId() → ¿ya existe? → 409
  2. new Video(...) + videoRepository.save() → INSERT en tabla video
  3. Para cada segmento:
     a. new SubtitleSegment(...) + subtitleSegmentRepository.save() → INSERT
     b. subtitleSegmentRepository.updateSearchVector(id) → UPDATE con to_tsvector
        ↓
VideoIngestResponse { videoId, youtubeId, segmentsIngested }
        ↓
AdminController devuelve HTTP 201 Created con el response como JSON
```

---

## Preguntas de entrevista que cubre esta fase

1. **¿Qué es un DTO y por qué no exponer directamente las entidades JPA?**
   DTO = Data Transfer Object. Separa el modelo de datos interno (entidad) del contrato
   de la API (lo que aceptas/devuelves). Permite versionar la API sin cambiar el schema.

2. **¿Qué son los Java Records? ¿Cuándo usarlos?**
   Clases inmutables de datos introducidas en Java 16. Perfectos para DTOs, value objects,
   y cualquier clase que sea solo un contenedor de datos sin comportamiento.

3. **¿Qué hace `@Transactional`? ¿Qué pasa si no lo pones?**
   Sin `@Transactional`, cada operación de repositorio es su propia transacción.
   Si fallas al guardar el segmento 5 de 10, los 4 anteriores quedan en la BD.
   Con `@Transactional`, si algo falla, se hace rollback de todo.

4. **¿Qué es `@Modifying`? ¿Por qué es necesario con `@Query`?**
   Spring Data JPA asume que `@Query` es un SELECT. `@Modifying` le indica que
   es una operación de escritura (UPDATE/DELETE), lo que cambia cómo Spring
   gestiona la transacción y el flush del contexto de persistencia.

5. **¿Por qué `nativeQuery = true`?**
   JPQL no conoce funciones propietarias de la BD como `to_tsvector`. `nativeQuery = true`
   pasa el SQL directamente a PostgreSQL sin procesarlo como JPQL.

6. **¿Qué es `to_tsvector`? ¿Cómo funciona el stemming?**
   Función de PostgreSQL que normaliza texto para búsqueda full-text. Aplica:
   stemming (reduce palabras a su raíz: "running" → "run"), elimina stopwords
   ("the", "is"), y almacena posiciones de cada lexema.

7. **¿Qué es una RuntimeException vs una Exception chequeada?**
   Las `Exception` chequeadas obligan al compilador a tratarlas con try/catch o declarar
   `throws`. Las `RuntimeException` no. Para excepciones de dominio (reglas de negocio
   rotas), `RuntimeException` es más limpio — se propaga hasta un manejador global.

8. **¿Cuál es la diferencia entre `@RequestBody` y `@RequestParam`?**
   `@RequestParam` lee parámetros de la URL (`?q=word`). `@RequestBody` lee y
   deserializa el cuerpo completo de la petición HTTP (JSON, XML...).

9. **¿Cuándo devolver HTTP 201 en lugar de 200?**
   HTTP 200 OK = operación exitosa genérica. HTTP 201 Created = se ha creado un
   nuevo recurso. Semánticamente más correcto para endpoints que crean recursos.

10. **¿Por qué un trigger de BD podría ser mejor? ¿Y por qué no lo usamos aquí?**
    Un trigger evitaría el segundo viaje a la BD (un UPDATE por cada segmento).
    No lo usamos porque: la lógica estaría "escondida" en la BD, fuera del código
    Java, difícil de versionar con Flyway, y difícil de testear en tests unitarios.

---

## Limitaciones de esta fase

- Sin validación de inputs (`@NotBlank`, `@Size`, etc.) — viene en Fase 6.
- `VideoAlreadyExistsException` devuelve HTTP 500 en lugar de 409 — viene en Fase 6.
- Ingesta secuencial (un INSERT + UPDATE por segmento). Para vídeos con cientos
  de segmentos podría ser lento. Alternativa: `saveAll()` + un único UPDATE masivo.
  No lo optimizamos ahora porque sería prematura optimización para este volumen.

---

## Próximos pasos (Fase 3)

- Endpoint `GET /api/search?q=<palabra>&page=0&size=10`
- Query nativa con `@@`, `plainto_tsquery` y ranking por `ts_rank`
- Logging de búsquedas en `search_log`
