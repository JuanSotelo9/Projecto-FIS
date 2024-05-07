package com.api.backend.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "tipoderecurso")
public class TipoRecurso {
    
    private int kidtipoRecurso;
    private String nnombretiporecurso;
    private String ndescripciontiporecurso;
}
