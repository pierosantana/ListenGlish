-- V1__initial_schema.sql
--
-- Convención de nombres de Flyway (CRÍTICA):
--   V{versión}__{descripción}.sql
--   ^           ^^ (dos guiones bajos)
--
-- Flyway ejecuta este archivo UNA SOLA VEZ y lo registra en flyway_schema_history.
-- Si modificas este archivo después de que haya sido ejecutado, Flyway se negará
-- a arrancar (checksum no coincide). Para cambios futuros, crea V2__....sql.


-- ============================================================
-- TABLA: video
-- Metadatos de los vídeos de YouTube que han sido indexados.
-- Un vídeo tiene muchos subtitle_segments.
-- ============================================================
CREATE TABLE video (
    -- BIGSERIAL = entero de 8 bytes autoincremental.
    -- BIGINT en vez de INT por si acaso: INT tiene límite de ~2.000 millones.
    -- PRIMARY KEY crea automáticamente un índice B-tree único en esta columna.
    id               BIGSERIAL    PRIMARY KEY,

    -- Los IDs de YouTube tienen 11 caracteres (ej: "dQw4w9WgXcQ").
    -- NOT NULL + UNIQUE garantiza integridad a nivel de base de datos,
    -- independientemente de lo que haga la capa de aplicación.
    youtube_id       VARCHAR(20)  NOT NULL UNIQUE,

    title            VARCHAR(500) NOT NULL,
    channel          VARCHAR(255) NOT NULL,

    -- Duración en segundos como entero. Simple y suficiente.
    -- Evitamos INTERVAL porque complica las consultas innecesariamente.
    duration_seconds INTEGER      NOT NULL,

    -- Código ISO 639-1 del idioma (ej: 'en' para inglés).
    language         VARCHAR(10)  NOT NULL DEFAULT 'en',

    -- Clasificación de acento regional. Puede ser nulo si no se conoce.
    -- Ejemplos: 'american', 'british', 'australian'
    accent           VARCHAR(50),

    -- TIMESTAMPTZ = timestamp CON zona horaria.
    -- SIEMPRE almacena timestamps con timezone en PostgreSQL.
    -- DEFAULT NOW() hace que la base de datos rellene este valor automáticamente.
    created_at       TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);


-- ============================================================
-- TABLA: subtitle_segment
-- Cada fila es un "fragmento" de subtítulo de un vídeo.
-- Esta es la tabla central: la búsqueda full-text opera sobre ella.
-- ============================================================
CREATE TABLE subtitle_segment (
    id             BIGSERIAL     PRIMARY KEY,

    -- Clave foránea a video.id
    -- ON DELETE CASCADE: si se borra un vídeo, todos sus segmentos se borran
    -- automáticamente. No quedan filas huérfanas.
    video_id       BIGINT        NOT NULL REFERENCES video(id) ON DELETE CASCADE,

    -- Texto real del subtítulo para este segmento.
    -- TEXT en PostgreSQL no tiene límite práctico de longitud.
    text           TEXT          NOT NULL,

    -- Timestamps como segundos con decimales (ej: 12.5 = 12s 500ms).
    -- NUMERIC(10,3): hasta 10 dígitos en total, 3 decimales.
    -- Usamos NUMERIC y no FLOAT porque NUMERIC es exacto; FLOAT es aproximado.
    start_seconds  NUMERIC(10,3) NOT NULL,
    end_seconds    NUMERIC(10,3) NOT NULL,

    -- tsvector es un tipo nativo de PostgreSQL para búsqueda full-text.
    -- Almacena una representación normalizada del texto:
    --   "Running quickly" → 'quick':2 'run':1
    -- Almacenarlo como columna (en vez de calcularlo en cada consulta)
    -- es el enfoque estándar para rendimiento.
    -- Se rellenará en la Fase 2 al ingerir segmentos.
    search_vector  TSVECTOR
);

-- Índice GIN sobre search_vector.
-- GIN = Generalized Inverted Index.
-- Es el tipo de índice estándar para tsvector en PostgreSQL.
-- Sin este índice, una búsqueda full-text escanea TODAS las filas (lento a escala).
-- Con él, PostgreSQL salta directamente a las filas que coinciden.
CREATE INDEX idx_subtitle_segment_search_vector
    ON subtitle_segment USING GIN (search_vector);

-- Índice B-tree en video_id para JOINs y búsquedas rápidas por vídeo.
CREATE INDEX idx_subtitle_segment_video_id
    ON subtitle_segment (video_id);


-- ============================================================
-- TABLA: search_log
-- Log de auditoría de cada búsqueda realizada a través de la API.
-- Útil para entender qué buscan los usuarios y para analítica básica.
-- ============================================================
CREATE TABLE search_log (
    id             BIGSERIAL    PRIMARY KEY,
    query          VARCHAR(500) NOT NULL,

    -- Cuántos subtitle_segments coincidieron con esta búsqueda.
    results_count  INTEGER      NOT NULL DEFAULT 0,

    searched_at    TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- Índice en searched_at para consultas por rango de tiempo.
CREATE INDEX idx_search_log_searched_at
    ON search_log (searched_at);
