package com.api.backend.model;


import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserResponse {
    
    Long id;
    String nombre;
    String usuario;
    String email;
    List<Reserva> historial;
}
