<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="CodeProject.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .profile-container {
            max-width: 600px;
            margin: 0 auto;
            text-align:center;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .profile-picture {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }

        .profile-picture img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid #ccc;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input[type="text"],
        .form-group input[type="tel"],
        .form-group textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group textarea {
            resize: vertical;
        }

        .form-actions {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .form-actions button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-actions button[disabled] {
            background-color: #ccc;
            cursor: not-allowed;
        }
    </style>

    <div class="profile-container">
        <div class="profile-picture">
            <img src="Images/Items/UserImage.png" alt="ImgProfile" id="perfil"  />
            <asp:HiddenField ID="HFPicture" runat="server" />
        </div>

        <div class="file-upload-container">
            <asp:FileUpload ID="InputFile" runat="server" />
            <asp:Button ID="btnUploadPicture" runat="server" Text="Aceptar" OnClick="btnUploadPicture_Click" />
        </div>

        <div class="form-group">
            <label for="txtFirstName">Nombre:</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" ReadOnly="true" />
            <br />
            <asp:Label ID="LbNombre" runat="server" Text="Falta nombre" ForeColor="Red" visible="False"></asp:Label>
        </div>

        <div class="form-group">
            <label for="txtLastName">Apellidos:</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" ReadOnly="true" />
            <br />
            <asp:Label ID="LbApellidos" runat="server" Text="Faltan apellidos" ForeColor="Red" visible="False"></asp:Label>
        </div>

        <div class="form-group">
            <label for="txtPhone">Teléfono:</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" ReadOnly="true" />
        </div>

        <div class="form-actions">
            <asp:Button ID="btnEditProfile" runat="server" Text="Editar Perfil" OnClientClick="toggleProfileEdit(); return false;" />
            <asp:Button ID="btnSaveProfile" runat="server" Text="Guardar Cambios" Enabled="false" OnClick="btnSaveProfile_Click" />
        </div>

        <hr />

        <div class="form-group">
            <label for="txtStreet">Calle:</label>
            <asp:TextBox ID="txtStreet" runat="server" CssClass="form-control" ReadOnly="true" />
            <br />
            <asp:Label ID="LbCalle" runat="server" Text="Falta la calle" ForeColor="Red" visible="False"></asp:Label>
        </div>

        <div class="form-group">
            <label for="txtNeighborhood">Colonia:</label>
            <asp:TextBox ID="txtNeighborhood" runat="server" CssClass="form-control" ReadOnly="true" />
            <br />
            <asp:Label ID="LbColonia" runat="server" Text="Falta la Colonia" ForeColor="Red" visible="False"></asp:Label>
        </div>

        <div class="form-group">
            <label for="txtCity">Ciudad:</label>
            <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" ReadOnly="true" />
            <br />
            <asp:Label ID="LbCiudad" runat="server" Text="Falta la ciudad" ForeColor="Red" visible="False"></asp:Label>
        </div>

        <div class="form-group">
            <label for="txtState">Estado:</label>
            <asp:TextBox ID="txtState" runat="server" CssClass="form-control" ReadOnly="true" />
            <br />
            <asp:Label ID="LbEstado" runat="server" Text="Falta el estado" ForeColor="Red" visible="False"></asp:Label>
        </div>

        <div class="form-group">
            <label for="txtPostalCode">Código Postal:</label>
            <asp:TextBox ID="txtPostalCode" runat="server" CssClass="form-control" ReadOnly="true" />
            <br />
            <asp:Label ID="Lbcp" runat="server" Text="Falta codigo postal" ForeColor="Red" visible="False"></asp:Label>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnEditAddress" runat="server" Text="Editar Dirección" OnClientClick="toggleAddressEdit(); return false;" />
            <asp:Button ID="btnSaveAddress" runat="server" Text="Guardar Dirección" Enabled="false" />
        </div>
    </div>

    <script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function () {
            const defaultFile = 'Images/Items/UserImage.png';
            const file = document.getElementById('<%= InputFile.ClientID %>');
    const img = document.getElementById('perfil');
            const hiddenFieldImageUrl = document.getElementById('<%= HFPicture.ClientID %>');

            // Actualiza la fuente de la imagen al cargar la página
            if (hiddenFieldImageUrl.value) {
                img.src = hiddenFieldImageUrl.value;
            }

            file.addEventListener('change', e => {
                if (e.target.files[0]) {
                    const reader = new FileReader();
                    reader.onload = function (e) {
                        img.src = e.target.result;
                        hiddenFieldImageUrl.value = e.target.result;
                    }
                    reader.readAsDataURL(e.target.files[0])
                } else {
                    img.src = defaultFile;
                }
            });
        });


        function toggleProfileEdit() {
            setProfileEditable(true);
            return false; // Prevenir postback').disabled = !editable;
        }

        function setProfileEditable(editable) {
            document.getElementById('<%= txtFirstName.ClientID %>').readOnly = !editable;
            document.getElementById('<%= txtLastName.ClientID %>').readOnly = !editable;
            document.getElementById('<%= txtPhone.ClientID %>').readOnly = !editable;
            document.getElementById('<%= btnSaveProfile.ClientID %>').disabled = !editable;
        }

        function toggleAddressEdit() {
            setAddressEditable(true);
            return false; // Prevenir postback
        }

        function setAddressEditable(editable) {
            document.getElementById('<%= txtStreet.ClientID %>').readOnly = !editable;
            document.getElementById('<%= txtNeighborhood.ClientID %>').readOnly = !editable;
            document.getElementById('<%= txtCity.ClientID %>').readOnly = !editable;
            document.getElementById('<%= txtState.ClientID %>').readOnly = !editable;
            document.getElementById('<%= txtPostalCode.ClientID %>').readOnly = !editable;
            document.getElementById('<%= btnSaveAddress.ClientID %>').disabled = !editable;
        }
    </script>
</asp:Content>


