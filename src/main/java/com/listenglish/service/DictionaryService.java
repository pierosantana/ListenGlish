package com.listenglish.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.listenglish.client.DictionaryApi;
import com.listenglish.client.DictionaryApiClient;
import com.listenglish.dto.DictionaryResponse;
import com.listenglish.entity.DictionaryCache;
import com.listenglish.repository.DictionaryCacheRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class DictionaryService {

    // TTL de 30 días: los significados no cambian frecuentemente
    static final int CACHE_TTL_DAYS = 30;

    private final DictionaryCacheRepository cacheRepository;
    private final DictionaryApi apiClient;
    private final ObjectMapper objectMapper;

    /**
     * ObjectMapper es el deserializador JSON de Jackson.
     * Spring Boot crea un bean de ObjectMapper automáticamente —
     * podemos inyectarlo directamente.
     *
     * Dependemos de DictionaryApi (interfaz), no de DictionaryApiClient (clase concreta).
     * Spring inyecta DictionaryApiClient porque es el único @Component que la implementa.
     */
    public DictionaryService(DictionaryCacheRepository cacheRepository,
                              DictionaryApi apiClient,
                              ObjectMapper objectMapper) {
        this.cacheRepository = cacheRepository;
        this.apiClient = apiClient;
        this.objectMapper = objectMapper;
    }

    /**
     * Obtiene la definición de una palabra con caché de 30 días.
     *
     * Flujo:
     *   1. Normalizar la palabra (minúsculas, trim)
     *   2. Buscar en dictionary_cache
     *   3a. Cache HIT y no expirado → devolver datos del cache
     *   3b. Cache MISS o expirado → llamar a la API → guardar en cache → devolver
     */
    @Transactional
    public DictionaryResponse getDefinition(String word) {
        String normalizedWord = word.toLowerCase().trim();

        Optional<DictionaryCache> cached = cacheRepository.findById(normalizedWord);

        if (cached.isPresent() && !isExpired(cached.get())) {
            // Cache HIT: parsear el JSON guardado y devolver
            return parseApiResponse(cached.get().getPayload());
        }

        // Cache MISS o expirado: llamar a la API
        // (lanza WordNotFoundException o DictionaryApiException si hay error)
        String rawJson = apiClient.fetchDefinition(normalizedWord);

        if (cached.isPresent()) {
            // Entrada expirada: actualizar en lugar de insertar
            cached.get().refresh(rawJson);
            cacheRepository.save(cached.get());
        } else {
            // Entrada nueva: insertar
            cacheRepository.save(new DictionaryCache(normalizedWord, rawJson, OffsetDateTime.now()));
        }

        return parseApiResponse(rawJson);
    }

    /**
     * Comprueba si una entrada del caché ha superado el TTL de 30 días.
     */
    private boolean isExpired(DictionaryCache entry) {
        return entry.getCachedAt().isBefore(OffsetDateTime.now().minusDays(CACHE_TTL_DAYS));
    }

    /**
     * Parsea la respuesta JSON de la Free Dictionary API y extrae los campos
     * que nos interesan para DictionaryResponse.
     *
     * La API devuelve un array JSON. Tomamos el primer elemento.
     *
     * Estructura de la API:
     * [
     *   {
     *     "word": "hello",
     *     "phonetic": "/həˈloʊ/",
     *     "phonetics": [{"text": "...", "audio": "url..."}],
     *     "meanings": [
     *       {
     *         "partOfSpeech": "exclamation",
     *         "definitions": [
     *           {"definition": "used as a greeting", "example": "hello there!"}
     *         ]
     *       }
     *     ]
     *   }
     * ]
     *
     * Usamos JsonNode (árbol JSON de Jackson) en lugar de clases de deserialización
     * específicas de la API. Ventaja: si la API añade/quita campos, nuestro código
     * no se rompe — simplemente ignoramos lo que no nos interesa.
     */
    DictionaryResponse parseApiResponse(String rawJson) {
        try {
            JsonNode root = objectMapper.readTree(rawJson);

            // La respuesta es un array; tomamos el primer elemento
            JsonNode entry = root.get(0);

            String word = entry.path("word").asText();
            String phonetic = entry.path("phonetic").asText(null);
            String audioUrl = extractAudioUrl(entry);
            List<DictionaryResponse.Meaning> meanings = extractMeanings(entry);

            return new DictionaryResponse(word, phonetic, audioUrl, meanings);

        } catch (JsonProcessingException e) {
            throw new RuntimeException("Error al parsear respuesta del diccionario", e);
        }
    }

    /**
     * Extrae la primera URL de audio no vacía del array "phonetics".
     * Puede no existir → devuelve null.
     */
    private String extractAudioUrl(JsonNode entry) {
        JsonNode phonetics = entry.path("phonetics");
        for (JsonNode phonetic : phonetics) {
            String audio = phonetic.path("audio").asText(null);
            if (audio != null && !audio.isBlank()) {
                return audio;
            }
        }
        return null;
    }

    /**
     * Extrae los significados limitando a 3 definiciones por part-of-speech
     * para no sobrecargar la respuesta.
     */
    private List<DictionaryResponse.Meaning> extractMeanings(JsonNode entry) {
        List<DictionaryResponse.Meaning> meanings = new ArrayList<>();

        for (JsonNode meaningNode : entry.path("meanings")) {
            String partOfSpeech = meaningNode.path("partOfSpeech").asText();

            List<DictionaryResponse.Definition> definitions = new ArrayList<>();
            int count = 0;
            for (JsonNode defNode : meaningNode.path("definitions")) {
                if (count >= 3) break;  // máximo 3 definiciones por categoría
                String definition = defNode.path("definition").asText();
                String example = defNode.path("example").asText(null);
                // asText(null) devuelve null si el campo no existe,
                // en lugar de la string "null"
                if (example != null && example.isBlank()) example = null;
                definitions.add(new DictionaryResponse.Definition(definition, example));
                count++;
            }

            meanings.add(new DictionaryResponse.Meaning(partOfSpeech, definitions));
        }

        return meanings;
    }
}
