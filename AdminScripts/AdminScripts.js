

function ajustarContenedor() {
    const contenedor = document.querySelector('.ContenedorNavegacion');
    contenedor.style.display = 'none'; // Oculta temporalmente para el ajuste
    contenedor.offsetHeight; // Forza el reflow
    contenedor.style.display = 'flex'; // Muestra el contenedor nuevamente
}