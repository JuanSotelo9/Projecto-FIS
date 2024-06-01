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
import com.api.backend.repository.ReservaRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RecursoService {
    
    private final RecursoRepository recursoRepository;
    private final DisponibilidadRepository disponibilidadRepository;
    private final PoseerRepository poseerRepository;
    private final ReservaRepository reservaRepository;

    public Optional<Recurso> getRecurso(int id){
        Optional<Recurso> recurso = recursoRepository.findById(id);
        if(recurso.isPresent()){
            recurso.get().setCalificacion(calificacionPromedio(id));
            return recurso;
        }else{
            return recurso;
        }
        
    }

    public List<Recurso> getRecursos(){
        List<Recurso> recursos = recursoRepository.findAll();
        if(recursos.isEmpty()){
            return recursos;
        }else{
            for(Recurso recurso : recursos){
                recurso.setCalificacion(calificacionPromedio(recurso.getKIdrecurso()));
            }
            return recursos;
        }
        
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

    public float calificacionPromedio(int idRecurso){
        List<Integer> calificaciones = reservaRepository.findCalificacion(idRecurso, "finalizado");
        float promedio = 0;
        if(calificaciones.isEmpty()){
            return promedio;
        }else{
            for(int numero : calificaciones){
                promedio += numero;
            }
            promedio /= calificaciones.size();
            String format = String.format("%.1f", promedio);
            format = format.replace(",", ".");
            return Float.parseFloat(format);
        }
    }
}
