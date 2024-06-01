package com.api.backend.model;

import java.sql.Date;
import java.sql.Time;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "reserva")
public class Reserva {
    
    @Id
    String kIdreserva;

    Time fHorainicioreserva;
    Time fHorafinalreserva;
    Date fFechareserva;
    String nEstadoreserva;
    Long kIdusuario;
    int kIdrecurso;
    int nCalificacion;
}
