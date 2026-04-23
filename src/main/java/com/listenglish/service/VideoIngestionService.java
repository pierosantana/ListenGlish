package com.listenglish.service;

import com.listenglish.dto.VideoIngestRequest;
import com.listenglish.dto.VideoIngestResponse;
import com.listenglish.entity.SubtitleSegment;
import com.listenglish.entity.Video;
import com.listenglish.repository.SubtitleSegmentRepository;
import com.listenglish.repository.VideoRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

/**
 * Servicio de ingesta: recibe los datos de un vídeo con sus segmentos,
 * los persiste en la base de datos y genera el tsvector para búsqueda.
 */
@Service
public class VideoIngestionService {

    private final VideoRepository videoRepository;
    private final SubtitleSegmentRepository subtitleSegmentRepository;

    public VideoIngestionService(VideoRepository videoRepository,
                                 SubtitleSegmentRepository subtitleSegmentRepository) {
        this.videoRepository = videoRepository;
        this.subtitleSegmentRepository = subtitleSegmentRepository;
    }

    /**
     * Ingesta un vídeo completo con todos sus segmentos de subtítulo.
     *
     * @Transactional garantiza que si algo falla a mitad del proceso
     * (por ejemplo, al guardar los segmentos), toda la operación se
     * revierte automáticamente — no quedan vídeos sin segmentos ni
     * segmentos huérfanos en la BD.
     *
     * ¿Por qué @Transactional aquí y no en el repositorio?
     * Porque esta operación abarca MÚLTIPLES llamadas a repositorio
     * (save del video + save de cada segmento + update del tsvector).
     * Todas deben ser atómicas: o todo se guarda, o nada.
     */
    @Transactional
    public VideoIngestResponse ingest(VideoIngestRequest request) {
        if (videoRepository.findByYoutubeId(request.youtubeId()).isPresent()) {
            throw new VideoAlreadyExistsException(request.youtubeId());
        }

        // Calcular duración desde el último segmento si no se proporcionó
        int durationSeconds = request.durationSeconds() != null
                ? request.durationSeconds()
                : calculateDurationFromSegments(request);

        Video video = new Video(
                request.youtubeId(),
                request.title(),
                request.channel(),
                durationSeconds
        );
        video.setAccent(request.accent());
        Video savedVideo = videoRepository.save(video);

        // Guardar cada segmento y generar su tsvector.
        // Dos pasos explícitos:
        //   1. save() → JPA inserta la fila, PostgreSQL asigna el id (BIGSERIAL)
        //   2. updateSearchVector() → UPDATE nativo con to_tsvector de PostgreSQL
        // Hacerlo en dos pasos es más claro que un INSERT nativo complejo.
        for (VideoIngestRequest.SegmentRequest seg : request.segments()) {
            SubtitleSegment segment = new SubtitleSegment(
                    savedVideo,
                    seg.text(),
                    BigDecimal.valueOf(seg.startSeconds()),
                    BigDecimal.valueOf(seg.endSeconds())
            );
            SubtitleSegment saved = subtitleSegmentRepository.save(segment);
            subtitleSegmentRepository.updateSearchVector(saved.getId());
        }

        return new VideoIngestResponse(savedVideo.getId(), savedVideo.getYoutubeId(),
                request.segments().size());
    }

    private int calculateDurationFromSegments(VideoIngestRequest request) {
        if (request.segments() == null || request.segments().isEmpty()) {
            return 0;
        }
        double maxEnd = request.segments().stream()
                .mapToDouble(VideoIngestRequest.SegmentRequest::endSeconds)
                .max()
                .orElse(0.0);
        return (int) Math.ceil(maxEnd);
    }

    /**
     * Excepción de dominio para cuando ya existe un vídeo con ese youtubeId.
     *
     * La definimos como clase estática anidada porque solo tiene sentido
     * en el contexto de este servicio. No necesita su propio archivo.
     *
     * RuntimeException = excepción no chequeada. No obliga al llamador
     * a atraparla con try/catch. La Fase 6 añadirá un @ControllerAdvice
     * para convertirla automáticamente en HTTP 409 Conflict.
     */
    public static class VideoAlreadyExistsException extends RuntimeException {
        public VideoAlreadyExistsException(String youtubeId) {
            super("Ya existe un vídeo con youtubeId: " + youtubeId);
        }
    }
}
