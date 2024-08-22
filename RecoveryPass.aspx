﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoveryPass.aspx.cs" Inherits="CodeProject.RecoveryPass" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Recuperar Contraseña</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="Estilos/LoginStyle.css" rel="stylesheet" />
    <script src="Scripts/RecoveryPass.js"></script>

    <script type="text/javascript">
        function cerrarVentana() {
            window.close();
        }

    </script>
</head>

<body>
    <section class="vh-100">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                    <div class="card" style="border-radius: 1rem;">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-5 d-none d-md-block">
                                <img src="Images/Background/RecoveryPass1.png" 
                                    alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                            </div>
                            <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                <div class="card-body p-4 p-lg-5 text-black">

                                    <form id="form1" runat="server">
                                        <div class="d-flex align-items-center mb-3 pb-1">
                                            <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                            <span class="h1 fw-bold mb-0">
                                                <img hfr="Login.aspx" style="width:421px; height:77px" src="Images/Background/Logo1.png" /></span>
                                        </div>

                                        <h2 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Recuperar contraseña</h2>
                                        <p>Introduce tu dirección de correo electrónico y te enviaremos un enlace para recuperar tu contraseña.</p>

                                        <div data-mdb-input-init class="form-outline mb-4">
                                            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="form-label" Text="Correo electrónico:"></asp:Label>
                                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control form-control-lg" Placeholder="Correo@ejemplo.com" />
                                            <asp:RequiredFieldValidator 
                                                ID="RequiredFieldValidator1" 
                                                runat="server" 
                                                ControlToValidate="txtEmail" 
                                                ErrorMessage="El correo electrónico es obligatorio." 
                                                ForeColor="Red" 
                                                Display="Dynamic" />
                                        </div>

                                        <div class="pt-1 mb-4">
                                            <button data-mdb-button-init data-mdb-ripple-init class="btn btn-dark btn-lg btn-block" type="submit">Envíar</button>
                                        </div>
                                        <div class="pt-1 mb-4">
                                            <button data-mdb-button-init data-mdb-ripple-init class="btn btn-light btn-lg btn-block" onclick="cerrarVentana()" type="button">Cancelar</button>
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
