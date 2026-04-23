# Fase 1 — Explicación Técnica de ListenGlish

## ¿Qué construimos en la Fase 1?

La infraestructura base: base de datos, schema, entidades Java, y la prueba que verifica
que todo funciona junto. No hay lógica de negocio todavía — la Fase 1 es el cimiento
sobre el que construiremos en fases siguientes.

---

## Componentes y por qué elegimos cada uno

### Spring Boot 3.x

Spring Boot es un framework que simplifica la creación de aplicaciones Java eliminando
la mayor parte de la configuración manual (XML, boilerplate, etc.).

**¿Qué hace `@SpringBootApplication`?** Es un atajo para tres anotaciones:
- `@Configuration` — la clase puede definir beans
- `@EnableAutoConfiguration` — Spring detecta qué está en el classpath y configura cosas automáticamente (detecta `spring-boot-starter-web` → configura Tomcat; detecta JPA → configura Hibernate)
- `@ComponentScan` — escanea el paquete actual y subpaquetes buscando `@Service`, `@Repository`, `@Controller`, etc.

**¿Por qué 3.x y no 2.x?** Spring Boot 3 requiere Java 17+ y usa Jakarta EE 9
(los paquetes cambiaron de `javax.*` a `jakarta.*`). Es la versión actual con soporte a largo plazo.

### Maven y el `pom.xml`

Maven es el build tool: descarga dependencias, compila el código, ejecuta tests y empaqueta.

El `pom.xml` tiene tres secciones clave:
- `<parent>` — hereda gestión de versiones del parent POM de Spring Boot. No necesitas especificar versiones para los starters de Spring Boot ni para Testcontainers.
- `<dependencies>` — qué librerías necesita tu proyecto
- `<build><plugins>` — el plugin de Spring Boot que crea el fat JAR ejecutable

### PostgreSQL 16

Un RDBMS de código abierto maduro con soporte nativo para búsqueda full-text mediante
`tsvector` y `tsquery`. Elegimos PostgreSQL sobre alternativas (MySQL, H2) porque:

1. **`tsvector`** — tipo de dato nativo que almacena texto normalizado pre-procesado para búsqueda
2. **Índices GIN** — tipo de índice optimizado para `tsvector`, mucho más rápido que LIKE '%palabra%'
3. **No necesitamos Elasticsearch** — para el volumen de datos de este proyecto, PostgreSQL FTS es más que suficiente y evita añadir una pieza de infraestructura compleja

### Docker y Docker Compose

Docker permite ejecutar PostgreSQL en un contenedor aislado sin instalarlo directamente
en tu máquina. Ventajas:
- El entorno es reproducible (cualquier desarrollador tiene exactamente la misma versión)
- Fácil de resetear (borrar el volumen = BD limpia)
- No contamina tu sistema con instalaciones globales

Docker Compose orquesta múltiples contenedores (en fases futuras podría añadirse Redis,
etc.) y define la configuración en un archivo versionable.

### Flyway (migraciones de schema)

**El problema:** Si cada desarrollador crea las tablas a mano, o si usas
`ddl-auto: create` de Hibernate, el schema puede diferir entre entornos.
En producción, `create` destruiría tus datos al reiniciar.

**La solución de Flyway:**
1. Mira la tabla `flyway_schema_history` para ver qué migraciones ya se ejecutaron
2. Ejecuta las pendientes en orden (V1 → V2 → V3...)
3. Registra cada ejecución con un checksum

Esto garantiza que DEV, TEST y PROD tienen exactamente el mismo schema.

**Convención de nombres crítica:** `V{versión}__{descripción}.sql` (dos guiones bajos).
Un guion bajo es parte del número de versión; dos separan versión de descripción.

### JPA / Hibernate

JPA (Java Persistence API) es una especificación estándar para mapear objetos Java
a tablas de base de datos (ORM = Object-Relational Mapping). Hibernate es la implementación.

**¿Por qué no JDBC puro?** JDBC requeriría escribir manualmente el SQL para cada
operación CRUD y mapear los ResultSet a objetos. JPA genera ese código repetitivo.

**Qué hace Hibernate al arrancar:**
1. Lee las clases `@Entity`
2. Con `ddl-auto: validate`, comprueba que el schema de la BD coincide con las entidades
3. Configura el pool de conexiones HikariCP

### Spring Data JPA (Repositorios)

Sobre JPA, Spring Data JPA añade una capa de abstracción más:

```java
// Esto es todo el código que necesitas para tener un DAO completo:
public interface VideoRepository extends JpaRepository<Video, Long> {}
```

Spring genera la implementación automáticamente al arrancar. Tienes `save()`, `findById()`,
`findAll()`, `delete()`, etc. sin escribir nada.

Para consultas personalizadas: Spring lee el nombre del método y genera el SQL:
```java
Optional<Video> findByYoutubeId(String youtubeId);
// → SELECT * FROM video WHERE youtube_id = ?
```

### Testcontainers

**El problema de los tests de integración:** Los tests necesitan una base de datos real.
Opciones habituales:
- **H2 (base de datos en memoria):** Rápido, pero es un RDBMS diferente. No soporta
  `tsvector`, índices GIN, ni comportamiento específico de PostgreSQL. Los tests pueden
  pasar pero el código falla en producción.
- **Testcontainers:** Arranca un contenedor Docker real de PostgreSQL para cada suite
  de tests. Más lento, pero los tests son completamente realistas.

`@ServiceConnection` (Spring Boot 3.1+) conecta automáticamente el contenedor al
ApplicationContext de Spring. Sin él, necesitarías `@DynamicPropertySource` para
inyectar manualmente la URL del contenedor.

---

## Decisiones de diseño importantes

### ¿Por qué `BIGSERIAL` y no `UUID` como PK?

`BIGSERIAL` (entero autoincremental de 64 bits):
- Más eficiente en índices B-tree (integers son más pequeños y rápidos que UUIDs de 16 bytes)
- Más legible en logs y depuración
- Suficiente para el volumen de datos de este proyecto (límite: 9.2 × 10^18)

UUID tiene ventajas en sistemas distribuidos (múltiples nodos generando PKs sin coordinación),
pero aquí tenemos un solo servidor PostgreSQL.

### ¿Por qué `TIMESTAMPTZ` y no `TIMESTAMP`?

`TIMESTAMP` almacena fecha y hora SIN información de zona horaria. Si el servidor
cambia de zona horaria (común en despliegues cloud), todos los timestamps almacenados
se interpretarían incorrectamente.

`TIMESTAMPTZ` almacena el momento absoluto en el tiempo (UTC internamente), independientemente
de la zona horaria del servidor. Siempre usa `TIMESTAMPTZ`.

### ¿Por qué `BigDecimal` para `start_seconds` y no `float`?

`float` (y `double`) no pueden representar muchos números decimales exactamente.
Por ejemplo, `12.500` en float podría almacenarse como `12.499999999`. Para posiciones
de tiempo en vídeo, necesitamos precisión exacta. `BigDecimal` siempre es exacto.

### ¿Por qué `FetchType.LAZY` y no `EAGER`?

Con `EAGER` en `@OneToMany`, cada vez que cargas un `Video`, Hibernate cargaría
automáticamente TODOS sus `SubtitleSegment`. Un vídeo de TED Talk puede tener
cientos de segmentos — cargarlos siempre es un desperdicio enorme.

Con `LAZY` (el default para `@OneToMany`), los segmentos solo se cargan si
accedes explícitamente a `video.getSegments()`.

**Regla general:** `FetchType.LAZY` por defecto en todas las colecciones.

### ¿Por qué `insertable=false, updatable=false` en `searchVector` y `createdAt`?

Estas columnas tienen valores por defecto gestionados por la base de datos:
- `created_at` → `DEFAULT NOW()`
- `search_vector` → lo rellenará SQL nativo en la Fase 2

Si JPA intentara escribirlas, insertaría `null` y sobreescribiría el valor de la BD.
Con `insertable=false, updatable=false`, JPA ignora completamente esas columnas
en `INSERT` y `UPDATE`.

---

## Flujo de arranque paso a paso

```
docker compose up -d
         ↓
PostgreSQL 16 arranca en contenedor Docker (puerto 5432)
         ↓
./mvnw spring-boot:run
         ↓
Spring Boot lee application.yml
         ↓
HikariCP crea pool de conexiones a localhost:5432
         ↓
Flyway comprueba flyway_schema_history (tabla que crea automáticamente)
         ↓
Flyway detecta que V1__initial_schema.sql no se ha ejecutado
         ↓
Flyway ejecuta V1__initial_schema.sql → crea video, subtitle_segment, search_log + índices
         ↓
Hibernate valida que las entidades coinciden con el schema (ddl-auto: validate)
         ↓
Tomcat embebido arranca en puerto 8080
         ↓
SearchController queda registrado en GET /api/search
```

---

## Diagrama de relaciones entre entidades

```
video (1) ────────< subtitle_segment (N)
                    subtitle_segment.video_id → video.id
                    ON DELETE CASCADE

video           →   sin relación directa con   →  search_log
```

`search_log` es independiente: registra cada búsqueda pero no tiene FK a otras tablas.

---

## Preguntas de entrevista que cubre esta fase

1. **¿Qué es JPA y cómo se diferencia de JDBC?**
   JPA es una especificación de ORM (mapeo objeto-relacional). JDBC es la API de bajo nivel para SQL directo. JPA (via Hibernate) genera el SQL repetitivo automáticamente.

2. **¿Qué hace `@SpringBootApplication`?**
   Es un atajo para `@Configuration` + `@EnableAutoConfiguration` + `@ComponentScan`.

3. **¿Cuál es la diferencia entre `@Component`, `@Service`, `@Repository` y `@Controller`?**
   Todos son especializaciones de `@Component` (registran un bean en Spring). Las diferencias son semánticas y de convención: `@Service` = lógica de negocio, `@Repository` = acceso a datos (además activa traducción de excepciones de BD), `@Controller`/`@RestController` = capa HTTP.

4. **¿Qué es un ORM? ¿Ventajas y desventajas?**
   Mapea objetos Java a filas de BD automáticamente. Ventajas: menos boilerplate, queries tipo-safe con JPQL. Desventajas: "magic" que puede generar SQL inesperadamente ineficiente (N+1 queries, eager loading, etc.).

5. **¿Para qué sirve el patrón Repository?**
   Abstrae el acceso a datos detrás de una interfaz. El servicio no sabe si los datos vienen de PostgreSQL, MongoDB, o un mock de test — solo llama al repositorio.

6. **¿Qué es Flyway? ¿Por qué no usar `ddl-auto: update` en producción?**
   Flyway gestiona migraciones versionadas. `ddl-auto: update` es impredecible: puede añadir columnas pero nunca las borra, puede generar inconsistencias y no es reversible.

7. **¿Qué es un `tsvector` en PostgreSQL?**
   Tipo nativo para búsqueda full-text. Almacena el texto normalizado (sin stopwords, con stemming): "running quickly" → `'quick':2 'run':1`. Permite búsquedas eficientes con el operador `@@`.

8. **¿Qué es un índice GIN y cuándo usarlo?**
   Generalized Inverted Index. Óptimo para columnas que contienen múltiples valores (arrays, `tsvector`, `jsonb`). Un B-tree es para valores simples comparables; un GIN es para "contiene".

9. **¿Qué hace `@Transactional`? ¿Por qué va en el Service y no en el Repository?**
   Envuelve el método en una transacción de BD: si algo falla, hace rollback. Va en el Service porque una "unidad de negocio" puede involucrar múltiples operaciones de repositorio que deben ser atómicas.

10. **¿Cuál es la diferencia entre `FetchType.LAZY` y `FetchType.EAGER`?**
    LAZY: las relaciones se cargan solo cuando se accede a ellas (lazy loading). EAGER: se cargan inmediatamente junto con la entidad padre. LAZY es el default recomendado para colecciones.

11. **¿Qué es Testcontainers? ¿Por qué no usar H2?**
    Testcontainers arranca contenedores Docker reales durante los tests. H2 es un RDBMS diferente que no soporta `tsvector`, GIN indexes, ni comportamientos específicos de PostgreSQL. Los tests con H2 pueden pasar pero el código puede fallar en producción.

12. **¿Qué es `@ServiceConnection` en Testcontainers + Spring Boot 3.1+?**
    Hace que Spring Boot lea los datos de conexión (URL, usuario, contraseña) directamente del contenedor de Testcontainers y los inyecte en el ApplicationContext. Reemplaza el `@DynamicPropertySource` más verboso de versiones anteriores.

13. **¿Qué es una migración de base de datos? ¿Qué problema resuelve?**
    Un archivo SQL versionado que describe un cambio al schema. Resuelve el "schema drift": la diferencia entre el schema en DEV vs TEST vs PROD cuando cada entorno evoluciona de forma independiente.

14. **¿Qué es un índice en base de datos? ¿Cuándo ayuda y cuándo no?**
    Una estructura de datos separada (B-tree, GIN, etc.) que permite localizar filas rápidamente sin escanear toda la tabla. Ayuda en columnas de `WHERE`, `JOIN`, `ORDER BY` frecuentes. No ayuda (y penaliza) en columnas que rara vez se usan en filtros, o en tablas muy pequeñas.

15. **¿Qué es Docker Compose y por qué usarlo para desarrollo local?**
    Herramienta para definir y ejecutar aplicaciones multi-contenedor. Permite arrancar PostgreSQL (y en el futuro otros servicios) con un solo comando, con la misma configuración para todos los desarrolladores.

---

## Errores comunes en esta fase (y cómo evitarlos)

| Error | Causa | Solución |
|-------|-------|----------|
| `FlywayException: Unable to autodetect JDBC driver` | Falta `flyway-database-postgresql` en el `pom.xml` | Añadir el artefacto (separado de `flyway-core` desde Flyway 10) |
| Datos borrados en cada reinicio | `ddl-auto: create` o `create-drop` | Cambiar a `validate` |
| Tests lentos | `@Container` no es `static` | Hacerlo `static` para compartir el contenedor entre tests |
| `12.5` almacenado como `12.4999...` | Usando `float`/`double` para tiempo | Usar `BigDecimal` |
| Timestamps incorrectos al cambiar zona horaria | Usando `TIMESTAMP` sin zona | Usar `TIMESTAMPTZ` siempre |
| Carga de miles de filas inesperada | `FetchType.EAGER` en `@OneToMany` | Usar `FetchType.LAZY` |

---

## Próximos pasos (Fase 2)

- Endpoint `POST /api/admin/videos` para ingestar vídeos y segmentos
- Generar `search_vector` via `to_tsvector('english', text)` al insertar cada segmento
- Tests unitarios del servicio de ingesta
- Datos seed con transcripciones reales de TED Talks
