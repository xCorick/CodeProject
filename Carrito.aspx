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


			  <asp:GridView ID="GridView" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" OnSelectedIndexChanged="grid_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="LisCar_ProID" HeaderText="Producto">
                            <ItemStyle Width="90px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="LisCar_PrecioProducto" DataFormatString="{0:c}" HeaderText="Precio">
                            <ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="LisCar_Cantidad" DataFormatString="{0}" HeaderText="Cantidad"><ItemStyle Width="90px"></ItemStyle></asp:BoundField>
                        <asp:CommandField ShowSelectButton="True" HeaderText="Eliminar"><ItemStyle Width="90px"></ItemStyle></asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>



</body>
</html>







</asp:Content>
