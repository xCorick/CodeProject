<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerProductos.aspx.cs" Inherits="CodeProject.VerProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Estilos/VerProductoEstilo.css" rel="stylesheet" />
    <!-- Asegúrate de que este archivo CSS esté correctamente enlazado -->
    <title>Productos</title>
</head>
<body>
    <h1>BUSCAR PRODUCTOS</h1>

    <!-- Contenedor de búsqueda -->
    <div class="search-container">
        <input type="text" id="searchInput" placeholder="Buscar productos...">
    </div>
    <p id="noResults" class="no-results" style="display: none;">No se encontraron resultados.</p>

    <!-- Contenedor de productos -->
    <div class="card-products-container">
        <div id="shopContent"></div>
    </div>

    <script src="Scripts/Productos.js"></script>
    <!-- Asegúrate de que el script esté correctamente enlazado -->
</body>
</html>



</asp:Content>
