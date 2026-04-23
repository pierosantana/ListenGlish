# ListenGlish

Busca una palabra en inglés y escucha cómo la usan hablantes nativos en vídeos reales. Inspirado en YouGlish, construido para hispanohablantes que aprenden inglés.

## Stack

| Capa | Tecnología |
|------|-----------|
| Backend | Spring Boot 3.3, Java 21 |
| Base de datos | PostgreSQL 16 + Flyway |
| Búsqueda | FTS nativo de PostgreSQL — `phraseto_tsquery('simple')` (sin stemming, sin stopwords) |
| Frontend | HTML/CSS/JS vanilla, YouTube IFrame API |
| Tests | JUnit 5, Testcontainers, Mockito — 22 tests |

> **¿Por qué `simple` y no `english`?** Con `english`, palabras como `I` o `have` desaparecen como stopwords y `creativity` matchea `creative`. Para una app de aprendizaje de idiomas necesitamos coincidencia exacta.

## Requisitos

- Java 21+
- Maven 3.9+
- Docker + Docker Compose
- Python 3 + `pip install youtube-transcript-api` _(solo para ingestar vídeos)_

## Instalación y uso

### 1. Clonar el repositorio

```bash
git clone https://github.com/pierosantana/ListenGlish.git
cd ListenGlish
```

### 2. Levantar la base de datos

```bash
docker compose up -d
```

PostgreSQL 16 arranca en segundo plano. Los datos persisten en un volumen Docker con nombre (`postgres_data`). Puedes verificar que está listo con:

```bash
docker compose ps   # debe mostrar estado "healthy"
```

### 3. Ejecutar la aplicación

```bash
mvn spring-boot:run
```

En el primer arranque Flyway aplica las migraciones automáticamente. La aplicación queda disponible en `http://localhost:8080`.

### 4. Ingestar vídeos

La app necesita vídeos con transcripción para poder buscar. El script `ingest_video.py` descarga la transcripción de YouTube y la envía al backend:

```bash
python3 ingest_video.py <youtubeId> "Título del vídeo" "Nombre del canal" <acento>
```

El argumento `<acento>` es opcional y sirve como etiqueta informativa (`american`, `british`, `australian`, etc.).

**Ejemplo:**

```bash
python3 ingest_video.py dQw4w9WgXcQ "Never Gonna Give You Up" "Rick Astley" british
```

### 5. Detener el entorno

```bash
docker compose down          # detiene los contenedores, conserva los datos
docker compose down -v       # detiene los contenedores y borra todos los datos
```

## Tests

Los tests de integración usan Testcontainers, que levanta su propio contenedor PostgreSQL aislado. No es necesario tener `docker compose up` activo.

```bash
mvn verify
```

## API

| Método | Ruta | Descripción |
|--------|------|-------------|
| `GET` | `/api/search?q=word&page=0&size=50` | Búsqueda full-text paginada |
| `GET` | `/api/videos/{youtubeId}/transcript` | Segmentos para sincronizar subtítulos |
| `GET` | `/api/dictionary/{word}` | Definición con caché en BD (Free Dictionary API) |
| `POST` | `/api/admin/videos` | Ingestar vídeo + transcripción |

> Al arrancar, Flyway aplica automáticamente `V4__seed_data.sql` con 21 vídeos y 7.200+ segmentos listos para buscar.

## Estructura

```
src/main/java/com/listenglish/
├── controller/        # HTTP endpoints
├── service/           # Lógica de negocio
├── repository/        # Spring Data JPA + queries FTS nativas
├── entity/            # Video, SubtitleSegment, DictionaryCache, SearchLog
├── dto/               # Request / Response objects
└── client/
    ├── DictionaryApi.java        # Interfaz (permite mockear en tests)
    └── DictionaryApiClient.java  # Implementación HTTP

src/main/resources/
├── application.yml
├── db/migration/
│   ├── V1__initial_schema.sql   # Tablas + índice GIN para FTS
│   ├── V2__dictionary_cache.sql # Caché de diccionario (JSONB)
│   ├── V3__reindex_simple.sql   # Re-indexa con config 'simple'
│   └── V4__seed_data.sql        # 21 vídeos y 7.200+ segmentos de seed
└── static/                      # Frontend (index.html, app.js, style.css)
```

## Decisiones técnicas

- **FTS de PostgreSQL** en lugar de Elasticsearch: suficiente para este volumen y el índice GIN es explicable en entrevistas.
- **Flyway** en lugar de `ddl-auto`: control total del schema, reproducible en cualquier entorno.
- **Testcontainers** en lugar de H2: los tests usan PostgreSQL real y capturan comportamiento específico (índices GIN, `tsvector`).
- **`DictionaryApi` como interfaz**: extraída de la clase concreta para que Mockito pueda mockearla sin problemas en Java 21+.
- **Fisher-Yates shuffle** en el frontend: el usuario ve clips en orden aleatorio sin repetición, precargando la siguiente página al acercarse al final.
