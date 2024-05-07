package com.api.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.api.backend.model.Recurso;

@Repository
public interface RecursoRepository extends JpaRepository<Recurso, Integer> {
    
}
