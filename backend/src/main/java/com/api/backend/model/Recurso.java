package com.api.backend.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "recurso")
public class Recurso {
    
    @Id
    private int kIdrecurso;
    private String nNombrerecurso;
    private String nDescripcionrecurso;
    private int kIdtipoRecurso;
    private int nUnidades;

}
