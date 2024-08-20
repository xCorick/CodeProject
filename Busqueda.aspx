<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="CodeProject.Busqueda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <link href="Estilos/BusquedaEstilo.css" rel="stylesheet" />



    <h1>Productos de <%= Request.QueryString["categoria"] %></h1>
    <div id="productCards" runat="server">
       

    </div>

</asp:Content>
