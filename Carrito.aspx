<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="CodeProject.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"/>

   
 <div style="font-family:Impact;left:580px">              <h1>Carrito</h1>          </div>

    <div>
        <center>
			  <asp:GridView ID="GridView" runat="server" HorizontalAlign="Center" AutoGenerateColumns="False" OnSelectedIndexChanged="grid_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                    <Columns>
                       <asp:BoundField DataField="LisCar_ProID" HeaderText="ID">
                            <ItemStyle Width="120px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Pro_Nombre" HeaderText="Producto">
                            <ItemStyle Width="150px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Pro_Precio" DataFormatString="{0:c}" HeaderText="Precio">
                            <ItemStyle Width="80px"></ItemStyle>
                        </asp:BoundField>
                         <asp:BoundField DataField="LisCar_Descuento" DataFormatString="{0:c}" HeaderText="Descuento">
                            <ItemStyle Width="80px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="LisCar_Cantidad" DataFormatString="{0}" HeaderText="Cantidad"><ItemStyle Width="90px"></ItemStyle></asp:BoundField>
                                           
                        <asp:CommandField ShowSelectButton="True" HeaderText="Eliminar" SelectText="Eliminar"><ItemStyle Width="90px"></ItemStyle></asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </center>
        </div>





</asp:Content>
