<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PanProducto.aspx.cs" Inherits="CodeProject.PanProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <script src="Scripts/Recuperacion.js"></script>
    
     <link href="Estilos/VerProducto.css" rel="stylesheet" />
   
        <header>
            <h1> CarrilloShop</h1>
        </header>
    <asp:Label ID="Pro_ID" runat="server" Text=""></asp:Label>

            <div class="product-details">
                <asp:Image ID="Pro_Imagen" runat="server" ImageUrl="imagenesProductos/NotFound.jpg" AlternateText="Imagen del Producto" CssClass="product-image" />
       

                <div class="product-info">
                    <asp:Label ID="Pro_Nombre" runat="server" Text="" CssClass="product-name"></asp:Label>

                    <div class="container-info-product">
                        <div class="container-price">
                            <asp:Label ID="Pro_Precio" runat="server" Text="" CssClass="price-label"></asp:Label>
                        </div>

                        <div class="container-add-cart">
                            <div class="container-quantity">
                                <asp:TextBox ID="Pro_Cantidad" runat="server" Text="1" CssClass="input-quantity" />  
                            </div>
                            <asp:Button ID="Bot_PaCarrito" OnClick="AgreCarrito_Click" runat="server" Text="Agregar a carrito" />
                      
                            </div>

                        <div class="container-description">
                            <p class="title-description">Descripción:</p>
                            <asp:Label ID="Pro_Descripcion" runat="server" Text="" CssClass="product-description"></asp:Label>
                        </div>


                    </div>
                </div>
            </div>


</asp:Content>
