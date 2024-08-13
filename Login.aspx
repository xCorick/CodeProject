<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CodeProject.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="Estilos/LoginStyle.css" rel="stylesheet" />
    <title>Iniciar sesión</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="Scripts/RecoveryPass.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="p-3 p-md-4 p-xl-5">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-12 col-xxl-11">
                            <div class="card border-light-subtle shadow-sm">
                                <div class="row g-0">
                                    <div class="col-12 col-md-6">
                                        <a href="Default.aspx">
                                            <img class="img-fluid rounded-start w-100 h-100 object-fit-cover" src="Images/Background/Login1.png" loading="lazy" alt="Welcome to Carrillo Shop!"/>
                                        </a>
                                    </div>
                                    <div class="col-12 col-md-6 d-flex align-items-center justify-content-center">
                                        <div class="col-12 col-lg-11 col-xl-10">
                                            <div class="card-body p-3 p-md-4 p-xl-5">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <div class="mb-5 text-center">
                                                            <a href="Default.aspx"><img src="Images/Background/Logo.png" alt="BootstrapBrain Logo" width="300" height="150"/>
                                                                </a>
                                                        </div>
                                                            <h4 class="text-center"><em>¡Bienvenido de nuevo!</em></h4>
                                                            <h2 class="text-center">Iniciar Sesión</h2>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row gy-3 overflow-hidden">
                                                    <div class="col-12">
                                                        <div class="form-floating mb-3">
                                                            <h5>Ingresa tus datos</h5>
                                                        </div>
                                                        <div class="form-floating mb-3">
                                                            <label for="email" class="form-label">Correo</label>
                                                            <input type="email" runat="server" class="form-control" name="inputcorreo" id="inputcorreo" placeholder="Correo@ejemplo.com"/>
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-floating mb-3">
                                                            <label for="password" class="form-label">Contraseña</label>
                                                            <input type="password" runat="server" class="form-control" name="inputpassword" id="inputpassword" value="" placeholder="Contraseña" />
                                                        </div>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="form-check">
                                                          <input class="form-check-input" type="checkbox" value="" name="remember_me" id="remember_me"/>
                                                          <label class="form-check-label text-secondary" for="remember_me">
                                                            Recordar usuario
                                                          </label>
                                                        </div>
                                                     </div>
                                                    <div class="col-12">
                                                        <div class="d-grid d-flex gap-2 gap-md-4 flex-column flex-md-row justify-content-md-center mt-5">
                                                            <asp:Button ID="Entrar" runat="server" class="btn btn-dark btn-lg" Style="text-align: center" type="submit" Text="Iniciar sesión" OnClick="Entrar_Click" />
                                                        </div>
                                                        <div class="d-flex gap-2 gap-md-4 flex-column flex-md-row justify-content-md-center mt-5">
                                                            <a href="SingUp.aspx" class="link-secondary text-decoration-none">Crear cuenta nueva</a>
                                                        </div>
                                                        <div class="text-center mt-3">
                                                            <a href="#!" class="link-secondary text-decoration-none" id="recoverPasswordModal" onclick="abrirVentanaEmergente(); return false;">Olvidé mi contraseña</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                 <br />

                                                <!-- Botones a redes sociales -->
                                                <div class="row">
                                                    <div class="col-12">
                                                        <hr class="hr hr-blurry" />
                                                        <p class="text-center mt-4 mb-5">Continuar con:</p>
                                                    </div>
                                                    <div class="col-12">
                                                        <div class="d-flex gap-3 flex-column">
                                                            <a href="https://accounts.google.com/o/oauth2/auth" class="btn btn-lg btn-outline-dark">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                                                    <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                                                                </svg>
                                                                <span class="ms-2 fs-6">Ingresa con cuenta Google</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="d-flex gap-3 flex-column">
                                                    <a href="#!" class="btn btn-lg btn btn-outline-primary">
                                                        <svg xmlns="https://www.facebook.com/v12.0/dialog/oauth" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                            <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951" />
                                                        </svg>
                                                        <span class="ms-2 fs-6">Ingresar con Facebook</span>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>
    <!-- JavaScript de Bootstrap necesario para el funcionamiento del modal -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>