package com.listenglish.client;

import org.springframework.stereotype.Component;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestClient;

/**
 * Cliente HTTP para la Free Dictionary API.
 * https://dictionaryapi.dev/
 *
 * API pública, gratuita, sin API key. Devuelve definiciones en inglés.
 *
 * Separamos el cliente HTTP en su propio @Component por dos razones:
 * 1. SEPARACIÓN DE RESPONSABILIDADES: DictionaryService no necesita saber
 *    cómo se hace la petición HTTP — solo qué datos devuelve.
 * 2. TESTABILIDAD: en tests podemos mockear DictionaryApiClient y
 *    DictionaryService sin necesidad de hacer peticiones HTTP reales.
 */
@Component
public class DictionaryApiClient implements DictionaryApi {

    private static final String BASE_URL = "https://api.dictionaryapi.dev/api/v2/entries/en/";

    private final RestClient restClient;

    /**
     * RestClient (Spring 6.1+) es el reemplazo moderno de RestTemplate.
     * Tiene una API fluida (builder pattern) y es más limpio de usar.
     *
     * RestClient.create() crea un cliente con configuración por defecto.
     * Para proyectos más complejos crearías un @Bean configurado con timeouts,
     * interceptors, etc. Aquí la configuración por defecto es suficiente.
     */
    public DictionaryApiClient() {
        this.restClient = RestClient.create();
    }

    // Constructor para tests: permite inyectar un RestClient mock
    DictionaryApiClient(RestClient restClient) {
        this.restClient = restClient;
    }

    /**
     * Obtiene la definición de una palabra de la Free Dictionary API.
     *
     * @param word  Palabra en inglés a buscar (ya normalizada a minúsculas)
     * @return      JSON raw de la respuesta (array de definiciones)
     * @throws WordNotFoundException si la API devuelve 404 (palabra no encontrada)
     * @throws DictionaryApiException si hay otro error de red o HTTP
     */
    public String fetchDefinition(String word) {
        try {
            return restClient
                    .get()
                    .uri(BASE_URL + word)
                    // retrieve() ejecuta la petición
                    .retrieve()
                    // body(String.class) deserializa la respuesta como String JSON crudo
                    .body(String.class);

        } catch (HttpClientErrorException.NotFound e) {
            // La API devuelve 404 cuando la palabra no existe en su base de datos
            throw new WordNotFoundException(word);

        } catch (Exception e) {
            // Cualquier otro error: timeout, red caída, etc.
            throw new DictionaryApiException("Error al consultar la API para: " + word, e);
        }
    }

    /**
     * Palabra no encontrada en el diccionario.
     * Se convierte en HTTP 404 en la Fase 6 (@ControllerAdvice).
     */
    public static class WordNotFoundException extends RuntimeException {
        public WordNotFoundException(String word) {
            super("Palabra no encontrada en el diccionario: " + word);
        }
    }

    /**
     * Error genérico al llamar a la API externa.
     * Se convierte en HTTP 503 Service Unavailable en la Fase 6.
     */
    public static class DictionaryApiException extends RuntimeException {
        public DictionaryApiException(String message, Throwable cause) {
            super(message, cause);
        }
    }
}
