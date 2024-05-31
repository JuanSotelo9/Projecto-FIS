import api, { setAuthToken } from './axiosConfig.js'

setAuthToken();

const token = await obtenerToken();
console.log('Token:', token);

async function obtenerRecursos() {
    try {
        api.get('/recursos')
        .then(function (response){
            console.log(response.data)
        })
        .catch(function (error){
            console.error("Error en la peticion: ", error)
        });

        /*const response = await axios.get('/recursos');
        const recursos = response.data;
        console.log(recursos);
        
        const tableBody = document.querySelector('.table-body');
        tableBody.innerHTML = ''; // Limpiar resultados anteriores

        recursos.forEach(recurso => {
            const row = document.createElement('tr');

            const idCell = document.createElement('td');
            idCell.textContent = recurso.id;
            row.appendChild(idCell);

            const nombreCell = document.createElement('td');
            nombreCell.textContent = recurso.nombre;
            row.appendChild(nombreCell);

            const descripcionCell = document.createElement('td');
            descripcionCell.textContent = recurso.descripcion;
            row.appendChild(descripcionCell);

            const opcionCell = document.createElement('td');
            const reservarButton = document.createElement('button');
            reservarButton.textContent = 'Reservar';
            reservarButton.addEventListener('click', () => reservar(recurso.id));
            opcionCell.appendChild(reservarButton);
            row.appendChild(opcionCell);

            tableBody.appendChild(row);
        });*/
    } catch (error) {
        console.error('Error al obtener recursos:', error);
    }
}

/*function reservar(idRecurso) {
    window.location.href = "reservarRecurso.html";
}*/

window.addEventListener('DOMContentLoaded', obtenerRecursos);
