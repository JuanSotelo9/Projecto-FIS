const hamMenu = document.querySelector(".ham-menu");

const offScreenMenu = document.querySelector(".off-screen-menu");

hamMenu.addEventListener("click", () => {
  hamMenu.classList.toggle("active");
  offScreenMenu.classList.toggle("active");
});

const api = axios.create({
  baseURL: 'http://localhost:8080'
});

const userId = localStorage.getItem('userId');
const token = localStorage.getItem('token');
let nombreRecurso;
console.log(userId, token);


document.addEventListener('DOMContentLoaded', function() {  
  api.get(`/user/${userId}`, {
      headers: {
          'Authorization': `Bearer ${token}`
      }
  })
  .then(function(response) {
      const userData = response.data;
      // Actualizar los campos en el formulario con los datos del usuario
      document.getElementById('nombreCompleto').value = userData.nombre;
      document.getElementById('usuario').value = userData.usuario;
      document.getElementById('correo').value = userData.email;

      Histo = response.data.historial
      
      const tableBody = document.querySelector('.table-body');
      tableBody.innerHTML = ''; // Limpiar resultados anteriores

      let flag = 0;
      Histo.forEach(elemento => {
          const row = document.createElement('tr');

          const idCell = document.createElement('td');
          idCell.textContent = elemento.kidreserva;
          row.appendChild(idCell);

          let idrecurso = Histo[flag].kidrecurso;
          flag += 1;
          console.log(idrecurso);
          
          nombreRecurso = obtenerNombre(idrecurso);
          console.log("Desp", nombreRecurso);

          const nombreCell = document.createElement('td');
          nombreCell.textContent = "No";
          row.appendChild(nombreCell);

          const fechaCell = document.createElement('td');
          fechaCell.textContent = elemento.ffechareserva;
          row.appendChild(fechaCell);

          const horaICell = document.createElement('td');
          horaICell.textContent = elemento.fhorainicioreserva;
          row.appendChild(horaICell);

          const horaFCell = document.createElement('td');
          horaFCell.textContent = elemento.fhorafinalreserva;
          row.appendChild(horaFCell);

          const estadoCell = document.createElement('td');
          estadoCell.textContent = elemento.nestadoreserva;
          row.appendChild(estadoCell);

          const opcionCell = document.createElement('td');
          const calificarButton = document.createElement('button');
          calificarButton.textContent = 'Calificar';
          calificarButton.addEventListener('click', () => calificar(elemento.kidrecurso));
          opcionCell.appendChild(calificarButton);
          row.appendChild(opcionCell);

          tableBody.appendChild(row);
      });
  })
  .catch(function(error) {
      console.error('Error al obtener los datos del usuario:', error);
  })
  .finally(function() {
      console.log('Petición a la API completada.');
  });
});


function obtenerNombre(idrecurso) {
  api.get(`/recursos/${idrecurso}`, {
    headers: {
      'Authorization': `Bearer ${token}`
    }
  })
  .then(function(response) {
    let nombreRecurso1 = response.data.nnombrerecurso;
    console.log('Dentro: ', nombreRecurso1);
    return nombreRecurso1;
  })
  .catch(function(error) {
    console.error('Error al obtener los datos del recurso:', error);
  });
}

function calificar(idRecurso) {
  window.location.href = `calificar.html?id=${idRecurso}`;
}


document.getElementById('cerrarsesionsiosi').addEventListener('click', function() {
  // Borrar información de la sesión
  sessionStorage.clear();
  localStorage.clear();
  
  // Redirigir al usuario fuera de la sesión
  window.location.href = 'index.html';
  
  // Agregar una entrada al historial para prevenir regresar
  window.history.pushState(null, null, window.location.href);
});

// Función para mostrar el mensaje de error
function showError() {
  const errorMessage = document.createElement('div');
  errorMessage.id = 'errorMessage';
  errorMessage.textContent = 'No es posible regresar. Error';
  document.body.appendChild(errorMessage);
  errorMessage.style.display = 'block';
}

// Escuchar el evento popstate para interceptar la navegación hacia atrás
window.addEventListener('popstate', function(event) {
  showError();
  window.history.pushState(null, null, window.location.href);
});