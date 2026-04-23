# ListenGlish

Busca una palabra en inglés y escucha cómo la usan hablantes nativos en vídeos reales. Inspirado en YouGlish, construido para hispanohablantes.

## Stack

- **Backend** — Spring Boot 3.3, Java 21, PostgreSQL 16, Flyway
- **Búsqueda** — Full-text search nativo de PostgreSQL (`tsvector` + `phraseto_tsquery`)
- **Frontend** — HTML/CSS/JS vanilla, YouTube IFrame API
- **Tests** — JUnit 5, Testcontainers, Mockito (22 tests)

## Arrancar

```bash
# 1. Base de datos
docker compose up -d

# 2. Aplicación
mvn spring-boot:run
```

Abre `http://localhost:8080`.

## Añadir vídeos

```bash
python3 ingest_video.py <youtubeId> "Título" "Canal" american
# ejemplo:
python3 ingest_video.py dQw4w9WgXcQ "Never Gonna Give You Up" "Rick Astley" british
```

Requiere Python 3 y `pip install youtube-transcript-api`.

## Tests

```bash
mvn verify   # unitarios + integración (Testcontainers levanta su propio PostgreSQL)
```

## API

| Método | Ruta | Descripción |
|--------|------|-------------|
| `GET` | `/api/search?q=word&page=0&size=50` | Búsqueda full-text |
| `GET` | `/api/videos/{youtubeId}/transcript` | Transcripción sincronizada |
| `GET` | `/api/dictionary/{word}` | Definición (caché en BD) |
| `POST` | `/api/admin/videos` | Ingestar vídeo + transcripción |

## Estructura

```
src/main/java/com/listenglish/
├── controller/   # HTTP endpoints
├── service/      # Lógica de negocio
├── repository/   # Acceso a datos (Spring Data JPA)
├── entity/       # Entidades JPA
├── dto/          # Request / Response objects
└── client/       # Cliente Free Dictionary API

src/main/resources/
├── application.yml
├── db/migration/ # Migraciones Flyway
└── static/       # Frontend (index.html, app.js, style.css)
```
