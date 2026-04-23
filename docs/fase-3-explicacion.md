# Fase 3 — Explicación Técnica: Búsqueda Full-Text

## ¿Qué construimos?

El endpoint `GET /api/search?q=<palabra>&page=0&size=10` que usa PostgreSQL FTS
para buscar palabras en subtítulos reales, con ranking de relevancia y paginación.

---

## Conceptos clave de PostgreSQL Full-Text Search

### `tsvector` vs `tsquery`

```
tsvector  →  representa un DOCUMENTO (texto almacenado, pre-procesado)
tsquery   →  representa una CONSULTA (lo que el usuario busca)
```

**`tsvector`** ya existe en cada fila de `subtitle_segment` (lo generamos en Fase 2):
```sql
-- "Creativity is the most important skill"
-- se almacena como:
'creativ':1 'import':5 'most':4 'skill':6
-- (artículos como "is", "the" se ignoran → son stopwords)
-- (palabras se reducen a su raíz → stemming)
```

**`plainto_tsquery('english', 'creative thinking')`** convierte la búsqueda del usuario:
```sql
plainto_tsquery('english', 'creative thinking')
→ 'creativ' & 'think'  (AND implícito entre palabras)
```

**El operador `@@`** hace el match:
```sql
search_vector @@ plainto_tsquery('english', 'creative thinking')
-- ¿El documento contiene 'creativ' Y 'think'? → true/false
```

### ¿Por qué `plainto_tsquery` y no `to_tsquery`?

`to_tsquery` requiere sintaxis especial: `'creativ' & 'think'`. Si el usuario escribe
algo incorrecto lanza error. `plainto_tsquery` acepta texto libre y convierte automáticamente.
Para una caja de búsqueda de usuario, siempre usa `plainto_tsquery`.

### `ts_rank` — relevancia

```sql
ts_rank(search_vector, tsquery) → float (ej: 0.0759)
```

Calcula cuán relevante es un documento para la búsqueda basándose en:
- Cuántas veces aparece la palabra (frecuencia)
- En qué posición del texto (posición)

Ordenar `DESC` por `ts_rank` pone los resultados más relevantes primero.

### ¿Por qué el índice GIN hace la búsqueda rápida?

Sin índice: PostgreSQL escanea cada fila y comprueba el `@@` → O(n).
Con índice GIN: PostgreSQL tiene un índice invertido que dice "la palabra 'creativ' aparece en las filas 3, 7, 42..." → O(log n) o mejor.

A 10.000 segmentos sin índice: ~50ms. Con índice GIN: ~1ms.

---

## Componentes nuevos

### DTOs: `SearchResult` y `SearchResponse`

```
SearchResponse {
  query: "creativity",
  total: 3,          ← total de resultados (para paginación)
  page: 0,
  size: 10,
  results: [SearchResult, ...]
}

SearchResult {
  youtubeId, videoTitle, channel,
  text, startSeconds, endSeconds, accent
}
```

### Query nativa con JOIN

La query SQL une `subtitle_segment` y `video` porque el frontend necesita datos de ambas tablas:

```sql
SELECT ss.id, ss.text, ss.start_seconds, ss.end_seconds,
       v.youtube_id, v.title, v.channel, v.accent,
       ts_rank(ss.search_vector, plainto_tsquery('english', :query)) AS rank
  FROM subtitle_segment ss
  JOIN video v ON ss.video_id = v.id
 WHERE ss.search_vector @@ plainto_tsquery('english', :query)
 ORDER BY rank DESC
 LIMIT :size OFFSET :offset
```

**¿Por qué `Object[]` y no una entidad JPA?**
La query cruza dos tablas. JPA no puede mapear automáticamente un resultado multi-tabla
a una sola entidad. Opciones:
1. `Object[]` + mapeo manual en el servicio → más explícito, más claro
2. Proyección JPA (interfaz con getters) → más elegante pero añade "magia"
3. `@SqlResultSetMapping` → muy verboso
Para aprender, `Object[]` con mapeo explícito en `toSearchResult()` es lo más didáctico.

### Paginación manual

```java
int offset = page * size;
// page=0, size=10 → offset=0  → filas 1-10
// page=1, size=10 → offset=10 → filas 11-20
// page=2, size=10 → offset=20 → filas 21-30
```

Así funciona la paginación SQL estándar: `LIMIT` = cuántas filas, `OFFSET` = cuántas saltar.
No usamos Spring Data's `Pageable` porque nuestras queries son nativas y `Pageable`
añade complejidad extra con nativeQuery.

### `search_log`: auditoría de búsquedas

Tras cada búsqueda guardamos:
- La query del usuario
- Cuántos resultados devolvimos EN ESTA PÁGINA (no el total)

Esto permite analítica simple: ¿qué buscan los usuarios? ¿qué búsquedas no devuelven resultados?
El endpoint `GET /api/stats` (Fase 6) usará esta tabla.

---

## Flujo completo de una petición de búsqueda

```
GET /api/search?q=creativity&page=0&size=10
        ↓
SearchController.search(@RequestParam q, page, size)
        ↓
SearchService.search(query, page, size)
  1. subtitleSegmentRepository.searchSegments(query, size, offset=0)
     → SELECT ... WHERE search_vector @@ plainto_tsquery('english', 'creativity')
     → PostgreSQL usa el índice GIN para encontrar los matching rows
     → ordena por ts_rank DESC
     → retorna List<Object[]>
  2. subtitleSegmentRepository.countSearchResults(query)
     → SELECT COUNT(*) WHERE search_vector @@ ...
     → retorna 3 (total de matches)
  3. rows.stream().map(toSearchResult) → List<SearchResult>
  4. searchLogRepository.save(new SearchLog("creativity", 3))
     → INSERT INTO search_log ...
        ↓
SearchResponse { query: "creativity", total: 3, page: 0, size: 10, results: [...] }
        ↓
HTTP 200 OK con JSON
```

---

## Preguntas de entrevista que cubre esta fase

1. **¿Qué es full-text search? ¿Por qué es mejor que `LIKE '%palabra%'`?**
   LIKE hace un scan secuencial de todas las filas. FTS usa un índice invertido (GIN)
   que encuentra matches sin escanear. Además FTS entiende stemming y stopwords;
   LIKE no.

2. **¿Qué diferencia hay entre `tsvector` y `tsquery`?**
   `tsvector` = documento pre-procesado y normalizado (se almacena).
   `tsquery` = consulta normalizada (se genera al buscar). El operador `@@` hace el match.

3. **¿Qué hace `plainto_tsquery` vs `to_tsquery`?**
   `plainto_tsquery` acepta texto libre y añade AND implícito entre palabras.
   `to_tsquery` requiere sintaxis explícita (`&`, `|`, `!`). Para input de usuario
   siempre usa `plainto_tsquery`.

4. **¿Qué es stemming? ¿Por qué "running" encuentra "run"?**
   Stemming reduce palabras a su raíz morfológica. "running", "runs", "ran" → "run".
   La configuración `'english'` de PostgreSQL usa el algoritmo de Porter para inglés.

5. **¿Qué es `ts_rank`? ¿Cómo funciona el ranking de relevancia?**
   Función que calcula un score float basándose en frecuencia y posición de los
   términos de búsqueda en el documento. Más ocurrencias y en posiciones más
   tempranas = mayor rank.

6. **¿Qué es un índice GIN? ¿Cuándo usarlo vs B-tree?**
   GIN = Generalized Inverted Index. Óptimo para tipos que contienen múltiples valores:
   `tsvector`, arrays, `jsonb`. B-tree es para valores simples y comparaciones de orden.
   GIN no soporta `ORDER BY` directo pero es mucho más rápido para consultas de "contiene".

7. **¿Cómo funciona `LIMIT` / `OFFSET` para paginación?**
   `LIMIT n` devuelve como máximo n filas. `OFFSET k` salta las primeras k filas.
   Problema conocido: para páginas muy altas (OFFSET 10000) es lento porque PostgreSQL
   igual debe recorrer y descartar las primeras 10000 filas.

8. **¿Por qué dos queries (search + count) en lugar de una?**
   Para mostrar "X resultados de Y totales" necesitas el total. Si solo hicieras la
   query paginada, no sabes cuántas páginas hay. La alternativa (menos eficiente) es
   `SELECT COUNT(*) OVER()` en la misma query, pero es más compleja.

9. **¿Qué es `Object[]` como tipo de retorno en una `@Query` nativa?**
   Cuando la query une varias tablas, JPA no puede mapear automáticamente a una entidad.
   `Object[]` devuelve cada fila como array de objetos. Debes mapear manualmente a tu DTO.
   Alternativa: proyecciones JPA (interfaces con getters), que Spring implementa en runtime.

10. **¿Por qué `@Transactional` en SearchService si parece una operación de lectura?**
    Porque también escribe en `search_log`. La operación completa (buscar + loggear)
    debe ser atómica: si falla el log, no debe afectar la búsqueda (y viceversa).
    En la práctica podríamos separar el log en un método `@Transactional(propagation=REQUIRES_NEW)`,
    pero para este volumen es innecesario.

---

## Limitaciones de esta fase

- Sin validación de `q`, `page`, `size` — Fase 6 añade `@Valid`.
- `page < 0` o `size <= 0` causarían comportamiento inesperado en la query SQL.
- `OFFSET` es ineficiente para páginas altas — keyset pagination sería mejor, pero es mucho más complejo y no necesario para este volumen.
- No hay caché de resultados — cada búsqueda hace dos queries a la BD.

---

## Próximos pasos (Fase 4)

- Endpoint `GET /api/dictionary/{word}` con caché en BD
- Fetch a Free Dictionary API (`dictionaryapi.dev`)
- Tabla `dictionary_cache (word PK, payload JSONB, cached_at)` con TTL de 30 días
