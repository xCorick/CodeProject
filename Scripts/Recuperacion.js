function obtenerParametro(nombre) {
    const params = new URLSearchParams(window.location.search);
    return params.get(nombre);
}

window.onload = function () {
    // Obtiene el valor del parámetro 'id'
    const idBoton = obtenerParametro('id');
    // Muestra el valor del parámetro en la página
    document.getElementById('mensaje').innerText = 'El id del botón es: ' + idBoton;
}