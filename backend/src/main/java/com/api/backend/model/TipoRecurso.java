package com.api.backend.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "tipoDeRecurso")
public class TipoRecurso {
    
    @Id
    private int kIdtipoRecurso;
    private String nNombretiporecurso;
    private String nDescripciontiporecurso;
}
