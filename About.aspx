<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CodeProject.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico"/>

    <title>Blog Template for Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/blog/"/>
    <link href="lib/twitter-bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet"/>
    <link href="blog.css" rel="stylesheet"/>
  </head>

  <body>
      <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
            <div class="row">
                <!-- Imagen a la izquierda -->
                <div class="col-md-6 px-0">
                    <a href="Default.aspx">
                        <img class="img-fluid rounded-start w-100 h-70 object-fit-cover" 
                             src="Images/Background/About.png" 
                             style="width:100%; height:auto;" 
                             loading="lazy" 
                             alt="Welcome to Carrillo Shop!" style="background-color:white" />
                    </a>
                </div>
                <!-- Texto a la derecha -->
                <div class="col-md-6 d-flex flex-column justify-content-center">
                    <h1 class="display-4 font-italic">Uniformes Carrillo</h1>
                    <p class="lead my-3">Uniformes Carrillo es una empresa local dedicada a la confección y venta de uniformes deportivos,
                ubicada en Ciudad Obregón, Sonora. 
                Situada específicamente en Calle Gregorio Payro #433, col Constitución en Ciudad Obregón, Sonora.
                    </p>
                    <p class="lead mb-0">
                        <a href="Contact.aspx" class="btn btn-lg btn-secondary">¡Contáctanos!</a> 
                    </p>
                </div>
                <hr />
            </div>
        </div>

      <br />
      <div class="row mb-2">
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
             <!--<strong class="d-inline-block mb-2 text-primary">World</strong>-->
              <h3 class="mb-0">
                <a class="text-dark">Misión</a>
              </h3>
              <p class="card-text mb-auto">Nuestra misión es proporcionar productos de alta calidad que permitan a nuestros clientes alcanzar su máximo 
                  rendimiento en el ámbito deportivo. Nos esforzamos por ofrecer un servicio excepcional, mantener estándares de calidad impecables en nuestros productos y contribuir 
                   al desarrollo del deporte en nuestra comunidad.</p>
            </div>
            <img class="card-img-right flex-auto d-none d-md-block" src="https://d1ih8jugeo2m5m.cloudfront.net/2022/09/imagenes-sin-copyright-gratis-1200x685.jpg" style="width:480px;height:300px;" alt="Card image cap"/>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
             <!-- <strong class="d-inline-block mb-2 text-success">Design</strong>-->
              <h3 class="mb-0">
                <a class="text-dark">Visión</a>
              </h3>
              <p class="card-text mb-auto">Nuestra visión es convertirnos en la principal opción para los equipos deportivos locales, para los aficionados al 
                  deporte en Ciudad Obregón y sus alrededores. Buscamos expandir nuestra presencia en el mercado, diversificar nuestra oferta de productos y brindar la mejor atención.</p>       
            </div>
            <img class="card-img-right flex-auto d-none d-md-block" src="https://www.myhubintranet.com/wp-content/uploads/2021/01/develop-company-vision.jpg" style="width:500px;height:300px;" alt="Card image cap"/>
          <br />
          </div>
        </div>
      </div>

      <hr />
 
   <!-- <main role="main" class="container">
      <div class="row">
        <aside class="col-md-4 blog-sidebar">
          <div class="p-3 mb-3 bg-light rounded">
            <h4 class="font-italic">Sobre nosotros</h4>
            <p class="mb-0">Uniformes Carrillo es una empresa local dedicada a la confección y venta de uniformes deportivos, ubicada en Ciudad Obregón, Sonora. 
    Situada específicamente en Calle Gregorio Payro #433. col Constitución en Ciudad Obregón, Sonora.</p>
          </div>
        </aside><!-- /.blog-sidebar 

      </div><!-- /.row

    </main><!-- /.container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
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
  </body>
</html>

</asp:Content>
