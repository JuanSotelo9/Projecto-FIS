package com.api.backend.model;

import java.sql.Date;
import java.sql.Time;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReservarRequest {
    Time horaInicio;
    Time horaFinal;
    Date dia;
    Long idUsuario;
    int idRecurso;
}
