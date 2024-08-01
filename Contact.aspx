<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CodeProject.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <!DOCTYPE html>
  <html lang="en">
  <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="icon" href="/docs/4.0/assets/img/favicons/favicon.ico">

      <title>Jumbotron Template for Bootstrap</title>

      <!-- Bootstrap core CSS -->
      <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
      <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/blog/"/>
      <link href="lib/twitter-bootstrap/css/bootstrap.min.css" rel="stylesheet" />
      <!-- Custom styles for this template -->
      <link href="jumbotron.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet"/>
  <link href="blog.css" rel="stylesheet"/>
      
  </head>

  <body>
      <script src="Scripts/MapScript.js"></script>
      <main role="main">

          <!-- Main jumbotron for a primary marketing message or call to action -->
                <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
                  <div class="row">
                     <div class="col-12 col-md-6 d-flex align-items-center justify-content-center">
                        <main role="main" class="inner cover">
                    <h1 class="display-4 font-italic"><strong><em>¡Comunicate con nosotros!</em></strong></h1>
                      <address>
                          Encuentranos en calle Gregorio Payro #433 <br />
                          código 85170, col. Constitución, Ciudad Obregón,Son.<br />
                          <abbr title="Phone">Tel:</abbr>
                          425.555.0100
                        </address>
                        <address>
                              <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
                              <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
                        </address>
                      <a href="#" class="btn btn-lg btn-secondary">Learn more</a>
                         </main>
                  </div>
                      <div class="col-12 col-md-6" >
                          <a href="Default.aspx"><img class="img-fluid rounded-start w-100 h-70 object-fit-cover" src="https://img.freepik.com/foto-gratis/chico-atractivo-joven-camiseta-roja-casual-hace-senal-telefono-indica-dedo-indice-directamente-camara_273609-18651.jpg?t=st=1721821016~exp=1721824616~hmac=42458a2e07d9f3bcb1d8043dbfb7d94489cd45ef3db2e29e5c49e6a4934df02a&w=1380" loading="lazy" alt="Welcome to Carrillo Shop!" /></a>
                      </div>
                    <hr />
                  </div>
                </div>

          <div class="container">
              <!-- Example row of columns -->
              <div class="row" style="background-color:white;">
                   <div class="col">
                       <div> <h1 class="display-4 font-bold"><strong>Encuentranos en: </strong></h1></div>
                       <div class="embed-responsive embed-responsive-16by9" id="map">
                           <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d117996.95037632967!2d-74.05953969406828!3d40.75468158321536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2588f046ee661%3A0xa0b3281fcecc08c!2sManhattan%2C%20Nowy%20Jork%2C%20Stany%20Zjednoczone!5e1!3m2!1spl!2spl!4v1672242444695!5m2!1spl!2spl" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                       </div>
                   </div>
              </div>
              <hr />
              <div class="container">
                  <div class="row">
                   <div class="col-md-4">
                       <h2>Heading</h2>
                       <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                       <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                   </div>
                   <div class="col-md-4">
                       <h2>Heading</h2>
                       <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
                       <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                   </div>
                   <div class="col-md-4">
                       <h2>Heading</h2>
                       <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
                       <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
                   </div>
                      </div>
              </div>
          </div> <!-- /container -->

      </main>

      <!-- Bootstrap core JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
      <script src="../../assets/js/vendor/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </body>
  </html>
</asp:Content>
