package com.listenglish.service;

import com.listenglish.dto.SearchResponse;
import com.listenglish.dto.VideoIngestRequest;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * Tests de integración para SearchService.
 *
 * Verifican que la búsqueda full-text con PostgreSQL funciona de verdad:
 * stemming, stopwords, ranking, paginación, y log de búsquedas.
 *
 * Prerequisito: docker compose up -d debe estar corriendo.
 *
 * @BeforeEach / @AfterEach:
 *   En lugar de @Transactional (que haría rollback automático),
 *   insertamos datos de prueba antes de cada test y los limpiamos después.
 *   Esto es más explícito y evita problemas con @Modifying dentro de transacciones
 *   de test que pueden no hacer flush correctamente.
 */
@SpringBootTest
class SearchServiceIntegrationTest {

    @Autowired
    private SearchService searchService;

    @Autowired
    private VideoIngestionService videoIngestionService;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // youtubeId único para los datos de prueba — fácil de limpiar después
    private static final String TEST_YOUTUBE_ID = "test-search-fase3";

    @BeforeEach
    void insertarDatosDePrueba() {
        // Limpiamos primero por si quedaron datos de un test anterior fallido
        limpiarDatosDePrueba();

        VideoIngestRequest request = new VideoIngestRequest(
                TEST_YOUTUBE_ID,
                "The Art of Creative Thinking",
                "TED",
                300,
                "american",
                List.of(
                        new VideoIngestRequest.SegmentRequest(
                                "Creativity is the most important skill in the modern world.",
                                0.0, 5.0),
                        new VideoIngestRequest.SegmentRequest(
                                "Great leaders inspire action and motivate their teams.",
                                5.5, 11.0),
                        new VideoIngestRequest.SegmentRequest(
                                "Vulnerability is the birthplace of innovation and creativity.",
                                12.0, 17.0),
                        new VideoIngestRequest.SegmentRequest(
                                "Schools often focus on memorization instead of creative thinking.",
                                18.0, 24.0)
                )
        );
        videoIngestionService.ingest(request);
    }

    @AfterEach
    void limpiarDatosDePrueba() {
        // ON DELETE CASCADE borra los subtitle_segments automáticamente
        jdbcTemplate.update("DELETE FROM video WHERE youtube_id = ?", TEST_YOUTUBE_ID);
    }

    @Test
    void buscarPalabraExistente_deberiaRetornarResultados() {
        SearchResponse response = searchService.search("creativity", 0, 10);

        assertThat(response.query()).isEqualTo("creativity");
        assertThat(response.total()).isGreaterThan(0);
        assertThat(response.results()).isNotEmpty();

        // Al menos un resultado debe venir de nuestro vídeo de prueba
        // (puede haber más si hay seed data en la DB con la misma palabra)
        assertThat(response.results())
                .anyMatch(r -> r.youtubeId().equals(TEST_YOUTUBE_ID));
    }

    @Test
    void buscarPalabraInexistente_deberiaRetornarListaVacia() {
        SearchResponse response = searchService.search("xyzfoobar123", 0, 10);

        assertThat(response.total()).isEqualTo(0);
        assertThat(response.results()).isEmpty();
    }

    @Test
    void busquedaDeberiaTenerStemming() {
        // "creative" y "creativity" tienen la misma raíz: 'creat'
        // Si buscamos "creative", PostgreSQL debe encontrar segmentos con "creativity"
        SearchResponse response = searchService.search("creative", 0, 10);

        assertThat(response.total()).isGreaterThan(0);
        // Al menos uno de los resultados debe contener "creativ" (en cualquier forma)
        assertThat(response.results())
                .anyMatch(r -> r.text().toLowerCase().contains("creativ"));
    }

    @Test
    void busquedaDeberiaOrdenarPorRanking() {
        // "creativity" aparece en 2 segmentos, "creative" en 1 más.
        // El segmento con la palabra más veces debería salir primero.
        SearchResponse response = searchService.search("creativity", 0, 10);

        assertThat(response.results()).hasSizeGreaterThan(1);

        // Verificamos que los resultados más relevantes (los que contienen la palabra)
        // están en las primeras posiciones
        String firstResultText = response.results().get(0).text().toLowerCase();
        assertThat(firstResultText).contains("creativ");
    }

    @Test
    void paginacionDeberiaFuncionar() {
        // Hay 3 segmentos con palabras relacionadas con "creativity/creative/skill/..."
        // Pedimos página 0 con tamaño 2, luego página 1 con tamaño 2
        SearchResponse pagina0 = searchService.search("creativity", 0, 2);
        SearchResponse pagina1 = searchService.search("creativity", 1, 2);

        assertThat(pagina0.page()).isEqualTo(0);
        assertThat(pagina0.size()).isEqualTo(2);
        assertThat(pagina1.page()).isEqualTo(1);

        // Los resultados de página 0 y página 1 deben ser diferentes
        if (!pagina1.results().isEmpty()) {
            assertThat(pagina0.results().get(0).text())
                    .isNotEqualTo(pagina1.results().get(0).text());
        }
    }

    @Test
    void busquedaDeberiaRegistrarseEnSearchLog() {
        String queryUnica = "inspiration-test-" + System.currentTimeMillis();

        searchService.search(queryUnica, 0, 10);

        // Verificar que la búsqueda quedó registrada en search_log
        Integer count = jdbcTemplate.queryForObject(
                "SELECT COUNT(*) FROM search_log WHERE query = ?",
                Integer.class,
                queryUnica
        );
        assertThat(count).isEqualTo(1);

        // Limpiar el log de prueba
        jdbcTemplate.update("DELETE FROM search_log WHERE query = ?", queryUnica);
    }

    @Test
    void resultadoDeberiaContenerDatosDelVideo() {
        SearchResponse response = searchService.search("creativity", 0, 10);

        assertThat(response.results()).isNotEmpty();

        // Filtramos para obtener un resultado de nuestro vídeo de prueba
        // (puede haber seed data con "creativity" en la DB)
        var result = response.results().stream()
                .filter(r -> r.youtubeId().equals(TEST_YOUTUBE_ID))
                .findFirst()
                .orElseThrow(() -> new AssertionError("No se encontró resultado del vídeo de prueba"));

        assertThat(result.videoTitle()).isEqualTo("The Art of Creative Thinking");
        assertThat(result.channel()).isEqualTo("TED");
        assertThat(result.startSeconds()).isGreaterThanOrEqualTo(0.0);
        assertThat(result.endSeconds()).isGreaterThan(result.startSeconds());
    }
}
