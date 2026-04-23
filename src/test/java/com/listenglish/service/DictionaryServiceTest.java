package com.listenglish.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.listenglish.client.DictionaryApi;
import com.listenglish.client.DictionaryApiClient;
import com.listenglish.dto.DictionaryResponse;
import com.listenglish.entity.DictionaryCache;
import com.listenglish.repository.DictionaryCacheRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.time.OffsetDateTime;
import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
class DictionaryServiceTest {

    @Mock
    private DictionaryCacheRepository cacheRepository;

    @Mock
    private DictionaryApi apiClient;

    private DictionaryService service;

    // JSON real simplificado que devuelve la Free Dictionary API
    private static final String SAMPLE_API_RESPONSE = """
            [
              {
                "word": "hello",
                "phonetic": "/həˈloʊ/",
                "phonetics": [
                  {"text": "/həˈloʊ/", "audio": "https://api.dictionaryapi.dev/media/pronunciations/en/hello.mp3"}
                ],
                "meanings": [
                  {
                    "partOfSpeech": "exclamation",
                    "definitions": [
                      {"definition": "Used as a greeting.", "example": "Hello there, how are you?"},
                      {"definition": "Used to begin a phone conversation.", "example": null}
                    ]
                  },
                  {
                    "partOfSpeech": "noun",
                    "definitions": [
                      {"definition": "An utterance of 'hello'.", "example": "She gave a warm hello."}
                    ]
                  }
                ]
              }
            ]
            """;

    @BeforeEach
    void setUp() {
        service = new DictionaryService(cacheRepository, apiClient, new ObjectMapper());
    }

    @Test
    void getDefinition_conCacheMiss_llamaALaApiYGuardaEnCache() {
        // ARRANGE: no hay entrada en cache
        when(cacheRepository.findById("hello")).thenReturn(Optional.empty());
        when(apiClient.fetchDefinition("hello")).thenReturn(SAMPLE_API_RESPONSE);
        when(cacheRepository.save(any())).thenAnswer(inv -> inv.getArgument(0));

        // ACT
        DictionaryResponse response = service.getDefinition("hello");

        // ASSERT: respuesta correcta
        assertThat(response.word()).isEqualTo("hello");
        assertThat(response.phonetic()).isEqualTo("/həˈloʊ/");
        assertThat(response.audioUrl()).contains("hello.mp3");
        assertThat(response.meanings()).hasSize(2);
        assertThat(response.meanings().get(0).partOfSpeech()).isEqualTo("exclamation");

        // Se guardó en cache
        verify(cacheRepository, times(1)).save(any(DictionaryCache.class));
    }

    @Test
    void getDefinition_conCacheValido_noLlamaALaApi() {
        // ARRANGE: hay entrada en cache válida (hace 5 días, TTL es 30)
        DictionaryCache cachedEntry = new DictionaryCache(
                "hello", SAMPLE_API_RESPONSE,
                OffsetDateTime.now().minusDays(5)  // 5 días < 30 días TTL → válido
        );
        when(cacheRepository.findById("hello")).thenReturn(Optional.of(cachedEntry));

        // ACT
        DictionaryResponse response = service.getDefinition("hello");

        // ASSERT: se devuelven los datos del cache
        assertThat(response.word()).isEqualTo("hello");

        // NUNCA se llamó a la API
        verify(apiClient, never()).fetchDefinition(any());
        // NUNCA se guardó nada nuevo en cache
        verify(cacheRepository, never()).save(any());
    }

    @Test
    void getDefinition_conCacheExpirado_llamaALaApiYRefrescaCache() {
        // ARRANGE: entrada en cache pero expirada (hace 35 días > 30 días TTL)
        DictionaryCache expiredEntry = new DictionaryCache(
                "hello", SAMPLE_API_RESPONSE,
                OffsetDateTime.now().minusDays(35)  // EXPIRADO
        );
        when(cacheRepository.findById("hello")).thenReturn(Optional.of(expiredEntry));
        when(apiClient.fetchDefinition("hello")).thenReturn(SAMPLE_API_RESPONSE);
        when(cacheRepository.save(any())).thenAnswer(inv -> inv.getArgument(0));

        // ACT
        service.getDefinition("hello");

        // ASSERT: sí se llamó a la API para refrescar
        verify(apiClient, times(1)).fetchDefinition("hello");
        // Y se guardó la entrada actualizada
        verify(cacheRepository, times(1)).save(any(DictionaryCache.class));
    }

    @Test
    void getDefinition_normalizaPalabraAMinusculas() {
        // "Hello" con mayúscula debe buscarse como "hello"
        when(cacheRepository.findById("hello")).thenReturn(Optional.empty());
        when(apiClient.fetchDefinition("hello")).thenReturn(SAMPLE_API_RESPONSE);
        when(cacheRepository.save(any())).thenAnswer(inv -> inv.getArgument(0));

        service.getDefinition("Hello");

        // Verificamos que se buscó en cache y en la API con la palabra en minúsculas
        verify(cacheRepository).findById("hello");
        verify(apiClient).fetchDefinition("hello");
    }

    @Test
    void getDefinition_palabraNoExiste_propagaExcepcion() {
        when(cacheRepository.findById("xyznotaword")).thenReturn(Optional.empty());
        when(apiClient.fetchDefinition("xyznotaword"))
                .thenThrow(new DictionaryApiClient.WordNotFoundException("xyznotaword"));

        assertThatThrownBy(() -> service.getDefinition("xyznotaword"))
                .isInstanceOf(DictionaryApiClient.WordNotFoundException.class)
                .hasMessageContaining("xyznotaword");

        // No se guardó nada en cache
        verify(cacheRepository, never()).save(any());
    }

    @Test
    void parseApiResponse_extraeCorrectamenteLosSignificados() {
        DictionaryResponse response = service.parseApiResponse(SAMPLE_API_RESPONSE);

        assertThat(response.word()).isEqualTo("hello");
        assertThat(response.phonetic()).isEqualTo("/həˈloʊ/");
        assertThat(response.audioUrl()).isNotNull().contains(".mp3");
        assertThat(response.meanings()).hasSize(2);

        // Primera definición del primer significado
        assertThat(response.meanings().get(0).definitions().get(0).definition())
                .isEqualTo("Used as a greeting.");
        assertThat(response.meanings().get(0).definitions().get(0).example())
                .isEqualTo("Hello there, how are you?");

        // Segunda definición: el ejemplo es null
        assertThat(response.meanings().get(0).definitions().get(1).example()).isNull();
    }
}
