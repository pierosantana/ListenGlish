package com.listenglish.dto;

import java.util.List;

/**
 * Respuesta completa del endpoint GET /api/search.
 * Envuelve los resultados con metadatos de paginación.
 */
public record SearchResponse(
        String query,
        long total,       // total de resultados que existen (no solo en esta página)
        int page,
        int size,
        List<SearchResult> results
) {}
