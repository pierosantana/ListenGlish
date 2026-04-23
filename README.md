# ListenGlish

Busca palabras en inglés en subtítulos de vídeos reales — construido para hispanohablantes aprendiendo inglés.

## Requisitos previos

| Herramienta    | Versión | Propósito                                   |
|----------------|---------|---------------------------------------------|
| Java           | 21      | Compilación y ejecución                     |
| Maven          | 3.9+    | Build y gestión de dependencias             |
| Docker         | 24+     | Ejecuta PostgreSQL en un contenedor         |
| Docker Compose | v2+     | Orquesta el contenedor de base de datos     |

## Inicio rápido

### 1. Arrancar la base de datos

```bash
docker compose up -d
```

Esto arranca PostgreSQL 16 en segundo plano. Los datos persisten en un volumen Docker con nombre.

Verificar que está sano:

```bash
docker compose ps
```

Deberías ver `listenglish-postgres` con estado `healthy`.

### 2. Ejecutar la aplicación

```bash
./mvnw spring-boot:run
```

En el primer arranque, Flyway ejecuta automáticamente `V1__initial_schema.sql` y crea todas las tablas.
Busca en los logs: `Successfully applied 1 migration to schema "public"`.

La API está disponible en: `http://localhost:8080`

### 3. Verificar la API

```bash
curl "http://localhost:8080/api/search?q=hello"
```

Respuesta esperada (stub de Fase 1): `[]`

## Ejecutar tests

### Solo tests unitarios (rápidos)

```bash
./mvnw test
```

### Tests de integración (requieren Docker)

```bash
./mvnw verify
```

Los tests de integración usan Testcontainers — arrancan su propio contenedor PostgreSQL aislado.
**No necesitas `docker compose up` para los tests.**

## Parar el entorno

```bash
# Parar contenedores pero conservar datos
docker compose down

# Parar contenedores Y borrar todos los datos
docker compose down -v
```

## Estructura del proyecto

```
src/main/java/com/listenglish/
├── ListenGlishApplication.java   # Punto de entrada
├── entity/                        # Entidades JPA (mapeo a tablas de BD)
│   ├── Video.java
│   ├── SubtitleSegment.java
│   └── SearchLog.java
├── repository/                    # Capa de acceso a datos (Spring Data JPA)
├── service/                       # Capa de lógica de negocio
└── controller/                    # Capa HTTP (endpoints REST)

src/main/resources/
├── application.yml                # Configuración de la aplicación
└── db/migration/
    └── V1__initial_schema.sql     # Migración Flyway: schema inicial
```

## Arquitectura

```
Petición HTTP
      ↓
SearchController    (recibe HTTP, valida input, devuelve respuesta HTTP)
      ↓
SearchService       (lógica de negocio, gestión de transacciones)
      ↓
Repository          (consultas a BD mediante Spring Data JPA)
      ↓
PostgreSQL 16       (persistencia, búsqueda full-text con tsvector)
```

## Fases del proyecto

| Fase | Estado      | Descripción                                   |
|------|-------------|-----------------------------------------------|
| 1    | Completada  | Setup, schema de BD, entidades, test de integración |
| 2    | Pendiente   | Ingesta manual de transcripciones             |
| 3    | Pendiente   | Búsqueda full-text                            |
| 4    | Pendiente   | Diccionario                                   |
| 5    | Pendiente   | Frontend                                      |
| 6    | Pendiente   | Pulido y documentación final                  |

## Añadir más vídeos (disponible en Fase 2)

Ver `docs/fase-2-explicacion.md` (pendiente).

## Decisiones técnicas

- **PostgreSQL FTS en lugar de Elasticsearch**: más que suficiente para este volumen, y `tsvector`/`tsquery` es una feature potente y explicable en entrevistas.
- **Flyway en lugar de `ddl-auto`**: control total del schema, reproducible en cualquier entorno.
- **Testcontainers en lugar de H2**: los tests usan PostgreSQL real, capturando comportamiento específico de PostgreSQL (índices GIN, `tsvector`, etc.).
- **Arquitectura en capas**: Controller → Service → Repository. Simple, explicable, suficiente para este proyecto.
