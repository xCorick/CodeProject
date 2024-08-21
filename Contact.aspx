<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CodeProject.Contact" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- DOCTYPE y estructura HTML deben ser parte del archivo .aspx que se gestiona por ASP.NET -->
    <div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
        <!-- Primer div con información de contacto -->
        <div class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
            <!-- Carousel -->
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="flex: 1; max-width: 500px;">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="ImagenesProductos/foto1.png" class="d-block w-100" alt="Imagen 1"/>
                    </div>
                    <div class="carousel-item">
                        <img src="imagenesProductos/foto2.png" class="d-block w-100" alt="Imagen 2"/>
                    </div>
                    <div class="carousel-item">
                        <img src="imagenesProductos/foto3.png" class="d-block w-100" alt="Imagen 3"/>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only"></span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only"></span>
                </a>
            </div>
        </div>
        <!-- Segundo div con el carrusel -->
        <div class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
            <div class="my-3 p-3">
                <a><img src="Images/Background/Logo1.png" style="width:800px; height:150px;" alt="Logo" /></a>
                <div class="contact-info">
                    <h4 class="display-5"><strong>Encuentranos en:</strong></h4>
                    <address>
                        Calle Gregorio Payro #433 <br />
                        código 85170, colonia Constitución, Ciudad Obregón, Sonora<br />
                    </address>
                    <h4 class="display-5"><strong>O contáctate con nosotros:</strong></h4>
                    <address>
                        <abbr title="Phone">Tel:</abbr> +52 6441503104 <br />
                        <strong>Support:</strong> <a href="mailto:uniformescarrillo@gmail.com" style="color:blue">uniformescarrillo@gmail.com</a><br />
                    </address>
                </div>
            </div>
            <div class="bg-dark box-shadow mx-auto" style="width: 80%; height: 500px; border-radius: 21px 21px 0 0;">
                <a>
                    <img src="Images/Background/messages1.jpg" width="60%" height="500px"; /></a>
            </div>
        </div>
    </div>

    <!-- Map -->
    <div class="bg-dark position-relative overflow-hidden p-3 p-md-3 m-md-3 text-center bg-light" style="margin:10px 0;">
        <div class="col-md-12 p-lg-3 mx-auto my-3">
            <h1 class="display-4 font-weight-normal" style="color: white;"><strong>Ubícanos en:</strong></h1>
            <br />
            <div class="mapouter">
                <div class="gmap_canvas">
                    <iframe width="100%" height="600" id="gmap_canvas" 
                        src="https://maps.google.com/maps?q=gregorio+payro+%23433&t=&z=17&ie=UTF8&iwloc=&output=embed" 
                        frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
                    </iframe>
                    <style>
                        .mapouter {
                            position: relative;
                            text-align: right;
                            height: 600px;
                            width: 100%;
                            margin: 0 auto;
                        }
                        .gmap_canvas {
                            overflow: hidden;
                            background: none !important;
                            height: 600px;
                            width: 100%;
                        }
                    </style>
                </div>
            </div>
        </div>
        <div class="product-device box-shadow d-none d-md-block"></div>
        <div class="product-device product-device-2 box-shadow d-none d-md-block"></div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
        Holder.addTheme('thumb', {
            bg: '#55595c',
            fg: '#eceeef',
            text: 'Thumbnail'
        });
    </script>
</asp:Content>