package com.listenglish.client;

/**
 * Contrato para obtener definiciones del diccionario externo.
 *
 * Separar la interfaz de la implementación tiene dos ventajas:
 * 1. TESTABILIDAD: Mockito siempre puede crear mocks de interfaces,
 *    sin importar la versión de Java o las restricciones del módulo.
 * 2. FLEXIBILIDAD: si mañana cambiamos de API, solo cambiamos la implementación.
 *
 * DictionaryService depende de esta interfaz, no de la clase concreta.
 * Principio de Inversión de Dependencias (la D de SOLID).
 */
public interface DictionaryApi {

    /**
     * Obtiene la definición de una palabra en inglés.
     *
     * @param word Palabra normalizada (minúsculas, trim)
     * @return JSON raw de la respuesta del proveedor externo
     * @throws DictionaryApiClient.WordNotFoundException si la palabra no existe
     * @throws DictionaryApiClient.DictionaryApiException si hay error de red
     */
    String fetchDefinition(String word);
}
