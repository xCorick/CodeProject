<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="catalogo.aspx.cs" Inherits="CodeProject.catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <!DOCTYPE html>
  <html lang="en">

<head>

<title>Inicio</title>

    <link href="Estilos/EstiloInicio.css" rel="stylesheet" />

    <script src="Scripts/script.js"></script>
</head>
<body>
   
	
	<div>
	<img  src="imagenes/InicioFoto.png"; style="position:absolute;margin:auto;margin-top:-15px;left:0px;width:100%;height:575px;"/>
	</div>
    
	
     <!--
    <div style="position:absolute;margin-top:560px;border: 2px solid #333;right:50vw";width:100%;>
    <img src="imagenes/Logo.png" width="645" height="312" alt="Foto del logo"/>
    </div>
    -->
	
	<div class="textoxd">
		<h1>Equipando tus victorias, vistiendo tus sueños</h1>
	</div>

		

	<h1 style="position:absolute;margin-top:1010px;font-family: Arial;left:90px;">En tendencia:</h1>


	 <div style="margin-top:0px;"> 

<div id="container">
		<div id="slider-container">
			<span onclick="slideRight()" class="btn"></span>
			<div id="slider">
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/S2.jpg" class="imagen" alt="img1"/></button></div>
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/FI2.jpg" class="imagen" alt="img1"/></button></div>
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/T4.jpg" class="imagen" alt="img1"/></button></div>
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/BP3.jpg" class="imagen" alt="BP3"/></button></div>
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/BPI2.jpg" class="imagen" alt="img1"/></button></div>
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/L2.jpg" class="imagen" alt="img1"/></button></div>
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/T1.jpg" class="imagen" alt="img1"/></button></div>
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/G4.jpg" class="imagen" alt="img1"/></button></div>
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/BI1.jpg" class="imagen" alt="img1"/></button></div>
				<div class="slide"><button style="background-color: transparent; border: none; cursor: pointer;"><img src="imagenesProductos/C3.jpg" class="imagen" alt="img1"/></button></div>
			</div>
			<span onclick="slideLeft()" class="btn"></span>
		</div>
	</div>
  </div>

    <script src="Scripts/script.js"></script>
	

	 <h1 style="position:absolute;top:1450px;font-family: Arial;left:90px;">El deporte para ti:</h1>

	<div>
		<div>
				<div><button style="background-color: transparent; border: none; cursor: pointer;margin-top:0px;"><img src="imagenes/futbol.png" class="imagenDep" style="right:65.5vw;border: 2px solid #333;" alt="img1"/></button></div>
				<div><button style="background-color: transparent; border: none; cursor: pointer;margin-top:0px;"><img src="imagenes/basquet.png" class="imagenDep" style="right:33.5vw;border: 2px solid #333;" alt="img1"/></button></div>
				<div"><button style="background-color: transparent; border: none; cursor: pointer;margin-top:0px;"><img src="imagenes/beisbol.png" class="imagenDep" style="right:2vw;border: 2px solid #333;" alt="img1"/></button></div>
			</div>
		</div>

		<div style="position:absolute;top:2200px;left:110px;">

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
		   
	<!--
	<div style="position:absolute;color:#232323;top:2900px;">
		<h2>© 2024 Uniformes Carrillo, Inc. Todos los derechos reservados</h2>
	</div>
	-->

</body>
</html>
</asp:Content>




