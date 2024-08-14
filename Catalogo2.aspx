<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogo2.aspx.cs" Inherits="CodeProject.Catalogo2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>

    <link href="Estilos/CatalogoEstilo.css" rel="stylesheet" />
    <link href="Estilos/CatalogoSlider.css" rel="stylesheet" />
    <link href="Estilos/CatalogoCarrusel2.css" rel="stylesheet" />
    <script src="Scripts/CatalogoScript.js"></script>
</head>
<body>
    
    <div class="marco">
        <ul>
            <!-- Cambia '#' a la URL de detalles del producto correspondiente -->
            <li><a href="@Url.Action("Details", "Productos", new { id = 1 })"><img src="imagenes/F1.2.jpg" alt="Producto 1"/></a></li>
            <li><a href="@Url.Action("Details", "Productos", new { id = 2 })"><img src="imagenes/F4.2.jpg" alt="Producto 2"/></a></li>
            <li><a href="@Url.Action("Details", "Productos", new { id = 3 })"><img src="imagenes/F10.2.jpeg" alt="Producto 3"/></a></li>
            <li><a href="@Url.Action("Details", "Productos", new { id = 4 })"><img src="imagenes/F9.2.jpg" alt="Producto 4"/></a></li>
        </ul>
    </div>

    <h1 class="letras">Equipando tus victorias, <br />vistiendo tus sueños</h1>

    <h1 style="position:absolute;margin-top:400px;font-family: Arial;left:90px;">En tendencia:</h1>

    <div id="container">
        <div id="slider-container">
            <span onclick="slideRight()" class="btn"></span>
            <div id="slider">
                <!-- Reemplaza '#' con la URL de detalles del producto correspondiente -->
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 5 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/S2.jpg" class="imagen" alt="img1"/></button></a></div>
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 6 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/FI2.jpg" class="imagen" alt="img1"/></button></a></div>
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 7 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/T4.jpg" class="imagen" alt="img1"/></button></a></div>
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 8 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/BP3.jpg" class="imagen" alt="BP3"/></button></a></div>
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 9 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/BPI2.jpg" class="imagen" alt="img1"/></button></a></div>
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 10 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/L2.jpg" class="imagen" alt="img1"/></button></a></div>
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 11 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/T1.jpg" class="imagen" alt="img1"/></button></a></div>
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 12 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/G4.jpg" class="imagen" alt="img1"/></button></a></div>
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 13 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/BI1.jpg" class="imagen" alt="img1"/></button></a></div>
                <div class="slide"><a href="@Url.Action("Details", "Productos", new { id = 14 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/C3.jpg" class="imagen" alt="img1"/></button></a></div>
            </div>
            <span onclick="slideLeft()" class="btn"></span>
        </div>
    </div>

    <h1 style="position:absolute;top:1405px;font-family: Arial;left:90px;">El deporte para ti:</h1>

    <div>
        <div>
            <div><a href="@Url.Action("Details", "Productos", new { id = 15 })"><button style="background-color: transparent; border: none; cursor: pointer;margin-top:0px;"><img src="imagenes/futbol.png" class="imagenDep" style="right:65.5vw;border: 2px solid #333;" alt="img1"/></button></a></div>
            <div><a href="@Url.Action("Details", "Productos", new { id = 16 })"><button style="background-color: transparent; border: none; cursor: pointer;margin-top:0px;"><img src="imagenes/basquet.png" class="imagenDep" style="right:33.5vw;border: 2px solid #333;" alt="img1"/></button></a></div>
            <div><a href="@Url.Action("Details", "Productos", new { id = 17 })"><button style="background-color: transparent; border: none; cursor: pointer;margin-top:0px;"><img src="imagenes/beisbol.png" class="imagenDep" style="right:2vw;border: 2px solid #333;" alt="img1"/></button></a></div>
        </div>
    </div>

    <div style="position:absolute;top:2150px;left:110px;">
        <div class="contenedor">
            <img class="imagen" src="imagenes/dec.png" alt=""/>
            <div>
                <h2>Sobre nosotros</h2>
                <p>Uniformes Carrillo diseña ropa deportiva y tenis para atletas de todo tipo. 
                    Creadores que disfrutan de cambiar las reglas del juego. Desafiar 
                    las convenciones. Romper las normas y definir nuevas. Y volverlas 
                    a romper. Confeccionamos la ropa que visten equipos y jugadores
                    individuales en preparación para el partido. Para que no pierdan
                    la concentración. Diseñamos indumentaria deportiva para que llegues
                    a la meta. Para que ganes el partido. Nuestras tiendas deportivas 
                    ofrecen atuendos para mujeres, con tops deportivos y mallas diseñados
                    con un objetivo en mente. Para deportes de impacto bajo, medio o alto.
                    Diseñamos, innovamos e iteramos. Ponemos a prueba nuevas tecnologías.
                    En el campo, en la cancha, en la pista, en la alberca. La ropa deportiva
                    retro inspira nuevos elementos esenciales de la ropa urbana y casual.</p>
            </div>
        </div>
    </div>

    <h1 style="position:absolute;margin-top:25px;font-family: Arial;left:90px;">Diseñado para ti:</h1>

    <div id="container2" style="margin-top:-970px"> 
        <div id="slider2-container2">
            <span onclick="slideRight2()" class="btn2"></span>
            <div id="slider2">
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 18 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/S2.jpg" class="imagen2" alt="img1"/></button></a></div>
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 19 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/FI2.jpg" class="imagen2" alt="img1"/></button></a></div>
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 20 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/T4.jpg" class="imagen2" alt="img1"/></button></a></div>
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 21 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/BP3.jpg" class="imagen2" alt="BP3"/></button></a></div>
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 22 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/BPI2.jpg" class="imagen2" alt="img1"/></button></a></div>
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 23 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/L2.jpg" class="imagen2" alt="img1"/></button></a></div>
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 24 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/T1.jpg" class="imagen2" alt="img1"/></button></a></div>
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 25 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/G4.jpg" class="imagen2" alt="img1"/></button></a></div>
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 26 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/BI1.jpg" class="imagen2" alt="img1"/></button></a></div>
                <div class="slide2"><a href="@Url.Action("Details", "Productos", new { id = 27 })"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/C3.jpg" class="imagen2" alt="img1"/></button></a></div>
            </div>
            <span onclick="slideLeft2()" class="btn2"></span>
        </div>
    </div>

    <script src="Scripts/CatalogoScript2.js"></script>     
</body>
</html>

</asp:Content>

