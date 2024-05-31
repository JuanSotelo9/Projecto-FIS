package com.api.backend.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.api.backend.model.Reserva;

@Repository
public interface ReservaRepository extends JpaRepository<Reserva, String>{
    
    public List<Reserva> findBykIdusuario(Long kIdusuario);
}
