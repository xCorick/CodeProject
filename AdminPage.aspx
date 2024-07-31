<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="CodeProject.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
        <head>
            <link href="Estilos/AdminStyles.css" rel="stylesheet" />
            
        </head>
        <body>
            <div id ="general">
                <div>

                </div>
                <div id="Contenedor-Tabla">
                    <div class="tabla">
                        <div class="fila">
                            <div class="celda">Clave:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBClave" runat="server"></asp:TextBox></div>   
                        </div>
                        <div class="fila">
                            <div class="celda">Nombre:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBNombre" runat="server"></asp:TextBox></div>
                        </div>
                        <div class="fila">
                            <div class="celda">Descripción:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBDescrip" runat="server"></asp:TextBox></div>
                        </div>
                        <div class="fila">
                            <div class="celda">Precio:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBPrecio" runat="server"></asp:TextBox></div>
                        </div>
                        <div class="fila">
                            <div class="celda">Stock:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBStock" runat="server"></asp:TextBox></div>
                        </div>
                        <div class="fila">
                            <div class="celda">Unidades en orden:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBCantOrden" runat="server"></asp:TextBox></div>
                        </div>
                        <div class="fila">
                            <div class="celda">Talla:</div>
                            <div class="celdacolspan2"><asp:DropDownList ID="DDLTalla" runat="server"></asp:DropDownList></div>
                        </div>
                        <div class="fila">
                            <div class="celda">Marca:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBMarca" runat="server"></asp:TextBox></div>
                        </div>
                        <div class="fila">
                            <div class="celda">Publico:</div>
                            <div class="celdacolspan2"><asp:DropDownList ID="DDLPublico" runat="server"></asp:DropDownList></div>
                        </div>
                        <div class="fila">
                            <div class="celda">Categoria:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TB" runat="server"></asp:TextBox></div>
                        </div>
                        <div class="fila">
                            <div class="celdacolspan3"><img src="AdminImages/empty.jpg" alt="ImgProduct" id="producto" /></div>
                        </div>
                        <div class="fila">
                            <div class="celdacolspan3"><input id="InputFile" name="InputFile" type="file" /></div>
                        </div>
                        <div class="fila">
                            <div class="celdacolspan3">
                                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
        <script src="AdminScripts/AdminScript.js"></script>
    </html>
</asp:Content>
