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
        document.getElementById('MisionVision').style.opacity = '1';
        document.getElementById('regresar').style.opacity = '1';
        document.getElementById('Iniciar').style.pointerEvents = 'auto';
        document.getElementById('Registrar').style.pointerEvents = 'auto';
        document.getElementById('regresar').style.pointerEvents = 'auto';
    }, 2000);
}
document.getElementById('btnInicioSesion').addEventListener('click', mover);


// Acion de los botones registrar e iniciar sesión
function intentoiniciar() {
    window.location.href = '#modal2';
}
document.getElementById('Iniciar').addEventListener('click', intentoiniciar);

function intentoregistrar() {
    window.location.href = '#modal';
}
document.getElementById('Registrar').addEventListener('click', intentoregistrar);

function intentoregresar() {
    window.location.href = 'index.html';
}
document.getElementById('regresar').addEventListener('click', intentoregresar);

// Animacion de cambio de texto
window.onload = function() {
    var missionText = "<strong>Misión:</strong> <br> La Universidad Distrital Francisco José de Caldas es un espacio social y una organización institucional, ente autónomo del orden distrital, que tiene entre sus finalidades la formación de profesionales especializados y de ciudadanos activos; la producción y reproducción del conocimiento científico, además de la innovación tecnológica y la creación artística. Impulsa el diálogo de saberes y promueve una pedagogía, capaz de animar la reflexión y la curiosidad de los estudiantes; además, fomenta un espíritu crítico en la búsqueda de verdades abiertas; en la promoción de la ciencia y la creación; asimismo, de la ciudadanía y la democracia; y alienta la deliberación, fundada en la argumentación y en el diálogo razonado.";
    var visionText = "<strong>Visión:</strong> <br> Para el 2030 la Universidad Distrital Francisco José de Caldas será reconocida, nacional e internacionalmente, como una institución de alta calidad en la formación de ciudadanos responsables y profesionales del mejor nivel, en la producción de conocimiento científico, artístico y de innovación tecnológica; propósitos que desplegará en los campos de la docencia, la investigación y la extensión.";
    var container = document.getElementById("ContenedorPoliticadecalidad");
    var isMission = true;
    setInterval(function() {
        if (isMission) {
            container.innerHTML = "<div id='Politicadecalidad' class='Politicadecalidad'>" + visionText + "</div>";
            isMission = false;
        } else {
            container.innerHTML = "<div id='Politicadecalidad' class='Politicadecalidad'>" + missionText + "</div>";
            isMission = true;
        }
    }, 120000);
};
