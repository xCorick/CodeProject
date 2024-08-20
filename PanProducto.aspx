<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PanProducto.aspx.cs" Inherits="CodeProject.PanProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalles del Producto - CarrilloShop</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }

        .product-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 20px;
        }

        .product-image {
            max-width: 400px;
            width: 100%;
            margin-right: 20px;
        }

        .product-info {
            max-width: 400px;
            width: 100%;
        }

        .product-name {
            font-size: 2em;
            margin-bottom: 10px;
        }

        .price-label {
            font-size: 1.5em;
            color: #e74c3c;
        }

        .input-quantity {
            width: 60px;
            padding: 5px;
            margin-right: 10px;
        }

        .container-description {
            margin-top: 20px;
        }

        .title-description {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .product-description {
            margin-bottom: 20px;
        }

        .additional-info, .shipping-info, .seller-info {
            margin-bottom: 20px;
        }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
        }

        .modal-content {
            background-color: #fefefe;
            margin: 10% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 800px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .size-guide-section {
            margin-bottom: 20px;
        }

        .size-guide-section h3 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .size-guide-section table {
            width: 100%;
            border-collapse: collapse;
        }

        .size-guide-section table, .size-guide-section th, .size-guide-section td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>

    <header>
        <h1>CarrilloShop</h1>
    </header>

    <div class="product-details">
    <asp:Image ID="Pro_Imagen" runat="server" ImageUrl="" AlternateText="Imagen del Producto" CssClass="product-image" />
     <div class="product-info">
                    <asp:Label ID="Pro_Nombre" runat="server" Text="" CssClass="product-name"></asp:Label>

            <div class="container-info-product">
                        <div class="container-price">
                            <asp:Label ID="Pro_Precio" runat="server" Text="" CssClass="price-label"></asp:Label>
                        </div>

                <div class="container-add-cart">
                    <input id="Pro_Cantidad" type="number" value="1" class="input-quantity" />
                    <button id="Bot_PaCarrito">Agregar a carrito</button>
                </div>

                <div class="container-description">
                    <p class="title-description">Descripción:</p>
                    <p id="Pro_Descripcion" class="product-description">Descripción del producto aquí.</p>
                </div>

                <div class="additional-info">
                    <a href="#" id="size-guide-link">Guía de Tallas</a>
                </div>

                <div class="shipping-info">
                    <p>Envío gratis (Pedidos ≥ $29.00)</p>
                    <p>Envío estándar Entrega: 30/08/2024 - 02/09/2024</p>
                    <p>Únete para tener 12X cupones de envío (valor $48.00)</p>
                </div>
               
                <div class="seller-info">
                    <p>Vendido por Carrillo shop</p>
                    <p>Enviado desde Obregón Sonora</p>
                    <p>Para reportar a este vendedor y/o producto llama al 6441935802</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div id="size-guide-modal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Guía de Tallas</h2>
           
            <!-- Primera sección de la guía de tallas -->
            <div class="size-guide-section">
                <h3>XXG - XXL</h3>
                <table>
                    <tr>
                        <td>Hombro:</td>
                        <td>51.4 cm</td>
                    </tr>
                    <tr>
                        <td>Busto:</td>
                        <td>79 cm</td>
                    </tr>
                    <tr>
                        <td>Largo:</td>
                        <td>123 cm</td>
                    </tr>
                    <tr>
                        <td>Largo de Manga:</td>
                        <td>43.5 cm</td>
                    </tr>
                </table>
                <p>*Estos datos se obtuvieron de la medición manual del producto, las mediciones pueden variar de 1-2 CM.</p>
                <h4>Cómo medir la talla del producto?</h4>
            </div>

            <!-- Segunda sección de la guía de tallas -->
            <div class="size-guide-section">
                <h3>Medidas del Producto</h3>
                <table>
                    <thead>
                        <tr>
                            <th>MX Talla</th>
                            <th>Hombro</th>
                            <th>Largo</th>
                            <th>Largo de la Manga</th>
                            <th>Pecho</th>
                            <th>Contorno Bíceps</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>S</td>
                            <td>44.5 cm</td>
                            <td>71 cm</td>
                            <td>22 cm</td>
                            <td>104 cm</td>
                            <td>37.8 cm</td>
                        </tr>
                        <tr>
                            <td>M</td>
                            <td>46 cm</td>
                            <td>73 cm</td>
                            <td>22.5 cm</td>
                            <td>108 cm</td>
                            <td>39 cm</td>
                        </tr>
                        <tr>
                            <td>L</td>
                            <td>47.8 cm</td>
                            <td>75 cm</td>
                            <td>23 cm</td>
                            <td>113 cm</td>
                            <td>40.5 cm</td>
                        </tr>
                        <tr>
                            <td>XL</td>
                            <td>49.6 cm</td>
                            <td>77 cm</td>
                            <td>23.5 cm</td>
                            <td>118 cm</td>
                            <td>42 cm</td>
                        </tr>
                    </tbody>
                </table>
                <p>Vestibilidad: Regular, Elasticidad: Media</p>
            </div>
        </div>
    </div>

    <script>
        document.getElementById('size-guide-link').onclick = function () {
            document.getElementById('size-guide-modal').style.display = "block";
        }

        document.getElementsByClassName('close')[0].onclick = function () {
            document.getElementById('size-guide-modal').style.display = "none";
        }

        window.onclick = function (event) {
            if (event.target == document.getElementById('size-guide-modal')) {
                document.getElementById('size-guide-modal').style.display = "none";
            }
        }
    </script>

</body>
</html>


</asp:Content>
