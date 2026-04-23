package com.listenglish.controller;

import com.listenglish.dto.DictionaryResponse;
import com.listenglish.service.DictionaryService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * Endpoint de diccionario: GET /api/dictionary/{word}
 */
@RestController
@RequestMapping("/api/dictionary")
public class DictionaryController {

    private final DictionaryService dictionaryService;

    public DictionaryController(DictionaryService dictionaryService) {
        this.dictionaryService = dictionaryService;
    }

    /**
     * GET /api/dictionary/hello
     * GET /api/dictionary/creativity
     *
     * @PathVariable — extrae "hello" o "creativity" de la URL.
     *   Diferencia con @RequestParam:
     *   - @PathVariable: /api/dictionary/hello    (recurso identificado por la URL)
     *   - @RequestParam: /api/dictionary?word=hello (parámetro de filtro)
     *   Para diccionario, el diseño REST correcto es @PathVariable:
     *   "dame el recurso /dictionary/hello".
     *
     * Si la palabra no existe, DictionaryApiClient lanza WordNotFoundException.
     * Por ahora Spring devuelve 500 — Fase 6 lo convertirá en 404.
     */
    @GetMapping("/{word}")
    public ResponseEntity<DictionaryResponse> getDefinition(@PathVariable String word) {
        DictionaryResponse response = dictionaryService.getDefinition(word);
        return ResponseEntity.ok(response);
    }
}
