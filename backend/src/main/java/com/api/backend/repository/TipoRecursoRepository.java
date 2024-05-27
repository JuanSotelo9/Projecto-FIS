package com.api.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.api.backend.model.TipoRecurso;

@Repository
public interface TipoRecursoRepository extends JpaRepository<TipoRecurso, Integer>{
    
}
