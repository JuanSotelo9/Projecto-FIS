INSERT INTO `projectfis`.`tipo_de_recurso` (`k_idtiporecurso`, `n_nombretiporecurso`, `n_descripciontiporecurso`, `n_imagen`) VALUES ('1', 'Laboratorio', 'Laboratorio', 'https://www.ucentral.edu.co/sites/default/files/inline-images/recorrido-laboratorios-universidad-central.jpg');
INSERT INTO `projectfis`.`tipo_de_recurso` (`k_idtiporecurso`, `n_nombretiporecurso`, `n_descripciontiporecurso`, `n_imagen`) VALUES ('2', 'Aula', 'Aula', 'https://st3.depositphotos.com/29384342/33698/i/450/depositphotos_336981024-stock-photo-empty-modern-classrom-teacher-desk.jpg');
INSERT INTO `projectfis`.`tipo_de_recurso` (`k_idtiporecurso`, `n_nombretiporecurso`, `n_descripciontiporecurso`, `n_imagen`) VALUES ('3', 'Tablet', 'Tablet', 'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2021/07/lenovo-tab-p11-pro-2424527.jpg');
INSERT INTO `projectfis`.`tipo_de_recurso` (`k_idtiporecurso`, `n_nombretiporecurso`, `n_descripciontiporecurso`, `n_imagen`) VALUES ('4', 'Portatil', 'Portatil', 'https://megacomputer.com.co/wp-content/uploads/2023/11/PORTATIL-HP-14-EM0014LA-4.jpg');
INSERT INTO `projectfis`.`tipo_de_recurso` (`k_idtiporecurso`, `n_nombretiporecurso`, `n_descripciontiporecurso`, `n_imagen`) VALUES ('5', 'Video Beam', 'Video Beam', 'https://mainframeltda.com/wp-content/uploads/2019/04/Que_es_un_proyector_de_video-1100x825.jpg');
INSERT INTO `projectfis`.`recurso` (`k_idrecurso`, `n_nombrerecurso`, `n_descripcionrecurso`, `k_idtiporecurso`) VALUES ('1', 'Laboratorio 501', 'Laboratorio de fisica', '1');
INSERT INTO `projectfis`.`recurso` (`k_idrecurso`, `n_nombrerecurso`, `n_descripcionrecurso`, `k_idtiporecurso`) VALUES ('2', 'Laboratorio de control', 'Laboratorio de control', '1');
INSERT INTO `projectfis`.`recurso` (`k_idrecurso`, `n_nombrerecurso`, `n_descripcionrecurso`, `k_idtiporecurso`) VALUES ('3', 'Salon 204', 'Salon para clases', '2');
INSERT INTO `projectfis`.`recurso` (`k_idrecurso`, `n_nombrerecurso`, `n_descripcionrecurso`, `k_idtiporecurso`) VALUES ('4', 'Salon 307', 'Salon para clases', '2');
INSERT INTO `projectfis`.`recurso` (`k_idrecurso`, `n_nombrerecurso`, `n_descripcionrecurso`, `k_idtiporecurso`) VALUES ('5', 'Sala de informatica 701', 'Sala de informatica', '2');
INSERT INTO `projectfis`.`recurso` (`k_idrecurso`, `n_nombrerecurso`, `n_descripcionrecurso`, `k_idtiporecurso`) VALUES ('6', 'Tablet M45', 'Tablet modelo M45', '3');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('1', '06:00:00', '07:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('2', '07:00:00', '08:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('3', '08:00:00', '09:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('4', '09:00:00', '10:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('5', '10:00:00', '11:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('6', '11:00:00', '12:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('7', '12:00:00', '13:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('8', '13:00:00', '14:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('9', '14:00:00', '15:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('10', '15:00:00', '16:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('11', '16:00:00', '17:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('12', '17:00:00', '18:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('13', '18:00:00', '19:00:00', '2024-06-05');
INSERT INTO `projectfis`.`disponibilidad` (`k_iddisponibilidad`, `f_horainiciodisponibilidad`, `f_horafinaldisponibilidad`, `f_diadisponibilidad`) VALUES ('14', '19:00:00', '20:00:00', '2024-06-05');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '1');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '1');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '1');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '1');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '1');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '1');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '2');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '2');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '2');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '2');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '2');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '2');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '3');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '3');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '3');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '3');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '3');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '3');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '4');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '4');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '4');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '4');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '4');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '4');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '5');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '5');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '5');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '5');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '5');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '5');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '6');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '6');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '6');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '6');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '6');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '6');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '7');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '7');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '7');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '7');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '7');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '7');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '8');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '8');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '8');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '8');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '8');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '8');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '9');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '9');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '9');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '9');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '9');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '9');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '10');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '10');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '10');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '10');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '10');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '10');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '11');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '11');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '11');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '11');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '11');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '11');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '12');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '12');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '12');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '12');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '12');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '12');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '13');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '13');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '13');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '13');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '13');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '13');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('1', '14');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('2', '14');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('3', '14');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('4', '14');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('5', '14');
INSERT INTO `projectfis`.`poseer` (`k_idrecurso`, `k_iddisponibilidad`) VALUES ('6', '14');
