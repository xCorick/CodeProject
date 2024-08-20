<%@ Page Title="Catalogo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="CodeProject.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    	<!--
  <script src="Scripts/CatalogoParametro.js"></script> 
	-->

    <link href="Estilos/CatalogoEstilo.css" rel="stylesheet" />

    <link href="Estilos/CatalogoSlider.css" rel="stylesheet" />

    <link href="Estilos/CatalogoCarrusel2.css" rel="stylesheet" />



   <script src="Scripts/CatalogoScript.js"></script>

    <!--
	<div class="marco">
    <ul>
        <li>
            <img src="imagenes/F1.2.jpg"/>
        </li>
        <li>
            <img src="imagenes/F4.2.jpg"/>
       </li>
        <li>
            <img src="imagenes/F10.2.jpeg"/>
        </li>
        <li>
            <img src="imagenes/F9.2.jpg"/>
        </li>
    </ul>
</div>
    -->
    	<div class="marco">
    <ul>
        <li>
            <img src="imagenes/1.png"/>
        </li>
        <li>
            <img src="imagenes/5.png"/>
       </li>
        <li>
            <img src="imagenes/3.png"/>
        </li>
        <li>
            <img src="imagenes/4.png"/>
        </li>
    </ul>
</div>
        



	<!--
	<div>
	<img  src="imagenes/InicioFoto.png"; style="position:absolute;margin:auto;margin-top:-15px;left:0px;width:100%;height:575px;"/>
	</div>
    


	<h1 class="letras">Equipando tus victorias, <br />vistiendo tus sueños</h1>


	
		<h2 class="anuncio">Entra en accion con los productos mas nuevos</h2>
		
			<button>Compra Ahora</button>
	-->	






	<h1 style="position:absolute;margin-top:150px;font-family: Arial;left:90px;">En tendencia:</h1>


	<div style="margin-top:-650px;">

<div id="container">
    <div id="slider-container">
        <span onclick="slideRight()" class="btn"></span>
        <div id="slider">
            <div class="slide">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177831/aavjumygsdqbxasc19ru.webp" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="1001123" />
            </div>
            <div class="slide">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177025/ospm5mzwncw0itiq1ny2.png" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="1003234" />
            </div>
            <div class="slide">
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724176666/xmwhmg2nb2iczuuyno6v.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="2023459" />
            </div>
            <div class="slide">
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="imagenesProductos/PL6.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="Unifem" />
            </div>
            <div class="slide">
                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="imagenesProductos/PL4.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="Unifem6" />
            </div>
            <div class="slide">
                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="imagenesProductos/bc3.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="UniFem4" />
            </div>
            <div class="slide">
                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="imagenesProductos/G7.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="cap5" />
            </div>
            <div class="slide">
                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="imagenesProductos/bc6.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="UniFem2" />
            </div>
            <div class="slide">
                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="imagenesProductos/bc10.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="UniFem3" />
            </div>
        </div>
        <span onclick="slideLeft()" class="btn"></span>
    </div>
</div>
        </div>


   
	    <script src="Scripts/CatalogoScript.js"></script>
    
	
	 <h1 style="position:absolute;top:1405px;font-family: Arial;left:90px;">El deporte para ti:</h1>

	<div>
		<div>
				<div><button  style="background-color: transparent; border: none; cursor: pointer;margin-top:0px;"><img src="imagenes/futbol.png" class="imagenDep" style="right:65.5vw;border: 2px solid #333;" alt="img1"/></button></div>
				<div><button style="background-color: transparent; border: none; cursor: pointer;margin-top:0px;"><img src="imagenes/basquet.png" class="imagenDep" style="right:33.5vw;border: 2px solid #333;" alt="img1"/></button></div>
				<div"><button style="background-color: transparent; border: none; cursor: pointer;margin-top:0px;"><img src="imagenes/beisbol.png" class="imagenDep" style="right:2vw;border: 2px solid #333;" alt="img1"/></button></div>
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
		   

		<h1 style="position:absolute;margin-top:25px;font-family: Arial;left:90px;">Diseñado ti:</h1>

    	<div style="margin-top:-775px;">

	<div id="container2">
    <div id="slider-container2">
        <span onclick="slideRight2()" class="btn2"></span>
        <div id="slider2">
            <div class="slide2">
                <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="imagenesProductos/bc9.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="cap1" />
            </div>
            <div class="slide2">
                <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="imagenesProductos/bp6.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="cap2" />
            </div>
            <div class="slide2">
                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="imagenesProductos/bc1.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="taqFut" />
            </div>
            <div class="slide2">
                <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="imagenesProductos/PL6.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="Unifem" />
            </div>
            <div class="slide2">
                <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="imagenesProductos/PL4.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="Unifem6" />
            </div>
            <div class="slide2">
                <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="imagenesProductos/bc3.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="UniFem4" />
            </div>
            <div class="slide2">
                <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="imagenesProductos/G7.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="cap5" />
            </div>
            <div class="slide2">
                <asp:ImageButton ID="ImageButton17" runat="server" ImageUrl="imagenesProductos/bc6.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="UniFem2" />
            </div>
            <div class="slide2">
                <asp:ImageButton ID="ImageButton18" runat="server" ImageUrl="imagenesProductos/bc10.jpg" CssClass="imagenButton" OnClick="ImageButton_Click" CommandArgument="UniFem3" />
            </div>
        </div>
        <span onclick="slideLeft2()" class="btn2"></span>
    </div>
        <script src="Scripts/CatalogoScript2.js"></script>     
</div>
            </div>

                                                
</asp:Content>
