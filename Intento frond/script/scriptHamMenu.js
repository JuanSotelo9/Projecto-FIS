

/*const hamMenu = document.querySelector(".ham-menu");

const offScreenMenu = document.querySelector(".off-screen-menu");

hamMenu.addEventListener("click", () => {
  hamMenu.classList.toggle("active");
  offScreenMenu.classList.toggle("active");
});
*/
const api = axios.create({
  baseURL: 'http://localhost:8080'
});

document.addEventListener('DOMContentLoaded', function() {
  // ID del usuario
  const userId = '1000626252'; 
  // Token de autenticación
  const token = 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJKdWFucGE5MDkiLCJpYXQiOjE3MTY5Mjg0NTAsImV4cCI6MTcxNjkyOTg5MH0.MwvLRI1qnEBwU4ZWXM1s4C7BTFDrNtgiWs9dnRk_O3Y'; 

  api.get(`/user?id=${userId}`, {
      headers: {
          'Authorization': `Bearer ${token}`
      }
  })
  .then(function(response) {
      const userData = response.data;

      // Actualizar los campos en el formulario con los datos del usuario
      document.getElementById('nombreCompleto').value = `${userData.nombre} ${userData.apellido}`;
      document.getElementById('usuario').value = userData.usuario;
      document.getElementById('correo').value = userData.email;
  })
  .catch(function(error) {
      console.error('Error al obtener los datos del usuario:', error);
  })
  .finally(function() {
      console.log('Petición a la API completada.');
  });
});
