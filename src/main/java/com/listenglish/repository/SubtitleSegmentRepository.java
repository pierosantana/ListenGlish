package com.listenglish.repository;

import com.listenglish.entity.SubtitleSegment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface SubtitleSegmentRepository extends JpaRepository<SubtitleSegment, Long> {

    /**
     * Actualiza el search_vector de un segmento con to_tsvector de PostgreSQL.
     * Se llama tras cada INSERT de segmento en la fase de ingesta.
     */
    @Modifying
    @Query(value = """
            UPDATE subtitle_segment
               SET search_vector = to_tsvector('simple', text)
             WHERE id = :id
            """, nativeQuery = true)
    void updateSearchVector(@Param("id") Long id);

    /**
     * Búsqueda full-text con ranking y paginación.
     *
     * Operadores PostgreSQL FTS usados:
     *
     * @@  — el operador de match: "¿coincide este tsvector con esta tsquery?"
     *       ss.search_vector @@ plainto_tsquery('english', :query)
     *       Es como un LIKE pero semánticamente inteligente.
     *
     * plainto_tsquery('english', :query):
     *       Convierte el texto de búsqueda en una tsquery simple.
     *       "creative thinking" → 'creativ' & 'think' (AND implícito entre palabras).
     *       Es más tolerante que to_tsquery: no necesita sintaxis especial.
     *
     * ts_rank(ss.search_vector, tsquery):
     *       Devuelve un número float que indica qué tan relevante es el segmento
     *       para la búsqueda. Tiene en cuenta frecuencia y posición de los lexemas.
     *       Ordenamos DESC para que los más relevantes aparezcan primero.
     *
     * El resultado es List<Object[]> porque la query une dos tablas (subtitle_segment
     * y video) y JPA no puede mapear eso a una sola entidad automáticamente.
     * Mapeamos manualmente en el servicio.
     *
     * Orden de columnas en Object[]:
     *   [0] ss.id, [1] ss.text, [2] ss.start_seconds, [3] ss.end_seconds,
     *   [4] v.youtube_id, [5] v.title, [6] v.channel, [7] v.accent
     */
    @Query(value = """
            SELECT ss.id,
                   ss.text,
                   ss.start_seconds,
                   ss.end_seconds,
                   v.youtube_id,
                   v.title,
                   v.channel,
                   v.accent,
                   ts_rank(ss.search_vector, phraseto_tsquery('simple', :query)) AS rank
              FROM subtitle_segment ss
              JOIN video v ON ss.video_id = v.id
             WHERE ss.search_vector @@ phraseto_tsquery('simple', :query)
             ORDER BY rank DESC
             LIMIT :size OFFSET :offset
            """, nativeQuery = true)
    List<Object[]> searchSegments(
            @Param("query") String query,
            @Param("size") int size,
            @Param("offset") int offset
    );

    /**
     * Todos los segmentos de un vídeo ordenados por tiempo de inicio.
     * Usado para mostrar la transcripción completa sincronizada con el player.
     *
     * Usamos la relación video.youtubeId para no necesitar un JOIN explícito:
     * Spring Data genera "WHERE ss.video.youtubeId = :youtubeId ORDER BY ss.startSeconds".
     */
    List<SubtitleSegment> findByVideoYoutubeIdOrderByStartSeconds(String youtubeId);

    /**
     * Cuenta el total de segmentos que coinciden con la búsqueda.
     * Necesario para la paginación: el cliente sabe cuántas páginas hay en total.
     */
    @Query(value = """
            SELECT COUNT(*)
              FROM subtitle_segment ss
             WHERE ss.search_vector @@ phraseto_tsquery('simple', :query)
            """, nativeQuery = true)
    long countSearchResults(@Param("query") String query);
}
