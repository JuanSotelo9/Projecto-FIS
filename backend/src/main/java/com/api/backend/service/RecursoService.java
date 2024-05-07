package com.api.backend.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.api.backend.model.Recurso;
import com.api.backend.repository.RecursoRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RecursoService {
    
    private final RecursoRepository recursoRepository;

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
        if(recursoRepository.existsById(recurso.getKidrecurso())){
            recursoRepository.delete(recurso);
            return true;
        }else{
            return false;
        }
    }
}
