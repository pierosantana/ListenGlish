package com.listenglish.controller;

import com.listenglish.dto.TranscriptSegment;
import com.listenglish.entity.SubtitleSegment;
import com.listenglish.repository.SubtitleSegmentRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * GET /api/videos/{youtubeId}/transcript
 *
 * Devuelve todos los segmentos de un vídeo ordenados por tiempo.
 * El frontend los usa para mostrar la transcripción sincronizada con el player.
 */
@RestController
@RequestMapping("/api/videos")
public class TranscriptController {

    private final SubtitleSegmentRepository segmentRepository;

    public TranscriptController(SubtitleSegmentRepository segmentRepository) {
        this.segmentRepository = segmentRepository;
    }

    @GetMapping("/{youtubeId}/transcript")
    public ResponseEntity<List<TranscriptSegment>> getTranscript(@PathVariable String youtubeId) {
        List<SubtitleSegment> segments =
                segmentRepository.findByVideoYoutubeIdOrderByStartSeconds(youtubeId);

        if (segments.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        List<TranscriptSegment> result = segments.stream()
                .map(s -> new TranscriptSegment(
                        s.getStartSeconds().doubleValue(),
                        s.getEndSeconds().doubleValue(),
                        s.getText()
                ))
                .toList();

        return ResponseEntity.ok(result);
    }
}
