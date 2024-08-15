<%@ Page Title="Producto" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PanProducto.aspx.cs" Inherits="CodeProject.PanProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="Scripts/Recuperacion.js"></script>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <style>
        /* Tu CSS aquí */
    </style>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>

<body>

        <header>
            <h1> CarrilloShop</h1>
        </header>

        <main>
            
                <asp:Image ID="Pro_Imagen" runat="server" ImageUrl="" AlternateText="" />
          
            
            <asp:Label ID="Pro_Nombre" runat="server" Text=""></asp:Label>

            <div class="container-info-product">
                <div class="container-price">
                    <asp:Label ID="Pro_Precio" runat="server" Text="" CssClass="price-label"></asp:Label>
                </div>


                    <div class="container-add-cart">
                        <div class="container-quantity">
                            <asp:TextBox ID="QuantityTextBox" runat="server" Text="1" CssClass="input-quantity" />
                        </div>
                        <asp:Button ID="AddToCartButton" runat="server" Text="Añadir al Carrito" CssClass="btn-add-to-cart" OnClick="AddToCartButton_Click" />
                    </div>

                    <div class="container-description">
                        <p class="title-description">Descripción:</p>
                       <!-- <p class="Pro_descripccion">Descripción del producto aquí. Detalles sobre las características y beneficios del producto.</p> -->
                        <asp:Label ID="Pro_Descripcion" runat="server" Text=""></asp:Label>
                        </div>

                    <div class="container-actions">
                        <asp:Button ID="BackButton" runat="server" Text="Regresar" CssClass="btn-small" OnClick="BackButton_Click" />
                    </div>
                </div>
            </div>
        </main>



    </body>
    
</asp:Content>
