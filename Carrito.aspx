<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="CodeProject.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"/>
    
    <link href="Estilos/CarritoEstilo.css" rel="stylesheet" />
   
<div class="header">
    <h1>Carrito</h1>
</div>

<div class="container">
    <div class="grid-container">
        <div class="table-responsive">
            <asp:GridView ID="GridView" runat="server" HorizontalAlign="Center" CssClass="table" AutoGenerateColumns="False" OnSelectedIndexChanged="grid_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#f2f2f2" />
                <Columns>
                    <asp:BoundField DataField="LisCar_ProID" HeaderText="ID">
                        <ItemStyle Width="120px"></ItemStyle>
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="Pro_Imagen" HeaderText="Imagen" ControlStyle-Height="100px" ControlStyle-Width="100px" >
                    <ItemStyle Width="100px"></ItemStyle>
                    </asp:ImageField>
                    <asp:BoundField DataField="Pro_Nombre" HeaderText="Producto">
                        <ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Pro_Precio" DataFormatString="{0:c}" HeaderText="Precio">
                        <ItemStyle Width="90px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LisCar_Descuento" DataFormatString="{0:c}" HeaderText="Descuento">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="LisCar_Cantidad" DataFormatString="{0}" HeaderText="Cantidad">
                        <ItemStyle Width="90px"></ItemStyle>
                    </asp:BoundField>
                    <asp:CommandField ShowSelectButton="True" HeaderText="Eliminar" SelectText="Eliminar">
                        <ItemStyle Width="90px"></ItemStyle>
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#4CAF50" Font-Bold="True" ForeColor="White" />
                <PagerStyle CssClass="pager" />
                <RowStyle BackColor="#F7F7DE" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#4CAF50" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#4CAF50" />
            </asp:GridView>
        </div>
    </div>
</div>



</asp:Content>
