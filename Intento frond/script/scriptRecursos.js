const api = axios.create({
    baseURL: 'http://localhost:8080'
});

const token = localStorage.getItem('token');
let opcion = localStorage.getItem('idTipo');

// Se ejecuta al cargar la página
document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('search-input').value = '';
    obtenerRecursos();
});

// Trae y muestra los recursos en la tabla
function obtenerRecursos(nombreRecurso = '') {
    let url;
    if(opcion == 0){
        url = '/recursos';
    }else{
        url = `/recursos/tipo/${opcion}`
    }
    api.get(url, {
        headers: {
            'Authorization': `Bearer ${token}`
        }
    })
    .then(function (response){
        const recursos = response.data;

        const tableBody = document.querySelector('.table-body');
        tableBody.innerHTML = ''; // Limpiar resultados anteriores
        let recursoEncontrado = false;

        recursos.forEach(recurso => {
            if(nombreRecurso && !recurso.nnombrerecurso.toLowerCase().includes(nombreRecurso.toLowerCase())) {
                return; // Salta este recurso si no coincide con el nombreRecurso
            }
            recursoEncontrado = true;
            const row = document.createElement('tr');

            const idCell = document.createElement('td');
            idCell.textContent = recurso.kidrecurso;
            row.appendChild(idCell);

            const nombreCell = document.createElement('td');
            nombreCell.textContent = recurso.nnombrerecurso;
            row.appendChild(nombreCell);

            const descripcionCell = document.createElement('td');
            descripcionCell.textContent = recurso.ndescripcionrecurso;
            row.appendChild(descripcionCell);

            const opcionCell = document.createElement('td');
            const reservarButton = document.createElement('button');
            reservarButton.textContent = 'Reservar';
            reservarButton.addEventListener('click', () => reservar(recurso.kidrecurso));
            opcionCell.appendChild(reservarButton);
            row.appendChild(opcionCell);

            tableBody.appendChild(row);
        });

        if (!recursoEncontrado) {
            obtenerRecursos();
            alert('No se encontraron recursos con ese nombre');
        }
    })
    .catch(function (error){
        console.error("Error al obtener recursos: ", error)
    });
}

// Envia a la pagina de reservar recursos
function reservar(idRecurso) {
    window.location.href = `reservarRecurso.html?id=${idRecurso}`;
}

// Click en buscar
function buscar() {
    const inputText = document.getElementById('search-input');
    const input = inputText.value;
    inputText.value = '';
    if (input.trim() !== '') {
        obtenerRecursos(input);
    }
}

function traerTodo() {
    opcion = 0;
    obtenerRecursos();
}
