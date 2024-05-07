package com.api.backend.model;

import jakarta.persistence.Entity;
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
    
    private int kidrecurso;
    private String nnombrerecurso;
    private String ndescripcionrecurso;
    private int kidtipoRecurso;
    private int nunidades;

}
