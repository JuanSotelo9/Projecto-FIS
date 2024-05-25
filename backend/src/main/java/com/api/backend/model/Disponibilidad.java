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
@Table(name = "disponibilidad")
public class Disponibilidad {
    
    @Id
    int kIddisponibilidad;

    Time fHorainiciodisponibilidad;
    Time fHorafinaldisponibilidad;
    Date fDiadisponibilidad;
}
