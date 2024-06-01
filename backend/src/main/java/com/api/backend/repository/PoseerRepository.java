package com.api.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.api.backend.model.Poseer;
import com.api.backend.model.PoseerId;

@Repository
public interface PoseerRepository extends JpaRepository<Poseer, PoseerId>{
    @Query("SELECT r from Poseer r WHERE r.poseerId.kIdrecurso = :kIdrecurso AND r.poseerId.kIddisponibilidad = :kIddisponibilidad")
    public Poseer consultarDisponibilidad(@Param("kIdrecurso") int kIdrecurso, @Param("kIddisponibilidad") int kIddisponibilidad);

    @Modifying
    @Query("DELETE from Poseer r WHERE r.poseerId.kIdrecurso = :kIdrecurso AND r.poseerId.kIddisponibilidad = :kIddisponibilidad")
    public void deleteDisponibilidad(@Param("kIdrecurso") int kIdrecurso, @Param("kIddisponibilidad") int kIddisponibilidad);

    @Query("SELECT r from Poseer r WHERE r.poseerId.kIddisponibilidad = :kIddisponibilidad")
    public List<Poseer> findBykIddisponibilidad(@Param("kIddisponibilidad") int kIddisponibilidad);
}
