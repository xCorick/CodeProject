<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerProducto.aspx.cs" Inherits="CodeProject.VerProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
    <style>
        .card-container {
            display: flex;           /* Usa flexbox para alinear las cards */
            flex-wrap: wrap;         /* Permite que las cards pasen a la siguiente línea si no caben */
            gap: 20px;               /* Espacio entre las cards */
            justify-content: flex-start; /* Alinea las cards al inicio de la fila */
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 16px;
            text-align: center;
            width: calc(25% - 20px); /* Ajusta el ancho para que quepan 4 cards por fila */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;     /* Espacio en la parte inferior para separación vertical */
            box-sizing: border-box;  /* Asegura que el padding y border se incluyan en el ancho total */
        }

        .card img {
            width: 100%;
            height: auto;
            border-radius: 4px;
        }

        .card h3 {
            font-size: 18px;
            margin: 10px 0;
        }

        .card p {
            font-size: 16px;
            color: #555;
        }

        .card a {
            display: block;
            margin-top: 10px;
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>

    <div class="card-container">
        <!-- Aquí se generan las cards dinámicamente desde el servidor con ASP.NET -->
        <asp:Repeater ID="ProductsRepeater" runat="server">
            <ItemTemplate>
                <div class="card">
                    <img src='<%# Eval("Pro_Imagen") %>' alt='<%# Eval("Pro_Nombre") %>' />
                    <h3><%# Eval("Pro_Nombre") %></h3>
                    <p>Price: $<%# Eval("Pro_Precio") %></p>
                    <a href="details.aspx?id=<%# Eval("Pro_ID") %>">Ver Detalles</a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</body>
</html>




</asp:Content>
