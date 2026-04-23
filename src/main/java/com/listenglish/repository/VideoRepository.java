package com.listenglish.repository;

import com.listenglish.entity.Video;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.Optional;

/**
 * Spring Data JPA genera automáticamente la implementación de las operaciones
 * CRUD estándar. Nunca escribes la implementación — Spring la genera al arrancar.
 *
 * JpaRepository<Video, Long>:
 *   - Video = tipo de la entidad
 *   - Long  = tipo de la clave primaria (coincide con Video.id)
 *
 * Esto te da gratis: save(), findById(), findAll(), deleteById(), count(), etc.
 */
@Repository
public interface VideoRepository extends JpaRepository<Video, Long> {

    // Spring Data JPA lee el nombre del método y genera la consulta automáticamente.
    // "findBy" + "YoutubeId" → SELECT * FROM video WHERE youtube_id = ?
    Optional<Video> findByYoutubeId(String youtubeId);
}
