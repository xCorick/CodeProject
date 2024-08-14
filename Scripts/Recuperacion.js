function obtenerParametro(nombre) {
    // Crea un objeto URLSearchParams para manejar la cadena de consulta
    const params = new URLSearchParams(window.location.search);
    // Obtiene el valor del parámetro con el nombre dado
    return params.get(nombre);
}

window.onload = function () {
    // Obtiene el valor del parámetro 'id'
    const idBoton = obtenerParametro('id');
    // Obtiene el elemento con id 'mensaje'
    const mensajeElemento = document.getElementById('mensaje');
    if (mensajeElemento) {
        // Muestra el valor del parámetro en el elemento con id 'mensaje'
        mensajeElemento.innerText = 'El id del botón es: ' + idBoton;
    } else {
        // Imprime un mensaje de error en la consola si el elemento no se encuentra
        console.error('Elemento con id "mensaje" no encontrado');
    }