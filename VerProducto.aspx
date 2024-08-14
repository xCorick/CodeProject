<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerProducto.aspx.cs" Inherits="CodeProject.VerProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
<html>
<head>
    <title>@Model.Nombre</title>
    <link rel="stylesheet" href="~/Estilos/EstiloProducto.css" />
</head>
<body>
    <div class="producto-detalle">
        <h1>@Model.Nombre</h1>
        <img src="@Model.ImagenUrl" alt="@Model.Nombre" id="imagen-producto" />
        <p>@Model.Descripcion</p>
        <p>Precio: @Model.Precio.ToString("C")</p>

        <form asp-action="AddToCart" method="post">
            <label for="talla">Selecciona una talla:</label>
            <select id="talla" name="tallaId">
                @foreach (var talla in Model.TallasDisponibles)
                {
                    <option value="@talla.Id">@talla.Nombre</option>
                }
            </select>

            <input type="hidden" name="productoId" value="@Model.Id" />
            <button type="submit">Agregar al carrito</button>
        </form>
    </div>
</body>
</html>
</asp:Content>
