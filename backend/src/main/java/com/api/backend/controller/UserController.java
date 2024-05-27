package com.api.backend.controller;


import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.api.backend.model.Disponibilidad;
import com.api.backend.model.DisponibilidadRequest;
import com.api.backend.model.ReservarRequest;
import com.api.backend.model.User;
import com.api.backend.service.RecursoService;
import com.api.backend.service.ReservaService;
import com.api.backend.service.UserService;

import lombok.RequiredArgsConstructor;

@RestController
@RequiredArgsConstructor
@RequestMapping("/user")
public class UserController {

    
    private final UserService userService;
    private final RecursoService recursoService;
    private final ReservaService reservaService;

    @GetMapping("/{id}")
    public Optional<User> getUser(@RequestParam Long id){
        return userService.getUser(id);
    }

    @GetMapping("/disponibilidad")
    public boolean getDisponibilidad(@RequestBody DisponibilidadRequest request){
        return recursoService.consultarDisponibilidad(request);
    }

    @PostMapping("/reservar")
    public boolean reservarRecurso(@RequestBody ReservarRequest request){
        if(recursoService.consultarDisponibilidad(new DisponibilidadRequest(request.getDia(), request.getHoraInicio(), request.getIdRecurso()))){
            if(reservaService.reservarRecurso(request)){
                recursoService.deleteDisponibilidad(request.getIdRecurso(), request.getDia(), request.getHoraInicio());
                return true;
            }else{
                return false;
            }
        }else{
            return false;
        }
    }
}
