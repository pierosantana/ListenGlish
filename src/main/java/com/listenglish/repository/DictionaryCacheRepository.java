package com.listenglish.repository;

import com.listenglish.entity.DictionaryCache;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Repositorio para la caché de diccionario.
 *
 * JpaRepository<DictionaryCache, String>:
 *   - DictionaryCache = entidad
 *   - String = tipo de la PK (la propia palabra, no un Long)
 *
 * findById(word) → Optional<DictionaryCache>: lo usaremos para buscar en caché.
 * save(cache) → DictionaryCache: upsert (INSERT o UPDATE si ya existe).
 */
@Repository
public interface DictionaryCacheRepository extends JpaRepository<DictionaryCache, String> {
    // findById y save de JpaRepository son suficientes para este caso.
}
