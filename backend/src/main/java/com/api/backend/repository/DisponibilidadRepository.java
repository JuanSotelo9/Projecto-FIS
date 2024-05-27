package com.api.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.api.backend.model.Disponibilidad;
import java.sql.Date;
import java.sql.Time;


@Repository
public interface DisponibilidadRepository extends JpaRepository<Disponibilidad, Integer>{
    
    @Query("SELECT d FROM Disponibilidad d WHERE d.fDiadisponibilidad = :fDiadisponibilidad AND d.fHorainiciodisponibilidad = :fHorainiciodisponibilidad")
    public Disponibilidad findByAvailability(@Param("fDiadisponibilidad") Date fDiadisponibilidad, @Param("fHorainiciodisponibilidad") Time fHorainiciodisponibilidad);
}
