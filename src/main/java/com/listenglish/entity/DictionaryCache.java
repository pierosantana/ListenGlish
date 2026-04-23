package com.listenglish.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;
import java.time.OffsetDateTime;

/**
 * Caché de respuestas de la Free Dictionary API.
 *
 * La clave primaria es la propia palabra (String), no un BIGSERIAL.
 * Esto es válido cuando tienes una clave natural única y estable.
 * Ventaja: puedes buscar directamente por palabra sin un índice separado.
 */
@Entity
@Table(name = "dictionary_cache")
public class DictionaryCache {

    /**
     * @Id sin @GeneratedValue: la aplicación asigna el id (la propia palabra).
     * A diferencia de video y subtitle_segment, aquí no delegamos en BIGSERIAL.
     */
    @Id
    @Column(name = "word", length = 100)
    private String word;

    /**
     * El JSON completo de la respuesta de la API, almacenado como String.
     * columnDefinition = "jsonb" le dice a Hibernate el tipo exacto de PostgreSQL.
     *
     * Almacenar el payload crudo (sin transformar) tiene ventajas:
     * - No perdemos datos si la API añade campos en el futuro
     * - Podemos cambiar qué extraemos sin migrar datos
     * - Es simple: guardar y recuperar JSON como String
     */
    /**
     * @JdbcTypeCode(SqlTypes.JSON) le dice a Hibernate 6 que este campo
     * debe mapearse como JSON nativo de PostgreSQL (jsonb).
     * Sin esta anotación, Hibernate envía el String como VARCHAR y PostgreSQL
     * rechaza la inserción con "column is of type jsonb but expression is of type varchar".
     */
    @JdbcTypeCode(SqlTypes.JSON)
    @Column(name = "payload", nullable = false, columnDefinition = "jsonb")
    private String payload;

    /**
     * A diferencia de created_at en Video, aquí SÍ queremos poder actualizar
     * cachedAt cuando refrescamos la entrada (TTL expirado).
     * Por eso NO ponemos insertable=false, updatable=false.
     */
    @Column(name = "cached_at", nullable = false)
    private OffsetDateTime cachedAt;

    protected DictionaryCache() {}

    public DictionaryCache(String word, String payload, OffsetDateTime cachedAt) {
        this.word = word;
        this.payload = payload;
        this.cachedAt = cachedAt;
    }

    public String getWord() { return word; }
    public String getPayload() { return payload; }
    public OffsetDateTime getCachedAt() { return cachedAt; }

    public void refresh(String newPayload) {
        this.payload = newPayload;
        this.cachedAt = OffsetDateTime.now();
    }
}
