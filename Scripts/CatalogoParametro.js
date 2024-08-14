function redirigirConId(event) {
    // Previene el comportamiento predeterminado del botón
    event.preventDefault();

    // Obtiene el botón que fue clicado
    const boton = event.target;

    // Obtiene el id del botón
    const idBoton = boton.id;
    console.log("El valor es: ", idBoton);

    // Redirige a la otra página con el id como parámetro
    window.location.href = 'PanProducto.aspx?id=' + encodeURIComponent(idBoton);
}
