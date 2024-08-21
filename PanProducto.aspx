<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PanProducto.aspx.cs" Inherits="CodeProject.PanProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<header style="background-color: #4a4a4a; padding: 20px; text-align: center;">
    <h1 style="font-family: 'Arial', sans-serif; font-size: 36px; color: #f2f2f2;">CarrilloShop</h1>
</header>

<asp:Label ID="Pro_ID" runat="server" Text=""></asp:Label>

<div class="product-details" style="display: flex; padding: 20px; background-color: #ffffff; margin: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
    <asp:Image ID="Pro_Imagen" runat="server" ImageUrl="imagenesProductos/NotFound.jpg" AlternateText="Imagen del Producto" CssClass="product-image" style="max-width: 300px; border-radius: 10px;" />

    <div class="product-info" style="margin-left: 20px; flex-grow: 1;">
        <asp:Label ID="Pro_Nombre" runat="server" Text="" CssClass="product-name" style="font-family: 'Helvetica', sans-serif; font-size: 28px; color: #333;"></asp:Label>

        <div class="container-info-product" style="margin-top: 20px;">
            <div class="container-price" style="margin-bottom: 10px;">
                <asp:Label ID="Pro_Precio" runat="server" Text="" CssClass="price-label" style="font-family: 'Arial', sans-serif; font-size: 24px; color: #ff5722;"></asp:Label>
            </div>

            <div class="container-add-cart" style="margin-bottom: 20px;">
                <div class="container-quantity" style="display: inline-block; margin-right: 10px;">
                    <asp:TextBox ID="Pro_Cantidad" runat="server" Text="1" CssClass="input-quantity" style="width: 50px; text-align: center; border: 1px solid #ccc; border-radius: 5px;" />
                </div>
                <asp:Button ID="Bot_PaCarrito" OnClick="AgreCarrito_Click" runat="server" Text="Agregar a carrito" style="background-color: #4a90e2; color: white; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;" />
            </div>

            <div class="container-description" style="margin-bottom: 20px;">
                <p class="title-description" style="font-family: 'Verdana', sans-serif; font-size: 20px; color: #333; margin-bottom: 5px;">Descripción:</p>
                <asp:Label ID="Pro_Descripcion" runat="server" Text="" CssClass="product-description" style="font-family: 'Tahoma', sans-serif; font-size: 16px; color: #666;"></asp:Label>
            </div>
           
            <div>
                <span class="guide-link" onclick="openModal()" style="font-family: 'Georgia', serif; font-size: 16px; color: blue; cursor: pointer;">Guía de Tallas</span>
            </div>
        </div>

       <div class="shipping-info" style="margin-top: 20px; font-family: 'Courier New', Courier, monospace; font-size: 14px; color: #555;">
    <p>Express: MX$460.00 o MX$310.00 (Pedidos ≥ MX$1,380.00)</p>
    <p>Entrega: 25 ago - 1 sep, El 70.1% llega en 7 días o menos</p>
    <p>Obtenga un crédito MX$460.00/MX$310.00 por entrega tardía</p>
    <p>Empresa de mensajería: DHL</p>
</div>

<div class="seller-info" style="margin-top: 20px; font-family: 'Lucida Console', Monaco, monospace; font-size: 14px; color: #777;">
    <p>Vendido por CarrilloShop</p>
    <p>Enviado desde Obregón Sonora</p>
    <p>Para reportar a este vendedor y/o producto llama al 6441935802</p>
</div>
    </div>
</div>

<!-- Modal para la Guía de Tallas -->
<div id="size-guide-modal" class="modal" style="display: none; position: fixed; z-index: 1000; left: 50%; top: 50%; transform: translate(-50%, -50%); width: 70%; background-color: #fff; padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0,0,0,0.1);">
    <div class="modal-content">
        <span class="close" onclick="closeModal()" style="font-size: 28px; font-weight: bold; cursor: pointer; color: #333; position: absolute; top: 10px; right: 20px;">&times;</span>
        <h2 style="font-family: 'Arial', sans-serif; font-size: 24px; color: #333;">Guía de Tallas</h2>
       
        <!-- Primera sección de la guía de tallas -->
        <div class="size-guide-section" style="margin-top: 20px;">
            <h3 style="font-family: 'Arial', sans-serif; font-size: 20px; color: #555;">XXG - XXL</h3>
            <table style="width: 100%; border-collapse: collapse; margin-bottom: 20px;">
                <tr>
                    <td style="border: 1px solid #ddd; padding: 8px;">Hombro:</td>
                    <td style="border: 1px solid #ddd; padding: 8px;">51.4 cm</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #ddd; padding: 8px;">Busto:</td>
                    <td style="border: 1px solid #ddd; padding: 8px;">79 cm</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #ddd; padding: 8px;">Largo:</td>
                    <td style="border: 1px solid #ddd; padding: 8px;">123 cm</td>
                </tr>
                <tr>
                    <td style="border: 1px solid #ddd; padding: 8px;">Largo de Manga:</td>
                    <td style="border: 1px solid #ddd; padding: 8px;">43.5 cm</td>
                </tr>
            </table>
            <p style="font-family: 'Arial', sans-serif; font-size: 14px; color: #777;">*Estos datos se obtuvieron de la medición manual del producto, las mediciones pueden variar de 1-2 CM.</p>
            <h4 style="font-family: 'Arial', sans-serif; font-size: 18px; color: #333;">¿Cómo medir la talla del producto?</h4>
        </div>

        <!-- Segunda sección de la guía de tallas -->
        <div class="size-guide-section" style="margin-top: 20px;">
            <h3 style="font-family: 'Arial', sans-serif; font-size: 20px; color: #555;">Medidas del Producto</h3>
            <table style="width: 100%; border-collapse: collapse;">
                <thead>
                    <tr style="background-color: #f2f2f2;">
                        <th style="border: 1px solid #ddd; padding: 8px;">MX Talla</th>
                        <th style="border: 1px solid #ddd; padding: 8px;">Hombro</th>
                        <th style="border: 1px solid #ddd; padding: 8px;">Largo</th>
                        <th style="border: 1px solid #ddd; padding: 8px;">Largo de la Manga</th>
                        <th style="border: 1px solid #ddd; padding: 8px;">Pecho</th>
                        <th style="border: 1px solid #ddd; padding: 8px;">Contorno Bíceps</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="border: 1px solid #ddd; padding: 8px;">S</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">44.5 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">71 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">22 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">104 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">37.8 cm</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #ddd; padding: 8px;">M</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">46 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">73 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">23 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">110 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">39 cm</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #ddd; padding: 8px;">L</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">47.5 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">75 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">24 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">116 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">40.2 cm</td>
                    </tr>
                    <tr>
                        <td style="border: 1px solid #ddd; padding: 8px;">XL</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">49 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">77 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">25 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">122 cm</td>
                        <td style="border: 1px solid #ddd; padding: 8px;">41.4 cm</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- JavaScript para manejar la apertura y cierre del modal -->
<script>
    function openModal() {
        document.getElementById('size-guide-modal').style.display = "block";
    }

    // Close the modal
    function closeModal() {
        document.getElementById('size-guide-modal').style.display = "none";
    }

    // Close the modal if the user clicks outside of it
    window.onclick = function (event) {
        const modal = document.getElementById('size-guide-modal');
        if (event.target === modal) {
            modal.style.display = "none";
        }
    }
</script>
</asp:Content>
