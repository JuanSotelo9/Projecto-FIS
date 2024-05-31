package com.api.backend.service;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.stereotype.Service;

import com.api.backend.model.Reserva;
import com.api.backend.model.ReservarRequest;
import com.api.backend.repository.ReservaRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReservaService {
    
    private final ReservaRepository reservaRepository;
    private static final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");

    public boolean reservarRecurso(ReservarRequest request){
        Reserva reserva = new Reserva();
        reserva.setKIdreserva(this.generarId());
        reserva.setFFechareserva(request.getDia());
        reserva.setFHorafinalreserva(request.getHoraFinal());
        reserva.setFHorainicioreserva(request.getHoraInicio());
        reserva.setNEstadoreserva("Reservado");
        reserva.setKIdusuario(request.getIdUsuario());
        reserva.setKIdrecurso(request.getIdRecurso());
        try {
            reservaRepository.save(reserva);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    
    private String generarId(){
        LocalDateTime now = LocalDateTime.now();
        return now.format(formatter);
    }

    public List<Reserva> getReservas(Long idUser){
        return reservaRepository.findBykIdusuario(idUser);
    }
}
