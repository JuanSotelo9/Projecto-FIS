/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 16.1 		*/
/*  Created On : 15-may.-2024 2:36:06 p. m. 				*/
/*  DBMS       : MySql 						*/
/* ---------------------------------------------------- */

SET FOREIGN_KEY_CHECKS=0
; 
/* Drop Tables */

DROP TABLE IF EXISTS `administrador` CASCADE
;

DROP TABLE IF EXISTS `caracteristicas` CASCADE
;

DROP TABLE IF EXISTS `disponibilidad` CASCADE
;

DROP TABLE IF EXISTS `gestionar` CASCADE
;

DROP TABLE IF EXISTS `horario_laboral` CASCADE
;

DROP TABLE IF EXISTS `poseer` CASCADE
;

DROP TABLE IF EXISTS `recurso` CASCADE
;

DROP TABLE IF EXISTS `reserva` CASCADE
;

DROP TABLE IF EXISTS `ser_caracterisado` CASCADE
;

DROP TABLE IF EXISTS `tener` CASCADE
;

DROP TABLE IF EXISTS `tipo_de_recurso` CASCADE
;

DROP TABLE IF EXISTS `usuario` CASCADE
;

/* Create Tables */

CREATE TABLE `administrador`
(
	`k_idusuario` BIGINT NOT NULL,
	CONSTRAINT `PK_Administrador` PRIMARY KEY (`k_idusuario` ASC)
)

;

CREATE TABLE `caracteristicas`
(
	`k_idcaracteristicas` INT NOT NULL AUTO_INCREMENT,
	`n_descripcioncaracteristica` VARCHAR(255) NOT NULL,
	CONSTRAINT `PK_Caracteristicas` PRIMARY KEY (`k_idcaracteristicas` ASC)
)

;

CREATE TABLE `disponibilidad`
(
	`k_iddisponibilidad` INT NOT NULL AUTO_INCREMENT,
	`f_horainiciodisponibilidad` TIME NOT NULL,
	`f_horafinaldisponibilidad` TIME NOT NULL,
	`f_diadisponibilidad` DATE NOT NULL,
	CONSTRAINT `PK_Disponibilidad` PRIMARY KEY (`k_iddisponibilidad` ASC)
)

;

CREATE TABLE `gestionar`
(
	`k_idusuario` BIGINT NOT NULL,
	`k_idtiporecurso` INT NOT NULL,
	CONSTRAINT `PK_Gestionar` PRIMARY KEY (`k_idusuario` ASC, `k_idtiporecurso` ASC)
)

;

CREATE TABLE `horario_laboral`
(
	`k_idhorariolavoral` INT NOT NULL AUTO_INCREMENT,
	`f_horainicio` TIME NOT NULL,
	`f_horafinal` TIME NOT NULL,
	`f_dia` DATE NOT NULL,
	CONSTRAINT `PK_Horario_Laboral` PRIMARY KEY (`k_idhorariolavoral` ASC)
)

;

CREATE TABLE `poseer`
(
	`k_idrecurso` INT NOT NULL,
	`k_iddisponibilidad` INT NOT NULL,
	CONSTRAINT `PK_Poseer` PRIMARY KEY (`k_idrecurso` ASC, `k_iddisponibilidad` ASC)
)

;

CREATE TABLE `recurso`
(
	`k_idrecurso` INT NOT NULL AUTO_INCREMENT,
	`n_nombrerecurso` VARCHAR(50) NOT NULL,
	`n_descripcionrecurso` VARCHAR(255) NOT NULL,
	`k_idtiporecurso` INT NOT NULL,
	CONSTRAINT `PK_Recurso` PRIMARY KEY (`k_idrecurso` ASC)
)

;

CREATE TABLE `reserva`
(
	`k_idreserva` VARCHAR(50) NOT NULL,
	`f_horainicioreserva` TIME NOT NULL,
	`f_horafinalreserva` TIME NOT NULL,
	`f_fechareserva` DATE NOT NULL,
	`n_estadoreserva` VARCHAR(15) NOT NULL,
	`k_idusuario` BIGINT NOT NULL,
    `k_idrecurso` INT NOT NULL,
    `n_calificacion` INT NOT NULL,
	CONSTRAINT `PK_Reserva` PRIMARY KEY (`k_idreserva` ASC)
)

;

CREATE TABLE `ser_caracterisado`
(
	`k_idrecurso` INT NOT NULL,
	`k_idcaracteristicas` INT NOT NULL,
	CONSTRAINT `PK_Ser_Caracterisado` PRIMARY KEY (`k_idrecurso` ASC, `k_idcaracteristicas` ASC)
)

;

CREATE TABLE `tener`
(
	`k_idhorariolavoral` INT NOT NULL,
	`k_idusuario` BIGINT NOT NULL,
	CONSTRAINT `PK_Poseer` PRIMARY KEY (`k_idhorariolavoral` ASC, `k_idusuario` ASC)
)

;

CREATE TABLE `tipo_de_recurso`
(
	`k_idtiporecurso` INT NOT NULL AUTO_INCREMENT,
	`n_nombretiporecurso` VARCHAR(50) NOT NULL,
	`n_descripciontiporecurso` VARCHAR(255) NOT NULL,
	CONSTRAINT `PK_Tipo_De_Recurso` PRIMARY KEY (`k_idtiporecurso` ASC)
)

;

CREATE TABLE `usuario`
(
	`k_idusuario` BIGINT NOT NULL,
	`n_nombre` VARCHAR(50) NOT NULL,
	`n_usuario` VARCHAR(50) NOT NULL,
	`n_email` VARCHAR(50) NOT NULL,
	`n_password` VARCHAR(255) NOT NULL,
	CONSTRAINT `PK_Usuario` PRIMARY KEY (`k_idusuario` ASC)
)
COMMENT = 'persona que interactua con la aplicacion'

;

/* Create Foreign Key Constraints */

ALTER TABLE `administrador` 
 ADD CONSTRAINT `FK_Administrador_Usuario`
	FOREIGN KEY (`k_idusuario`) REFERENCES `usuario` (`k_idusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `gestionar` 
 ADD CONSTRAINT `FK_Gestionar_Administrador`
	FOREIGN KEY (`k_idusuario`) REFERENCES `administrador` (`k_idusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `gestionar` 
 ADD CONSTRAINT `FK_Gestionar_Tipo_De_Recurso`
	FOREIGN KEY (`k_idtiporecurso`) REFERENCES `tipo_de_recurso` (`k_idtiporecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `poseer` 
 ADD CONSTRAINT `FK_Poseer_Disponibilidad`
	FOREIGN KEY (`k_iddisponibilidad`) REFERENCES `disponibilidad` (`k_iddisponibilidad`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `poseer` 
 ADD CONSTRAINT `FK_Poseer_Recurso`
	FOREIGN KEY (`k_idrecurso`) REFERENCES `recurso` (`k_idrecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `recurso` 
 ADD CONSTRAINT `FK_Recurso_Tipo_De_Recurso`
	FOREIGN KEY (`k_idtiporecurso`) REFERENCES `tipo_de_recurso` (`k_idtiporecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `reserva` 
 ADD CONSTRAINT `FK_Reserva_Usuario`
	FOREIGN KEY (`k_idusuario`) REFERENCES `usuario` (`k_idusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `reserva`
	ADD CONSTRAINT `FK_Reserva_Recurso`
		FOREIGN KEY (`k_idrecurso`) REFERENCES `recurso` (`k_idrecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `ser_caracterisado` 
 ADD CONSTRAINT `FK_Ser_Caracterisado_Caracteristicas`
	FOREIGN KEY (`k_idcaracteristicas`) REFERENCES `caracteristicas` (`k_idcaracteristicas`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `ser_caracterisado` 
 ADD CONSTRAINT `FK_Ser_Caracterisado_Recurso`
	FOREIGN KEY (`k_idrecurso`) REFERENCES `recurso` (`k_idrecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `tener` 
 ADD CONSTRAINT `FK_Poseer_Administrador`
	FOREIGN KEY (`k_idusuario`) REFERENCES `administrador` (`k_idusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `tener` 
 ADD CONSTRAINT `FK_Poseer_Horario_Laboral`
	FOREIGN KEY (`k_idhorariolavoral`) REFERENCES `horario_laboral` (`k_idhorariolavoral`) ON DELETE Restrict ON UPDATE Restrict
;

SET FOREIGN_KEY_CHECKS=1
; 
