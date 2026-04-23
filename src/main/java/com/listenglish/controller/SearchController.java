package com.listenglish.controller;

import com.listenglish.dto.SearchResponse;
import com.listenglish.service.SearchService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * Endpoint de búsqueda: GET /api/search?q=creativity&page=0&size=10
 */
@RestController
@RequestMapping("/api/search")
public class SearchController {

    private final SearchService searchService;

    public SearchController(SearchService searchService) {
        this.searchService = searchService;
    }

    /**
     * GET /api/search?q=creativity&page=0&size=10
     *
     * @RequestParam(defaultValue = "0")  — si no se envía el parámetro,
     *   Spring usa el valor por defecto. El usuario puede llamar simplemente
     *   /api/search?q=word y obtendrá la primera página con 10 resultados.
     *
     * ResponseEntity<SearchResponse> — HTTP 200 con el JSON de SearchResponse.
     */
    @GetMapping
    public ResponseEntity<SearchResponse> search(
            @RequestParam String q,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {

        SearchResponse response = searchService.search(q, page, size);
        return ResponseEntity.ok(response);
    }
}
