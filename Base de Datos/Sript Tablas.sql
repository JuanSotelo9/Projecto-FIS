/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 16.1 		*/
/*  Created On : 18-abr.-2024 10:22:02 p. m. 				*/
/*  DBMS       : MySql 						*/
/* ---------------------------------------------------- */

SET FOREIGN_KEY_CHECKS=0
; 
/* Drop Tables */

DROP TABLE IF EXISTS `Administrador` CASCADE
;

DROP TABLE IF EXISTS `Asignar` CASCADE
;

DROP TABLE IF EXISTS `Calificacion_Recurso` CASCADE
;

DROP TABLE IF EXISTS `Calificar_Reserva` CASCADE
;

DROP TABLE IF EXISTS `Caracteristicas` CASCADE
;

DROP TABLE IF EXISTS `Disponibilidad` CASCADE
;

DROP TABLE IF EXISTS `Gestionar` CASCADE
;

DROP TABLE IF EXISTS `Horario_Laboral` CASCADE
;

DROP TABLE IF EXISTS `Poseer` CASCADE
;

DROP TABLE IF EXISTS `Recurso` CASCADE
;

DROP TABLE IF EXISTS `Reserva` CASCADE
;

DROP TABLE IF EXISTS `Ser_Caracterisado` CASCADE
;

DROP TABLE IF EXISTS `Tener` CASCADE
;

DROP TABLE IF EXISTS `Tipo_De_Recurso` CASCADE
;

DROP TABLE IF EXISTS `Usuario` CASCADE
;

/* Create Tables */

CREATE TABLE `Administrador`
(
	`k_idUsuario` BIGINT NOT NULL,
	CONSTRAINT `PK_Administrador` PRIMARY KEY (`k_idUsuario` ASC)
)

;

CREATE TABLE `Asignar`
(
	`k_idReserva` BIGINT NOT NULL,
	`k_idRecurso` INT NOT NULL,
	`f_hora` TIME NOT NULL,
	CONSTRAINT `PK_Asignar` PRIMARY KEY (`k_idReserva` ASC, `k_idRecurso` ASC)
)

;

CREATE TABLE `Calificacion_Recurso`
(
	`k_idCalificacion` INT NOT NULL,
	`n_calificacion` SMALLINT NOT NULL,
	`k_idUsuario` BIGINT NOT NULL,
	`k_idRecurso` INT NOT NULL,
	CONSTRAINT `PK_Calificacion` PRIMARY KEY (`k_idCalificacion` ASC)
)

;

CREATE TABLE `Calificar_Reserva`
(
	`k_idCalificarReserva` INT NOT NULL,
	`n_calificacion` SMALLINT NOT NULL,
	`k_idUsuario` BIGINT NOT NULL,
	`k_idReserva` BIGINT NOT NULL,
	CONSTRAINT `PK_Calificar_Reserva` PRIMARY KEY (`k_idCalificarReserva` ASC)
)

;

CREATE TABLE `Caracteristicas`
(
	`k_idCaracteristicas` INT NOT NULL,
	`n_descripcionCaracteristica` VARCHAR(255) NOT NULL,
	CONSTRAINT `PK_Caracteristicas` PRIMARY KEY (`k_idCaracteristicas` ASC)
)

;

CREATE TABLE `Disponibilidad`
(
	`k_idDisponibilidad` INT NOT NULL,
	`f_horaInicioDisponibilidad` TIME NOT NULL,
	`f_horaFinalDisponibilidad` TIME NOT NULL,
	`f_dia` DATE NOT NULL,
	CONSTRAINT `PK_Disponibilidad` PRIMARY KEY (`k_idDisponibilidad` ASC)
)

;

CREATE TABLE `Gestionar`
(
	`k_idUsuario` BIGINT NOT NULL,
	`k_idTipoRecurso` INT NOT NULL,
	CONSTRAINT `PK_Gestionar` PRIMARY KEY (`k_idUsuario` ASC, `k_idTipoRecurso` ASC)
)

;

CREATE TABLE `Horario_Laboral`
(
	`k_idHorarioLaboral` INT NOT NULL,
	`f_horaInicio` TIME NOT NULL,
	`f_horaFinal` TIME NOT NULL,
	`f_dia` DATE NOT NULL,
	CONSTRAINT `PK_Horario_Laboral` PRIMARY KEY (`k_idHorarioLaboral` ASC)
)

;

CREATE TABLE `Poseer`
(
	`k_idRecurso` INT NOT NULL,
	`k_idDisponibilidad` INT NOT NULL,
	CONSTRAINT `PK_Poseer` PRIMARY KEY (`k_idRecurso` ASC, `k_idDisponibilidad` ASC)
)

;

CREATE TABLE `Recurso`
(
	`k_idRecurso` INT NOT NULL,
	`n_nombreRecurso` VARCHAR(50) NOT NULL,
	`n_descripcionRecurso` VARCHAR(255) NOT NULL,
	`k_idTipoRecurso` INT NOT NULL,
	CONSTRAINT `PK_Recurso` PRIMARY KEY (`k_idRecurso` ASC)
)

;

CREATE TABLE `Reserva`
(
	`k_idReserva` BIGINT NOT NULL,
	`f_horaInicioReserva` TIME NOT NULL,
	`f_horaFinalReserva` TIME NOT NULL,
	`f_fechaReserva` DATE NOT NULL,
	`n_estadoReserva` VARCHAR(15) NOT NULL,
	`k_IDusuario` BIGINT NOT NULL,
	CONSTRAINT `PK_Reserva` PRIMARY KEY (`k_idReserva` ASC)
)

;

CREATE TABLE `Ser_Caracterisado`
(
	`k_idRecurso` INT NOT NULL,
	`k_idCaracteristicas` INT NOT NULL,
	CONSTRAINT `PK_Ser_Caracterisado` PRIMARY KEY (`k_idRecurso` ASC, `k_idCaracteristicas` ASC)
)

;

CREATE TABLE `Tener`
(
	`k_idHorarioLaboral` INT NOT NULL,
	`k_IDusuario` BIGINT NOT NULL,
	`f_horaInicio` TIME NOT NULL,
	`f_horaFinal` TIME NOT NULL,
	`f_dia` DATE NOT NULL,
	CONSTRAINT `PK_Poseer` PRIMARY KEY (`k_idHorarioLaboral` ASC, `k_idUsuario` ASC)
)

;

CREATE TABLE `Tipo_De_Recurso`
(
	`k_idTipoRecurso` INT NOT NULL,
	`n_nombreTipoRecurso` VARCHAR(50) NOT NULL,
	`n_descripcionTipoRecurso` VARCHAR(255) NOT NULL,
	CONSTRAINT `PK_Tipo_De_Recurso` PRIMARY KEY (`k_idTipoRecurso` ASC)
)

;

CREATE TABLE `Usuario`
(
	`k_IDusuario` BIGINT NOT NULL,
	`n_nombre` VARCHAR(50) NOT NULL,
	`n_apellido` VARCHAR(50) NOT NULL,
	`n_usuario` VARCHAR(50) NOT NULL,
	`n_eMail` VARCHAR(50) NOT NULL,
	`n_contraseña` VARCHAR(50) NOT NULL,
	CONSTRAINT `PK_Usuario` PRIMARY KEY (`k_IDusuario` ASC)
)
COMMENT = 'persona que interactua con la aplicacion'

;

/* Create Foreign Key Constraints */

ALTER TABLE `Administrador` 
 ADD CONSTRAINT `FK_Administrador_Usuario`
	FOREIGN KEY (`k_IDusuario`) REFERENCES `Usuario` (`k_IDusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Asignar` 
 ADD CONSTRAINT `FK_Asignar_Recurso`
	FOREIGN KEY (`k_idRecurso`) REFERENCES `Recurso` (`k_idRecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Asignar` 
 ADD CONSTRAINT `FK_Asignar_Reserva`
	FOREIGN KEY (`k_idReserva`) REFERENCES `Reserva` (`k_idReserva`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Calificacion_Recurso` 
 ADD CONSTRAINT `FK_Calificacion_Recurso_Recurso`
	FOREIGN KEY (`k_idRecurso`) REFERENCES `Recurso` (`k_idRecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Calificacion_Recurso` 
 ADD CONSTRAINT `FK_Calificacion_Recurso_Usuario`
	FOREIGN KEY (`k_IDusuario`) REFERENCES `Usuario` (`k_IDusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Calificar_Reserva` 
 ADD CONSTRAINT `FK_Calificar_Resrva_Reserva`
	FOREIGN KEY (`k_idReserva`) REFERENCES `Reserva` (`k_idReserva`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Calificar_Reserva` 
 ADD CONSTRAINT `FK_Calificar_Resrva_Usuario`
	FOREIGN KEY (`k_IDusuario`) REFERENCES `Usuario` (`k_IDusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Gestionar` 
 ADD CONSTRAINT `FK_Gestionar_Administrador`
	FOREIGN KEY (`k_IDusuario`) REFERENCES `Administrador` (`k_IDusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Gestionar` 
 ADD CONSTRAINT `FK_Gestionar_Tipo_De_Recurso`
	FOREIGN KEY (`k_idTipoRecurso`) REFERENCES `Tipo_De_Recurso` (`k_idTipoRecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Poseer` 
 ADD CONSTRAINT `FK_Poseer_Disponibilidad`
	FOREIGN KEY (`k_idDisponibilidad`) REFERENCES `Disponibilidad` (`k_idDisponibilidad`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Poseer` 
 ADD CONSTRAINT `FK_Poseer_Recurso`
	FOREIGN KEY (`k_idRecurso`) REFERENCES `Recurso` (`k_idRecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Recurso` 
 ADD CONSTRAINT `FK_Recurso_Tipo_De_Recurso`
	FOREIGN KEY (`k_idTipoRecurso`) REFERENCES `Tipo_De_Recurso` (`k_idTipoRecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Reserva` 
 ADD CONSTRAINT `FK_Reserva_Usuario`
	FOREIGN KEY (`k_IDusuario`) REFERENCES `Usuario` (`k_IDusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Ser_Caracterisado` 
 ADD CONSTRAINT `FK_Ser_Caracterisado_Caracteristicas`
	FOREIGN KEY (`k_idCaracteristicas`) REFERENCES `Caracteristicas` (`k_idCaracteristicas`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Ser_Caracterisado` 
 ADD CONSTRAINT `FK_Ser_Caracterisado_Recurso`
	FOREIGN KEY (`k_idRecurso`) REFERENCES `Recurso` (`k_idRecurso`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Tener` 
 ADD CONSTRAINT `FK_Poseer_Administrador`
	FOREIGN KEY (`k_IDusuario`) REFERENCES `Administrador` (`k_IDusuario`) ON DELETE Restrict ON UPDATE Restrict
;

ALTER TABLE `Tener` 
 ADD CONSTRAINT `FK_Poseer_Horario_Laboral`
	FOREIGN KEY (`k_idHorarioLaboral`) REFERENCES `Horario_Laboral` (`k_idHorarioLaboral`) ON DELETE Restrict ON UPDATE Restrict
;

SET FOREIGN_KEY_CHECKS=1
; 
