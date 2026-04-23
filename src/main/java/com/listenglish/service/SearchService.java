package com.listenglish.service;

import com.listenglish.dto.SearchResponse;
import com.listenglish.dto.SearchResult;
import com.listenglish.entity.SearchLog;
import com.listenglish.repository.SearchLogRepository;
import com.listenglish.repository.SubtitleSegmentRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;

@Service
public class SearchService {

    private final SubtitleSegmentRepository subtitleSegmentRepository;
    private final SearchLogRepository searchLogRepository;

    public SearchService(SubtitleSegmentRepository subtitleSegmentRepository,
                         SearchLogRepository searchLogRepository) {
        this.subtitleSegmentRepository = subtitleSegmentRepository;
        this.searchLogRepository = searchLogRepository;
    }

    /**
     * Busca segmentos de subtítulo usando PostgreSQL full-text search.
     *
     * @param query  El texto que el usuario busca (ej: "creativity")
     * @param page   Página a devolver (0-indexed)
     * @param size   Resultados por página
     *
     * @Transactional(readOnly = true):
     *   - readOnly = true: hint a Hibernate para optimizar la sesión (no gestiona
     *     dirty checking, no necesita flush). Mejora rendimiento en operaciones
     *     de solo lectura.
     *   - Aun así necesitamos @Transactional porque el segundo save (searchLogRepository)
     *     es una escritura — lo marcamos sin readOnly más abajo.
     *
     * Nota de diseño: separamos la consulta de búsqueda (readOnly) del log (escritura).
     * Aquí usamos @Transactional sin readOnly para poder hacer ambas cosas.
     */
    @Transactional
    public SearchResponse search(String query, int page, int size) {
        int offset = page * size;

        // 1. Buscar segmentos con FTS
        List<Object[]> rows = subtitleSegmentRepository.searchSegments(query, size, offset);

        // 2. Contar total para la paginación
        long total = subtitleSegmentRepository.countSearchResults(query);

        // 3. Mapear Object[] a SearchResult
        List<SearchResult> results = rows.stream()
                .map(this::toSearchResult)
                .toList();

        // 4. Guardar la búsqueda en search_log para analítica
        searchLogRepository.save(new SearchLog(query, results.size()));

        return new SearchResponse(query, total, page, size, results);
    }

    /**
     * Mapea una fila de Object[] al DTO SearchResult.
     *
     * Orden de columnas según la @Query en SubtitleSegmentRepository:
     *   [0] ss.id           → Long (no lo usamos en el DTO)
     *   [1] ss.text         → String
     *   [2] ss.start_seconds → BigDecimal
     *   [3] ss.end_seconds  → BigDecimal
     *   [4] v.youtube_id    → String
     *   [5] v.title         → String
     *   [6] v.channel       → String
     *   [7] v.accent        → String (puede ser null)
     *   [8] rank            → Double (no lo incluimos en el DTO, solo ordena)
     *
     * ¿Por qué Object[] y no una proyección JPA?
     * Las proyecciones JPA (interfaces con getters) son más elegantes pero
     * añaden "magia" — Spring genera proxies en runtime. Para una query nativa
     * con JOIN, Object[] es más explícito y fácil de depurar.
     */
    private SearchResult toSearchResult(Object[] row) {
        double startSeconds = row[2] instanceof BigDecimal bd
                ? bd.doubleValue()
                : ((Number) row[2]).doubleValue();
        double endSeconds = row[3] instanceof BigDecimal bd
                ? bd.doubleValue()
                : ((Number) row[3]).doubleValue();

        return new SearchResult(
                (String) row[4],   // youtubeId
                (String) row[5],   // videoTitle
                (String) row[6],   // channel
                (String) row[1],   // text
                startSeconds,
                endSeconds,
                (String) row[7]    // accent (puede ser null)
        );
    }
}
