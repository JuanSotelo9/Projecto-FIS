package com.api.backend.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.api.backend.model.TipoRecurso;
import com.api.backend.repository.TipoRecursoRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class TipoRecursoService {
    
    private final TipoRecursoRepository tipoRecursoRepository;

    public Optional<TipoRecurso> getTipoRecurso(int id){
        return tipoRecursoRepository.findById(id);
    }

    public List<TipoRecurso> getTiposRecurso(){
        return tipoRecursoRepository.findAll();
    }

    public boolean saveTipoRecurso(TipoRecurso tipoRecurso){
        return tipoRecursoRepository.save(tipoRecurso) != null;
    }

    public boolean deleteTipoRecurso(TipoRecurso tipoRecurso){
        if(tipoRecursoRepository.existsById(tipoRecurso.getKIdtiporecurso())){
            tipoRecursoRepository.delete(tipoRecurso);
            return true;
        }else{
            return false;
        }
    }
}
