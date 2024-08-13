function abrirVentanaEmergente() {
    var ancho = 800;  // Ancho de la ventana
    var alto = 600;   // Alto de la ventana

    // Obtener el tamaño de la ventana del navegador
    var x = window.screen.availWidth;
    var y = window.screen.availHeight;

    // Calcular la posición de la ventana emergente para centrarla
    var izquierda = (x - ancho) / 2;
    var arriba = (y - alto) / 2;

    // Abrir la ventana emergente en el centro de la pantalla
    window.open(
        "RecoveryPass.aspx",
        "ventanaEmergente",
        "width=" + ancho + ",height=" + alto + ",left=" + izquierda + ",top=" + arriba
    );
}
