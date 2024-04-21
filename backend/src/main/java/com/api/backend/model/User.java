package com.api.backend.model;

import jakarta.persistence.Basic;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "usuario")
public class User {

    @Id
    private Long k_IDusuario;
    
    @Basic
    private String n_nombre;
    private String n_apellido;
    private String n_usuario;
    private String n_email;

    @Basic(fetch = FetchType.LAZY)
    private String n_contraseña;
}
