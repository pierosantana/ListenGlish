package com.listenglish.dto;

/**
 * Respuesta del endpoint POST /api/admin/videos.
 * Devuelve los IDs generados por la base de datos y un resumen.
 */
public record VideoIngestResponse(
        Long videoId,
        String youtubeId,
        int segmentsIngested
) {}
