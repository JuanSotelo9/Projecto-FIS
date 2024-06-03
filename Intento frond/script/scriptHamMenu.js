
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
      Histo=response.data.historial
      document.getElementById('id_reserva').textContent = Histo[0].kidreserva;
      idreservaparaenviar=Histo[0].kidreserva
      document.getElementById('fecha_reserva').textContent = Histo[0].ffechareserva;
      document.getElementById('hora_inicio').textContent = Histo[0].fhorainicioreserva;
      document.getElementById('hora_fin').textContent = Histo[0].fhorafinalreserva;
      document.getElementById('estado_reserva').textContent = Histo[0].nestadoreserva;
      idrecurso=Histo[0].kidrecurso
      console.log(Histo[0].ffechareserva)
      localStorage.setItem('idreservaparaenviar', idreservaparaenviar);
      api.get(`/recursos/${idrecurso}`, {
        headers: {
          'Authorization': `Bearer ${token}`
      } 
      })
      .then(function(response) {
        document.getElementById('nombre_recurso').textContent = response.data.nnombrerecurso;
      
      })
      .catch(function(error) {
        console.error('Error al obtener los datos del recurso:', error);
      })
  })
  .catch(function(error) {
      console.error('Error al obtener los datos del usuario:', error);
  })
  .finally(function() {
      console.log('Petición a la API completada.');
  });
});

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