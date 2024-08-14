<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CodeProject.Contact" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
      <meta name="description" content=""/>
      <meta name="author" content=""/>
      <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico"/>

      <title>Jumbotron Template for Bootstrap</title>

      <!-- Bootstrap core CSS -->
      <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
      <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/blog/"/>
      <link href="lib/twitter-bootstrap/css/bootstrap.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="jumbotron.css" rel="stylesheet"/>
      <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet"/>
      <link href="blog.css" rel="stylesheet"/>
      <link href="Estilos/MapStyle.css" rel="stylesheet" />
  </head>

  <body>
      <script src="Scripts/MapScript.js"></script>
      <main role="main">

          <!-- Main jumbotron for a primary marketing message or call to action -->
                <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
                  <div class="row">
                     <div class="col-12 col-md-6 d-flex align-items-center justify-content-center">
                        <main role="main" class="inner cover">
                    <h1 class="display-4 font-italic"><strong><em>¡Contactate con nosotros!</em></strong></h1>
                      <address>
                          Encuentranos en calle Gregorio Payro #433, <br />
                          código 85170, col. Constitución en Ciudad Obregón, Son.<br />
                          <abbr title="Phone">Tel:</abbr>
                          425.555.0100.
                        </address>
                        <address>
                              <strong>Support:</strong>   <a href="mailto:uniformescarrillo@gmail.com">Uniformescarrillo@gmail.com</a><br />
                              <strong>Marketing:</strong> <a href="mailto:carrilloshop@outlook.com">Carrilloshop@outlook.com</a>
                        </address>
                        <a href="About.aspx" class="btn btn-lg btn-secondary">Sobre nosotros</a>
                         </main>
                  </div>
                      <div class="col-12 col-md-6" >
                          <a href="Default.aspx"><img class="img-fluid rounded-start w-100 h-70 object-fit-cover" src="https://educacion.chihuahua.gob.mx/uig/sites/default/files/contact2_0.jpg" loading="lazy" alt="Welcome to Carrillo Shop!" /></a>
                      </div>
                    <hr />
                  </div>
                </div>


            
          <div class="container">
              <!-- Example row of columns -->
              <div class="row" style="background-color:white;">
                  <div><h1><strong>Puedes encontrarnos en:</strong></h1></div>
                   <div class="col">
                       <div class="mapouter"><div class="gmap_canvas"><iframe width="100%" height="560" id="gmap_canvas"
                           src="https://maps.google.com/maps?q=gregorio+payro&t=&z=17&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                           <a href="https://online-timer.me/"></a><br />
                           <a href="https://online.stopwatch-timer.net/"></a><br />
                           <a href="https://www.embedmaps.co"></a> 
                           </div>
                       </div>
                   </div>
              </div>
              <hr />
      <!-- <div class="container">
  <div class="row">
     Primera columna 
    <div class="col-md-4">
      <h2>Heading</h2>
      <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
      <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
    </div>

    <!-- Tarjeta centrada horizontalmente en el contenedor de la fila 
    <div class="col-md-4 d-flex justify-content-center align-items-center">
      <div class="card text-center" style="width: 18rem;">
        <div class="card-body">
          <h5 class="card-title">Visita nuestra sucursal</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-lg btn-secondary">Ir al inicio</a>
        </div>
      </div>
    </div>

    Tercera columna
    <div class="col-md-4">
      <h2>Heading</h2>
      <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
      <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
    </div>
    </div> 
      </main> -->

      <!-- Bootstrap core JavaScript 
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
      <script src="../../assets/js/vendor/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </body>
  </html>
    </div>
</asp:Content>