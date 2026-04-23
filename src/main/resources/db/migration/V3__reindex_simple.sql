-- Fase 5: Re-indexar subtitle_segment con la configuración 'simple'.
--
-- Diferencia entre configuraciones de texto en PostgreSQL:
--
--   'english': aplica stemming (creativity → creat, creative → creat)
--              y elimina stopwords (I, the, have, is, a...).
--              Útil para búsqueda semántica amplia.
--
--   'simple':  solo convierte a minúsculas. Sin stemming, sin stopwords.
--              Útil cuando el usuario quiere encontrar la palabra EXACTA,
--              no variantes morfológicas.
--
-- Para una app de aprendizaje de idiomas, 'simple' es más correcto:
--   - El estudiante busca "creativity" y quiere oír "creativity", no "creative".
--   - El estudiante busca "I have" y espera encontrar exactamente "I have".
--   - Con 'english', "I" y "have" son stopwords → desaparecen → 0 resultados.

UPDATE subtitle_segment
   SET search_vector = to_tsvector('simple', text);
