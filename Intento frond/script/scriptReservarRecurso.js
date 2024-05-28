// Rangos horarios según la fecha
document.getElementById('fecha').addEventListener('change', function() {
    const fechaInput = document.getElementById('fecha').value;
    const horariosSelect = document.getElementById('horarios');

    if (fechaInput) {
        const fecha = new Date(fechaInput);
        const diaSemana = fecha.getUTCDay();
        let horarios = [];

        if (diaSemana >= 1 && diaSemana <= 5) {
            // Lunes a viernes, 8am - 4pm (2 horas por intervalo)
            for (let i = 8; i < 16; i += 2) {
                horarios.push(`${i}:00 - ${i + 2}:00`);
            }
        } else if (diaSemana === 6) {
            // Sábado, 8am - 12pm (2 horas por intervalo)
            for (let i = 8; i < 12; i += 2) {
                horarios.push(`${i}:00 - ${i + 2}:00`);
            }
        }

        // Limpiar opciones previas
        horariosSelect.innerHTML = '<option value="">Seleccionar horario</option>';

        if (horarios.length > 0) {
            horarios.forEach(horario => {
                const option = document.createElement('option');
                option.value = horario;
                option.textContent = horario;
                horariosSelect.appendChild(option);
            });
            horariosSelect.disabled = false;
        } else {
            horariosSelect.disabled = true;
        }
    } else {
        horariosSelect.innerHTML = '<option value="">Seleccionar horario</option>';
        horariosSelect.disabled = true;
    }
});

// Dejar seleccionar horario una vez se haya seleccionado fecha
document.getElementById('horarios').addEventListener('change', function() {
    const horariosSelect = document.getElementById('horarios');
    const reservarButton = document.getElementById('reservar');

    if (horariosSelect.value) {
        reservarButton.disabled = false;
    } else {
        reservarButton.disabled = true;
    }
});

// Dar click en el boton consultar
document.getElementById('consultar').addEventListener('click', function() {
    const fechaInput = document.getElementById('fecha').value;
    const horariosSelect = document.getElementById('horarios').value;

    if (fechaInput && horariosSelect) {
        alert(`Fecha: ${fechaInput}\nHorario: ${horariosSelect}`);
    } else {
        alert('Por favor, selecciona una fecha y un horario.');
    }
});

// Limpiar campo de fecha al cargar la página
window.addEventListener('load', function() {
    document.getElementById('fecha').value = "";
});
