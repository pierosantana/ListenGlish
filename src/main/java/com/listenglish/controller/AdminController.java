package com.listenglish.controller;

import com.listenglish.dto.VideoIngestRequest;
import com.listenglish.dto.VideoIngestResponse;
import com.listenglish.service.VideoIngestionService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * Controlador para operaciones administrativas.
 * En este proyecto no hay autenticación (uso personal),
 * pero la separación en /api/admin/* deja claro que estos
 * endpoints no son para usuarios finales.
 */
@RestController
@RequestMapping("/api/admin")
public class AdminController {

    private final VideoIngestionService videoIngestionService;

    public AdminController(VideoIngestionService videoIngestionService) {
        this.videoIngestionService = videoIngestionService;
    }

    /**
     * POST /api/admin/videos
     *
     * Ingesta un vídeo con todos sus segmentos de subtítulo.
     *
     * @RequestBody — Jackson deserializa el cuerpo JSON de la petición
     * al tipo VideoIngestRequest automáticamente.
     *
     * HTTP 201 Created (en lugar de 200 OK) es la respuesta semánticamente
     * correcta cuando se ha creado un nuevo recurso.
     * ResponseEntity.status(201) + .body(...) construye esa respuesta.
     *
     * Si el youtubeId ya existe, el servicio lanza VideoAlreadyExistsException.
     * Por ahora Spring devolverá un 500 genérico — la Fase 6 añadirá un
     * @ControllerAdvice para convertirlo en 409 Conflict.
     */
    @PostMapping("/videos")
    public ResponseEntity<VideoIngestResponse> ingestVideo(
            @RequestBody VideoIngestRequest request) {
        VideoIngestResponse response = videoIngestionService.ingest(request);
        return ResponseEntity.status(HttpStatus.CREATED).body(response);
    }
}
