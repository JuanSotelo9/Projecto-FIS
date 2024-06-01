package com.api.backend.service;

import java.sql.Date;
import java.sql.Time;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.api.backend.model.Disponibilidad;
import com.api.backend.model.DisponibilidadRequest;
import com.api.backend.model.Poseer;
import com.api.backend.model.PoseerId;
import com.api.backend.model.Recurso;
import com.api.backend.repository.DisponibilidadRepository;
import com.api.backend.repository.PoseerRepository;
import com.api.backend.repository.RecursoRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RecursoService {
    
    private final RecursoRepository recursoRepository;
    private final DisponibilidadRepository disponibilidadRepository;
    private final PoseerRepository poseerRepository;

    public Optional<Recurso> getRecurso(int id){
        return recursoRepository.findById(id);
    }

    public List<Recurso> getRecursos(){
        return recursoRepository.findAll();
    }

    public boolean saveRecurso(Recurso recurso){
        return recursoRepository.save(recurso) != null;    
    }

    public boolean deleteRecurso(Recurso recurso){
        if(recursoRepository.existsById(recurso.getKIdrecurso())){
            recursoRepository.delete(recurso);
            return true;
        }else{
            return false;
        }
    }

    public boolean consultarDisponibilidad(DisponibilidadRequest request){
        Disponibilidad disponibilidad = disponibilidadRepository.findByAvailability(request.getDiaDisponibilidad(), request.getHoraInicio());
        return disponibilidad != null && poseerRepository.consultarDisponibilidad(request.getIdRecurso(), disponibilidad.getKIddisponibilidad()) != null;
    }

    public int getIdDisponibilidad(Date dia, Time horaInicio){
        return disponibilidadRepository.findByAvailability(dia, horaInicio).getKIddisponibilidad();
    }

    public void crearRecursoDisponibilidad(int idRecurso, int idDisponibilidad){
        poseerRepository.save(new Poseer(new PoseerId(idRecurso, idDisponibilidad)));
    }

    @Transactional
    public void deleteDisponibilidad(int idRecurso, Date dia, Time horaInicio){
        Disponibilidad disponibilidad = disponibilidadRepository.findByAvailability(dia, horaInicio);
        poseerRepository.deleteDisponibilidad(idRecurso, disponibilidad.getKIddisponibilidad());
    }
}
