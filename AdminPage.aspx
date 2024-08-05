<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="CodeProject.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
        <head>
            <link href="Estilos/AdminStyles.css" rel="stylesheet" />
        </head>
        <body>
            <div class ="ContenedorNavegacion">
                <div class="tabla">
                    <div class="fila">
                        <div class="celda2"><button type="button" onclick="MostrarProductos();" id="Produc">Productos</button></div>
                        <div class="celda2"><button type="button" onclick="MostrarUsuarios();" id="Usuario">Usuarios</button></div>
                        <div class="celda2"><button type="button" onclick="MostrarPedidos();" id="Pedidos">Pedidos</button></div>
                    </div>
                </div>
            </div>
            <div id ="formproductos">
                <div class="Contenedor-Tabla">
                    <div class="tabla">
                        <div class="fila">
                            <div class="celda">Clave:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBClave" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFClave" runat="server" 
                                    ErrorMessage="<br />Falta clave"
                                    Display="Dynamic" 
                                    ControlToValidate="TBClave"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>   
                        </div>
                        <div class="fila">
                            <div class="celda">Nombre:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBNombre" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RF" runat="server" 
                                    ErrorMessage="<br />Falta nombre"
                                    Display="Dynamic" 
                                    ControlToValidate="TBNombre"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="fila">
                            <div class="celda">Descripción:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBDescrip" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFDescripcion" runat="server" 
                                    ErrorMessage="<br />Falta Descripcion"
                                    Display="Dynamic" 
                                    ControlToValidate="TBDescrip"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="fila">
                            <div class="celda">Precio:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBPrecio" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFPrecio" runat="server" 
                                    ErrorMessage="<br />Falta precio"
                                    Display="Dynamic" 
                                    ControlToValidate="TBPrecio"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="fila">
                            <div class="celda">Stock:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBStock" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFStock" runat="server" 
                                    ErrorMessage="<br />Falta stock"
                                    Display="Dynamic" 
                                    ControlToValidate="TBStock"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="fila">
                            <div class="celda">Unidades en orden:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBCantOrden" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFCantOrden" runat="server" 
                                    ErrorMessage="<br />Faltan las cantidades en orden"
                                    Display="Dynamic" 
                                    ControlToValidate="TBCantOrden"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="fila">
                            <div class="celda">Talla:</div>
                            <div class="celdacolspan2"><asp:DropDownList ID="DDLTalla" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Contenedor-Tabla2">
                    <div class="tabla2">
                    <div class="fila">
                            <div class="celda">Marca:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBMarca" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFMarca" runat="server" 
                                    ErrorMessage="<br />Falta marca"
                                    Display="Dynamic" 
                                    ControlToValidate="TBMarca"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="fila">
                            <div class="celda">Publico:</div>
                            <div class="celdacolspan2"><asp:DropDownList ID="DDLPublico" runat="server"></asp:DropDownList>
                            </div>
                        </div>
                        <div class="fila">
                            <div class="celda">Categoria:</div>
                            <div class="celdacolspan2"><asp:TextBox ID="TBCategoria" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFCategoria" runat="server" 
                                    ErrorMessage="<br />Falta categoria"
                                    Display="Dynamic" 
                                    ControlToValidate="TBCategoria"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="fila">
                            <div class="celdacolspan3"><img src="AdminImages/empty.jpg" alt="ImgProduct" id="producto" /></div>
                        </div>
                        <div class="fila">
                            <div class="celdacolspan3"><input id="InputFile" runat="server" name="InputFile" type="file" />
                                    <!--<asp:CustomValidator ID="CVInputFile" runat="server" 
                                    ErrorMessage="<br />Falta Imagen" 
                                    Display="Dynamic"
                                    ForeColor="Red"
                                    ClientValidationFunction="ValidateInputFile"
                                    OnServerValidate="CVInputFile_ServerValidate"></asp:CustomValidator>-->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tabla">
                    <div class="fila">
                        <div class="celda2"><asp:Button ID="Nuevo" runat="server" Text="Nuevo" /></div>
                        <div class="celda2"><asp:Button ID="Guardar" runat="server" Text="Guardar" /></div>
                        <div class="celda2"><asp:Button ID="Eliminar" runat="server" Text="Eliminar" /></div>
                    </div>
                </div>
                <div class="gridinfo">
                    <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="Pro_ID" HeaderText="ID"></asp:BoundField>
                            <asp:BoundField DataField="Pro_Nombre" HeaderText="Nombre"></asp:BoundField>
                            <asp:BoundField DataField="Pro_Descripcion" HeaderText="Descripcion"></asp:BoundField>
                            <asp:BoundField DataField="Pro_Precio" HeaderText="Precio"></asp:BoundField>
                            <asp:ImageField DataImageUrlField="Pro_Imagen" HeaderText="Imagen" ControlStyle-Height="50px" ControlStyle-Width="50px"></asp:ImageField>
                            <asp:BoundField DataField="Pro_Stock" HeaderText="En Stock"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div id="formusuario">
                
            </div>
            <div id="formpedidos">

            </div>
        </body>
        <script src="AdminScripts/AdminScript.js"></script>
        <script type="text/javascript">
            window.onload = function () {
                const defaultFile = 'AdminImages/empty.jpg';
                const file = document.getElementById('<%= InputFile.ClientID %>');
                const img = document.getElementById('producto');
                file.addEventListener('change', e => {
                    if (e.target.files[0]) {
                        const reader = new FileReader();
                        reader.onload = function (e) {
                            img.src = e.target.result;
                        }
                        reader.readAsDataURL(e.target.files[0])
                    } else {
                        img.src = defaultFile;
                    }
                });
            };
        </script>
    </html>
</asp:Content>
