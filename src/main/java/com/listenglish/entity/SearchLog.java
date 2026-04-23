package com.listenglish.entity;

import jakarta.persistence.*;
import java.time.OffsetDateTime;

/**
 * Entrada de log de auditoría.
 * Cada búsqueda que recibe la API queda registrada aquí.
 * Entidad intencionalmente simple: muchas escrituras, pocas lecturas directas.
 */
@Entity
@Table(name = "search_log")
public class SearchLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "query", nullable = false, length = 500)
    private String query;

    @Column(name = "results_count", nullable = false)
    private Integer resultsCount = 0;

    @Column(name = "searched_at", nullable = false, insertable = false, updatable = false)
    private OffsetDateTime searchedAt;

    protected SearchLog() {}

    public SearchLog(String query, Integer resultsCount) {
        this.query = query;
        this.resultsCount = resultsCount;
    }

    public Long getId() { return id; }
    public String getQuery() { return query; }
    public Integer getResultsCount() { return resultsCount; }
    public OffsetDateTime getSearchedAt() { return searchedAt; }
}
