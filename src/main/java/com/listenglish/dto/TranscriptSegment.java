package com.listenglish.dto;

/**
 * Un segmento de la transcripción de un vídeo.
 * Usado por GET /api/videos/{youtubeId}/transcript.
 *
 * El frontend usa startSeconds/endSeconds para saber qué segmento
 * está activo según el tiempo actual del player de YouTube.
 */
public record TranscriptSegment(
        double startSeconds,
        double endSeconds,
        String text
) {}
