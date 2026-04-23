package com.listenglish.dto;

import java.util.List;

/**
 * Respuesta del endpoint GET /api/dictionary/{word}.
 * Extrae los campos más útiles de la respuesta de la Free Dictionary API.
 */
public record DictionaryResponse(
        String word,
        String phonetic,      // ej: /həˈloʊ/  — puede ser null
        String audioUrl,      // URL al archivo de audio — puede ser null
        List<Meaning> meanings
) {
    public record Meaning(
            String partOfSpeech,          // ej: "noun", "verb", "adjective"
            List<Definition> definitions
    ) {}

    public record Definition(
            String definition,
            String example    // frase de ejemplo — puede ser null
    ) {}
}
