package com.listenglish.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;

/**
 * Representa un fragmento de subtítulo dentro de un vídeo.
 * Esta es la tabla central: la búsqueda full-text opera sobre ella.
 */
@Entity
@Table(name = "subtitle_segment")
public class SubtitleSegment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * @ManyToOne — muchos segmentos pertenecen a un vídeo.
     *
     * fetch = FetchType.LAZY — no cargues el Video al cargar un Segmento.
     *   Este es el default recomendado. FetchType.EAGER (el default de @ManyToOne)
     *   cargaría el Video en cada consulta de segmento, que es innecesario
     *   cuando solo necesitas el texto del segmento.
     *
     * @JoinColumn — especifica el nombre de la columna de clave foránea.
     *   name = "video_id" coincide con la columna en la migración SQL.
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "video_id", nullable = false)
    private Video video;

    @Column(name = "text", nullable = false, columnDefinition = "TEXT")
    private String text;

    /**
     * BigDecimal mapea limpiamente a NUMERIC(10,3) de PostgreSQL.
     * Nunca uses float o double para valores que requieran precisión exacta
     * (como posiciones de tiempo). BigDecimal es exacto; float/double son aproximados.
     * Ejemplo: float no puede representar 12.500 exactamente.
     */
    @Column(name = "start_seconds", nullable = false, precision = 10, scale = 3)
    private BigDecimal startSeconds;

    @Column(name = "end_seconds", nullable = false, precision = 10, scale = 3)
    private BigDecimal endSeconds;

    /**
     * La columna tsvector existe en la BD, pero JPA no debe intentar leerla ni
     * escribirla como un String normal — tsvector no es un tipo SQL estándar.
     *
     * insertable = false, updatable = false — JPA ignora completamente esta columna
     * en los INSERT y UPDATE. Se rellenará mediante SQL nativo en la Fase 2.
     *
     * Mantenemos el campo para que Hibernate sepa que la columna existe
     * y no genere warnings. Nunca usamos su valor en código de aplicación.
     */
    @Column(name = "search_vector", columnDefinition = "tsvector",
            insertable = false, updatable = false)
    private String searchVector;

    protected SubtitleSegment() {}

    public SubtitleSegment(Video video, String text,
                           BigDecimal startSeconds, BigDecimal endSeconds) {
        this.video = video;
        this.text = text;
        this.startSeconds = startSeconds;
        this.endSeconds = endSeconds;
    }

    public Long getId() { return id; }

    public Video getVideo() { return video; }
    public void setVideo(Video video) { this.video = video; }

    public String getText() { return text; }
    public void setText(String text) { this.text = text; }

    public BigDecimal getStartSeconds() { return startSeconds; }
    public void setStartSeconds(BigDecimal startSeconds) { this.startSeconds = startSeconds; }

    public BigDecimal getEndSeconds() { return endSeconds; }
    public void setEndSeconds(BigDecimal endSeconds) { this.endSeconds = endSeconds; }

    public String getSearchVector() { return searchVector; }
}
