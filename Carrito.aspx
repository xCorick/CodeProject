<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="CodeProject.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Carrito</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>
                <h1>Carrito</h1>


			  <asp:GridView ID="GridView" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="#66CCFF" ForeColor="#000066"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="LisCar_ProID" HeaderText="Producto">
                            <ItemStyle Width="90px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="LisCar_PrecioProducto" DataFormatString="{0:c}" HeaderText="Precio">
                            <ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="LisCar_Cantidad" DataFormatString="{0:c}" HeaderText="Cantidad"><ItemStyle Width="90px"></ItemStyle></asp:BoundField>
                        <asp:CommandField ShowSelectButton="True" HeaderText="Eliminar"><ItemStyle Width="90px"></ItemStyle></asp:CommandField>
                    </Columns>
                </asp:GridView>



</body>
</html>







</asp:Content>
