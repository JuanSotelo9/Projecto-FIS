const api = axios.create({
    baseURL: 'http://localhost:8080'
})
api.interceptors.request.use(config => {
    config.headers.Authorization = `Bearer ${token}`;
    return config;
}, error => {
    return Promise.reject(error);
});   

const selectElement = document.getElementById('select2');
const idreservaparaenviar = localStorage.getItem('idreservaparaenviar');
const token = localStorage.getItem('token');

// Función para capturar el valor seleccionado
function captureValue() {
    const calificacionapi = selectElement.value;
    const x10 = parseInt(calificacionapi,0)
    console.log(typeof x10)
    console.log(typeof calificacionapi)
    console.log( x10)
    console.log( calificacionapi)
}
// Agregar un evento para capturar el valor cuando se cambia la selección
selectElement.addEventListener('change', captureValue);

document.querySelector('.botondecalificar').addEventListener('click', function (e) {
    const calificacionapi = selectElement.value;

    const data = {
        idReserva: idreservaparaenviar,
        calificacion: calificacionapi
    };

    api.post(`/user/calificar`, data)
        .then(function (response){
            console.log(response.data)
            if(response.data=='calificado'){
                alert(`Recurso calificado correctamente`)
            }
            if(response.data=='reserva ya calificada'){
                alert(`Reserva ya calificada`)
            }
            if(response.data=='valor invalido'){
                alert(`Valor invalido`)
            }
            if(response.data=='reserva no ha finalizado'){
                alert(`Reserva no ha finalizado`)
            }
            if(response.data=='reserva no existe'){
                alert(`Reserva no existe`)
            }
        
        })
        .catch(function (error) {
            console.error("Error en la petición: ", error);
        });
   
})