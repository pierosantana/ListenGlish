package com.listenglish.dto;

import java.util.List;

/**
 * DTO (Data Transfer Object) que representa el cuerpo JSON del endpoint
 * POST /api/admin/videos.
 *
 * Usamos un Java Record (Java 16+) en lugar de una clase normal porque:
 * - Un DTO es un contenedor de datos inmutable — exactamente para lo que
 *   los records fueron diseñados.
 * - Genera automáticamente constructor, getters, equals, hashCode y toString.
 * - Menos código, más claro.
 *
 * Jackson (la librería JSON de Spring Boot) deserializa el JSON entrante
 * a este record automáticamente si los nombres de campo coinciden.
 *
 * Ejemplo de JSON esperado:
 * {
 *   "youtubeId": "abc123",
 *   "title": "My Talk",
 *   "channel": "TED",
 *   "durationSeconds": 900,
 *   "accent": "american",
 *   "segments": [
 *     {"text": "Hello everyone", "startSeconds": 0.0, "endSeconds": 3.2}
 *   ]
 * }
 */
public record VideoIngestRequest(
        String youtubeId,
        String title,
        String channel,
        Integer durationSeconds,  // opcional: si es null, se calcula del último segmento
        String accent,
        List<SegmentRequest> segments
) {

    /**
     * Record anidado para cada segmento de subtítulo.
     * Los records pueden anidarse dentro de otros records.
     */
    public record SegmentRequest(
            String text,
            double startSeconds,
            double endSeconds
    ) {}
}
