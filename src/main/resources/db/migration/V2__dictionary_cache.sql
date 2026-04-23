-- V2__dictionary_cache.sql
--
-- Tabla de caché para respuestas de la Free Dictionary API.
-- Evitamos llamar a la API externa en cada búsqueda:
--   1. Es más rápido (consulta local vs HTTP externo)
--   2. Respetamos el rate limit de la API gratuita
--   3. La app funciona aunque la API externa esté caída
--
-- TTL (Time To Live): 30 días. Los significados de palabras no cambian
-- frecuentemente, así que refrescar cada 30 días es más que suficiente.

CREATE TABLE dictionary_cache (
    -- La palabra en minúsculas es la clave primaria.
    -- VARCHAR(100) es generoso — la palabra más larga del inglés tiene ~45 letras.
    -- PRIMARY KEY en una columna de texto crea un índice B-tree sobre ella.
    word        VARCHAR(100) PRIMARY KEY,

    -- JSONB almacena JSON en formato binario optimizado.
    -- Ventajas sobre JSON (texto plano):
    --   - Búsquedas dentro del JSON son más rápidas
    --   - Valida que el contenido sea JSON válido al insertar
    --   - Soporta índices GIN sobre campos del JSON
    -- Para este caso de uso (solo almacenamos y recuperamos el JSON completo)
    -- las diferencias son mínimas, pero JSONB es la mejor práctica en PostgreSQL.
    payload     JSONB        NOT NULL,

    -- Cuándo se almacenó esta entrada. Usamos esto para el TTL.
    -- La aplicación comprueba: cached_at < NOW() - INTERVAL '30 days'
    cached_at   TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- Índice en cached_at para queries de limpieza (borrar entradas expiradas).
-- Aunque no lo implementamos ahora, es buena práctica tenerlo.
CREATE INDEX idx_dictionary_cache_cached_at ON dictionary_cache (cached_at);
