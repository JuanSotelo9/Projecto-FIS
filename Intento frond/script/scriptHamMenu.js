const hamMenu = document.querySelector(".ham-menu");

const offScreenMenu = document.querySelector(".off-screen-menu");

const api = axios.create({
  baseURL: 'http://localhost:8080'
});

const token = localStorage.getItem('token');
let opcion = '<a href="recursos.html" class="card" id="0"><span class="card__footer">Todos<span></a>';
// Se ejecuta al cargar la página
document.addEventListener('DOMContentLoaded', function() {
  obtenerTipos();
  const contenedor = document.getElementById('opciones');

  contenedor.addEventListener('click', function(event){

    if(event.target && event.target.tagName === "A"){
      localStorage.setItem('idTipo', event.target.id);
    }
  });
});

function obtenerTipos(tipo = ''){

  api.get('/tipos', {
    
    headers: {
      'Authorization': `Bearer ${token}`
    }
  })
  .then(function(response){
    const tipos = response.data;
    tipos.forEach(element => {
      opcion = opcion + `<a href="recursos.html" class="card" id="${element.kidtiporecurso}"><span class="card__footer">${element.nnombretiporecurso}<span></a>`;
      document.getElementById('opciones').innerHTML = opcion 
    });
  })
  .catch(function(error){
    console.error("Error al obtener recursos: ", error)
  })
}
