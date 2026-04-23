package com.listenglish.dto;

/**
 * Un resultado individual de búsqueda: un segmento de subtítulo con los datos
 * de su vídeo incluidos para que el frontend pueda mostrar todo sin hacer
 * una segunda petición.
 */
public record SearchResult(
        String youtubeId,
        String videoTitle,
        String channel,
        String text,
        double startSeconds,
        double endSeconds,
        String accent
) {}
