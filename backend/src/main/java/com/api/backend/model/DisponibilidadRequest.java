package com.api.backend.model;

import java.sql.Date;
import java.sql.Time;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DisponibilidadRequest {
    
    Date diaDisponibilidad;
    Time horaInicio;
    Time horaFinal;
    int idRecurso;
}
