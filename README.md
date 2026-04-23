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

Para ingestar vídeos también necesitas Python 3 con `pip install youtube-transcript-api`.

## Arrancar

```bash
# 1. Base de datos
docker compose up -d

# 2. Aplicación  (Flyway aplica las migraciones automáticamente)
mvn spring-boot:run
```

Abre `http://localhost:8080`.

## Añadir vídeos

```bash
python3 ingest_video.py <youtubeId> "Título" "Canal" american
```

El script descarga la transcripción de YouTube y la envía al backend vía `/api/admin/videos`. El acento puede ser `american`, `british`, `australian`, etc. (opcional, sirve como etiqueta).

## Tests

```bash
mvn verify   # Testcontainers levanta su propio PostgreSQL — no necesitas docker compose up
```

## API

| Método | Ruta | Descripción |
|--------|------|-------------|
| `GET` | `/api/search?q=word&page=0&size=50` | Búsqueda full-text paginada |
| `GET` | `/api/videos/{youtubeId}/transcript` | Segmentos para sincronizar subtítulos |
| `GET` | `/api/dictionary/{word}` | Definición con caché en BD (Free Dictionary API) |
| `POST` | `/api/admin/videos` | Ingestar vídeo + transcripción |

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
│   └── V3__reindex_simple.sql   # Re-indexa con config 'simple'
└── static/                      # Frontend (index.html, app.js, style.css)
```

## Decisiones técnicas

- **FTS de PostgreSQL** en lugar de Elasticsearch: suficiente para este volumen y el índice GIN es explicable en entrevistas.
- **Flyway** en lugar de `ddl-auto`: control total del schema, reproducible en cualquier entorno.
- **Testcontainers** en lugar de H2: los tests usan PostgreSQL real y capturan comportamiento específico (índices GIN, `tsvector`).
- **`DictionaryApi` como interfaz**: Mockito en Java 21+ puede tener problemas mockeando clases concretas con ciertos módulos; extraer la interfaz elimina el problema.
- **Fisher-Yates shuffle** en el frontend: el usuario ve clips aleatorios sin repetición, precargando la siguiente página al llegar al final.
