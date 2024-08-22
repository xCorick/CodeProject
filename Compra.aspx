<%@ Page Title="Compra efectuada" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Compra.aspx.cs" Inherits="CodeProject.Compra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   
   <link href="Estilos/CompraEstilo.css" rel="stylesheet" />
</head>
<body>
    <div class="compra-page">
        <h1>Compra efectuada exitosamente</h1>
        <p>Gracias por su compra. Su pedido está siendo procesado.</p>
        <a href="Default.aspx" class="btn">Volver a la página principal</a>
    </div>
</body>
</html>
</asp:Content>
