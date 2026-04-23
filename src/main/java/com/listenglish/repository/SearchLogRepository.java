package com.listenglish.repository;

import com.listenglish.entity.SearchLog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SearchLogRepository extends JpaRepository<SearchLog, Long> {
    // Fase 1: sin consultas personalizadas.
    // Fase 6 añadirá: top 10 búsquedas para el endpoint /api/stats
}
