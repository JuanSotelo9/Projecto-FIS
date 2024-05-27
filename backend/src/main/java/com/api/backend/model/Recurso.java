package com.api.backend.model;

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
@Table(name = "recurso")
public class Recurso {
    
    @Id
    int kIdrecurso;
    String nNombrerecurso;
    String nDescripcionrecurso;
    int kIdtiporecurso;

}
