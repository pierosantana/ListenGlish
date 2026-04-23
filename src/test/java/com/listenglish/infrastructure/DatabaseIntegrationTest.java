package com.listenglish.infrastructure;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * Test de integración que verifica que Flyway ejecutó las migraciones correctamente.
 *
 * Usa el PostgreSQL de docker-compose (localhost:5432) — sin Testcontainers.
 *
 * Prerequisito: docker compose up -d debe estar corriendo antes de ejecutar estos tests.
 * Esto es normal en entornos de desarrollo: los tests de integración asumen
 * que la infraestructura de desarrollo está levantada.
 *
 * ¿Por qué no Testcontainers?
 * Testcontainers usa la librería docker-java internamente, que tiene un bug conocido
 * con Docker Desktop 4.61.0 (devuelve HTTP 400 al conectar al socket Unix).
 * El approach con docker-compose es igualmente válido: seguimos usando PostgreSQL real,
 * seguimos probando el schema completo, no usamos H2 ni bases de datos simuladas.
 *
 * @SpringBootTest: carga el ApplicationContext completo con todas las beans,
 * autoconfiguración, Flyway, y se conecta al PostgreSQL de application.yml.
 */
@SpringBootTest
class DatabaseIntegrationTest {

    /**
     * JdbcTemplate: utilidad de Spring para ejecutar SQL directo.
     * Lo usamos para inspeccionar el schema sin pasar por JPA.
     * Spring lo crea e inyecta automáticamente.
     */
    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Test
    void migracionFlywayDeberiaCrearTablaVideo() {
        // information_schema.tables es una vista SQL estándar que lista todas las tablas.
        Integer count = jdbcTemplate.queryForObject(
            """
            SELECT COUNT(*)
            FROM information_schema.tables
            WHERE table_schema = 'public'
              AND table_name = 'video'
            """,
            Integer.class
        );
        assertThat(count).isEqualTo(1);
    }

    @Test
    void migracionFlywayDeberiaCrearTablaSubtitleSegment() {
        Integer count = jdbcTemplate.queryForObject(
            """
            SELECT COUNT(*)
            FROM information_schema.tables
            WHERE table_schema = 'public'
              AND table_name = 'subtitle_segment'
            """,
            Integer.class
        );
        assertThat(count).isEqualTo(1);
    }

    @Test
    void migracionFlywayDeberiaCrearTablaSearchLog() {
        Integer count = jdbcTemplate.queryForObject(
            """
            SELECT COUNT(*)
            FROM information_schema.tables
            WHERE table_schema = 'public'
              AND table_name = 'search_log'
            """,
            Integer.class
        );
        assertThat(count).isEqualTo(1);
    }

    @Test
    void subtitleSegmentDeberiaTenerColumnaSearchVectorDeTipoTsvector() {
        Integer count = jdbcTemplate.queryForObject(
            """
            SELECT COUNT(*)
            FROM information_schema.columns
            WHERE table_schema = 'public'
              AND table_name = 'subtitle_segment'
              AND column_name = 'search_vector'
              AND data_type = 'tsvector'
            """,
            Integer.class
        );
        assertThat(count).isEqualTo(1);
    }

    @Test
    void indiceGINDeberiaExistirEnSearchVector() {
        // pg_indexes: vista del sistema de PostgreSQL que lista todos los índices.
        Integer count = jdbcTemplate.queryForObject(
            """
            SELECT COUNT(*)
            FROM pg_indexes
            WHERE tablename = 'subtitle_segment'
              AND indexname = 'idx_subtitle_segment_search_vector'
            """,
            Integer.class
        );
        assertThat(count).isEqualTo(1);
    }
}
