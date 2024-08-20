<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CodeProject.Contact" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Contacto - CarrilloShop</title>

    <!-- Bootstrap core CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles -->
    <style>
        body {
            background-color: #f5f5f5;
            font-family: Arial, sans-serif;
        }

        .contact-section {
            display: flex;
            align-items: center;
            padding: 20px;
            flex-wrap: wrap;
        }

        .contact-image {
            flex: 1;
            background-size: cover;
            background-position: center;
            height: 900px;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            padding: 200px;
            top: 8px;
            left: -161px;
        }

        .contact-info {
            background-color: rgba(0, 0, 0, 0.5);
            color: #fff;
            padding: 20px;
            border-radius: 10px;
            position: absolute;
            top: 49%;
            left: 63%;
            transform: translate(-50%, -50%);
            text-align: center;
            width: 100%;
            max-width: 600px;
            height: 46%;
            max-height: 800px;
            font-size:1.7rem;
        }

        .carousel-item img {
            width: 100%;
            height: auto;
        }

        .social-media {
            list-style-type: none;
            display: flex;
            padding: 0;
            justify-content: center;
            margin: 0;
        }

        .social-media li {
            margin: 0 10px;
        }

        .social-media img {
            width: 50px; /* Ajusta el tamaño de las imágenes */
            height: auto;
        }

        .social-container {
            margin-bottom: 20px;
            text-align: center;
        }

        .embed-responsive {
            margin-top: 20px;
        }
    </style>
</head>

<body>
    <main role="main">
        <!-- Contact Section -->
        <div class="contact-section">
            <!-- Contact Image and Info -->
            <div class="contact-image">
                <div class="contact-info">
                    <h1 class="display-4 font-italic"><strong>¡Comunícate con nosotros!</strong></h1>
                    <address>
                        Encuéntranos en Calle Gregorio Payro #433 <br />
                        código 85170, colonia Constitución, Ciudad Obregón, Sonora<br />
                        <abbr title="Phone">Tel:</abbr> +52 6441503104
                    </address>
                    <address>
                        <strong>Support:</strong> <a href="mailto:teamcarrillo388@gmail.com" style="color:blue">teamcarrillo388@gmail.com</a>
                    </address>
                </div>
            </div>
            <!-- Carousel -->
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="flex: 1; max-width: 500px;">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="ImagenesProductos/foto1.png" class="d-block w-100" alt=" imagen  1"/>
                    </div>
                    <div class="carousel-item">
                        <img src="imagenesProductos/foto2.png" class="d-block w-100" alt=" imagen 2"/>
                    </div>
                    <div class="carousel-item">
                        <img src="imagenesProductos/foto3.png" class="d-block w-100" alt="Imagen 3"/>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
            </div>
        </div>

        <!-- Redes Sociales -->
        <div class="social-container">
            <h2>Redes Sociales</h2>
            <ul class="social-media">
                <li>
                    <a href="https://www.instagram.com/uniformes.carrillo" target="_blank">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8J6RoBDh902FuL0sWkZeakHjZcrDPj-L3Sg&s" alt="Instagram">
                    </a>
                </li>
                <li>
                    <a href="https://www.facebook.com/carrillo.uniformes" target="_blank">
                        <img src="https://store-images.s-microsoft.com/image/apps.30645.9007199266245907.cb06f1f9-9154-408e-b4ef-d19f2325893b.ac3b465e-4384-42a8-9142-901c0405e1bc" alt="Facebook">
                    </a>
                </li>
                <li>
                    <a href="https://twitter.com/Carrillo_Uniformes" target="_blank">
                        <img src="https://media.gq.com.mx/photos/64fc8ab0f03b3ff851536213/4:3/w_2668,h_2001,c_limit/Elon%20Musk%20Changes%20Twitter%20Name%20And%20Logo%20To%20X.jpg" alt="Twitter">
                    </a>
                </li>
            </ul>
        </div>

        <!-- Mapa de Ubicación -->
        <div class="embed-responsive embed-responsive-16by9">
    <iframe class="embed-responsive-item"
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d41440.58812314238!2d-109.93711850259402!3d27.482769750185428!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x86d3f45796ef2927%3A0x153ac4fbc2c4e105!2sCiudad%20Obreg%C3%B3n%2C%20Sonora!5e0!3m2!1ses!2smx!4v1692504605264!5m2!1ses!2smx"
        allowfullscreen="" loading="lazy">
    </iframe>
</div>
    </main>

    <!-- Bootstrap core JavaScript -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>

</asp:Content>

