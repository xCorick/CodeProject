function ValidateInputFile(sender, args) {
    var HFProduct = document.getElementById('<%= HFProducto.ClientID %>');
    args.IsValid = HFProduct.value !== '';
}

function MostrarProductos() {
    document.getElementById('formproductos').style.display = 'block';
    document.getElementById('formusuario').style.display = 'none';
    document.getElementById('formpedidos').style.display = 'none';
    location.reload();
}

function MostrarUsuarios() {
    document.getElementById('formproductos').style.display = 'none';
    document.getElementById('formusuario').style.display = 'block';
    document.getElementById('formpedidos').style.display = 'none';
}

function MostrarPedidos() {
    document.getElementById('formproductos').style.display = 'none';
    document.getElementById('formusuario').style.display = 'none';
    document.getElementById('formpedidos').style.display = 'block';
}

function ajustarContenedor() {
    const contenedor = document.querySelector('.ContenedorNavegacion');
    contenedor.style.display = 'none'; // Oculta temporalmente para el ajuste
    contenedor.offsetHeight; // Forza el reflow
    contenedor.style.display = 'flex'; // Muestra el contenedor nuevamente
}

