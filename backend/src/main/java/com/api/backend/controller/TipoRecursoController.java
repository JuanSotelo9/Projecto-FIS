package com.api.backend.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.api.backend.model.TipoRecurso;
import com.api.backend.service.TipoRecursoService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/tipos")
public class TipoRecursoController {
    
    private final TipoRecursoService tipoRecursoService;

    @GetMapping
    public List<TipoRecurso> getTiposRecursos(){
        return tipoRecursoService.getTiposRecurso();
    }

    @GetMapping("/{id}")
    public Optional<TipoRecurso> getTipoRecurso(@PathVariable int id){
        return tipoRecursoService.getTipoRecurso(id);
    }

}
