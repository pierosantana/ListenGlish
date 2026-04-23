package com.listenglish.entity;

import jakarta.persistence.*;
import java.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * Representa un vídeo de YouTube que ha sido indexado en el sistema.
 *
 * @Entity  — le dice a Hibernate que esta clase mapea a una tabla de base de datos.
 * @Table   — especifica QUÉ tabla. Si se omite, Hibernate usa el nombre de la clase.
 *            Ser explícito es más claro y seguro.
 */
@Entity
@Table(name = "video")
public class Video {

    /**
     * @Id             — marca el campo como clave primaria.
     * @GeneratedValue — JPA no asigna este valor manualmente; lo genera la BD.
     * GenerationType.IDENTITY — mapea al BIGSERIAL de PostgreSQL:
     *   al hacer INSERT, PostgreSQL auto-incrementa la secuencia y JPA lee el valor generado.
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * @Column — mapea el campo a una columna específica.
     *   name     = nombre exacto de la columna en la tabla.
     *   nullable = false → añade restricción NOT NULL a nivel JPA
     *              (la BD también la aplica, pero esto da errores más tempranos).
     *   unique   = true → JPA sabe que es único (lanza ConstraintViolationException).
     *   length   = 20 → mapea a VARCHAR(20).
     */
    @Column(name = "youtube_id", nullable = false, unique = true, length = 20)
    private String youtubeId;

    @Column(name = "title", nullable = false, length = 500)
    private String title;

    @Column(name = "channel", nullable = false, length = 255)
    private String channel;

    @Column(name = "duration_seconds", nullable = false)
    private Integer durationSeconds;

    @Column(name = "language", nullable = false, length = 10)
    private String language = "en";

    @Column(name = "accent", length = 50)
    private String accent;

    /**
     * OffsetDateTime mapea correctamente a TIMESTAMPTZ de PostgreSQL.
     * Nunca uses LocalDateTime para timestamps con zona horaria — no tiene información
     * de zona y puede generar datos incorrectos si cambia la zona horaria del servidor.
     *
     * insertable = false: JPA no incluye esta columna en los INSERT
     *   → deja que el DEFAULT NOW() de la BD tome efecto.
     * updatable = false: JPA no incluye esta columna en los UPDATE
     *   → el valor se establece una vez al crear y nunca cambia.
     */
    @Column(name = "created_at", nullable = false, insertable = false, updatable = false)
    private OffsetDateTime createdAt;

    /**
     * @OneToMany — un vídeo tiene muchos segmentos de subtítulo.
     *
     * mappedBy = "video" — le dice a JPA que SubtitleSegment es el dueño
     *   de la relación (tiene el @ManyToOne y la columna de clave foránea).
     *   Sin mappedBy, JPA crearía una tabla de join innecesaria.
     *
     * cascade = CascadeType.ALL — si guardas/borras un Video por JPA,
     *   la operación se propaga automáticamente a todos sus SubtitleSegments.
     *
     * orphanRemoval = true — si quitas un SubtitleSegment de esta lista y
     *   guardas el Video, el segmento huérfano se borra de la BD.
     *
     * fetch = FetchType.LAZY — los segmentos NO se cargan de la BD al cargar
     *   un Video. Se cargan solo cuando accedes explícitamente al campo `segments`.
     *   Esto previene cargar miles de filas de subtítulos accidentalmente.
     */
    @OneToMany(mappedBy = "video", cascade = CascadeType.ALL,
               orphanRemoval = true, fetch = FetchType.LAZY)
    private List<SubtitleSegment> segments = new ArrayList<>();

    // JPA requiere un constructor sin argumentos (puede ser protected).
    protected Video() {}

    public Video(String youtubeId, String title, String channel, Integer durationSeconds) {
        this.youtubeId = youtubeId;
        this.title = title;
        this.channel = channel;
        this.durationSeconds = durationSeconds;
    }

    public Long getId() { return id; }

    public String getYoutubeId() { return youtubeId; }
    public void setYoutubeId(String youtubeId) { this.youtubeId = youtubeId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getChannel() { return channel; }
    public void setChannel(String channel) { this.channel = channel; }

    public Integer getDurationSeconds() { return durationSeconds; }
    public void setDurationSeconds(Integer durationSeconds) { this.durationSeconds = durationSeconds; }

    public String getLanguage() { return language; }
    public void setLanguage(String language) { this.language = language; }

    public String getAccent() { return accent; }
    public void setAccent(String accent) { this.accent = accent; }

    public OffsetDateTime getCreatedAt() { return createdAt; }

    public List<SubtitleSegment> getSegments() { return segments; }
}
