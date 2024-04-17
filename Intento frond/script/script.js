function mover() {
    // Ocultar el botón
    document.getElementById('btnInicioSesion').style.opacity = '0';

    // Agregar la clase de animación al contenedor
    document.querySelector('.derecha').classList.add('anima-desplazar');
    document.getElementById('btnInicioSesion').classList.add('anima-desplazar');

    setTimeout(function() {
        // Mostrar los botones "Iniciar sesión" y "Registrarse"
        document.getElementById('Iniciar').style.opacity = '1';
        document.getElementById('Registrar').style.opacity = '1';
    }, 2000);
}
document.getElementById('btnInicioSesion').addEventListener('click', mover);

function intentoiniciar() {
    window.location.href = '#modal2';
}
document.getElementById('Iniciar').addEventListener('click', intentoiniciar);

function intentoregistrar() {
    window.location.href = '#modal';
}
document.getElementById('Registrar').addEventListener('click', intentoregistrar);