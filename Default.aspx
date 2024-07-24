<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CodeProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.84.0">
    <title>Carousel Template · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/carousel/">

    

    <!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet">
  </head>
  <body>
    
<main>
<div class="container-fluid">
   <div class="row">
      <div class="col">
         <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
               <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
               <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
               <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <img src="https://palermotextil.com/wp-content/uploads/2020/02/las-mejores-telas-para-uniformes-escolares-1.jpg" class="d-block w-100" alt="First slide" style="height: 800px;">
                  <div class="container">
                     <div class="carousel-caption text-start">
                        <h1>Example headline.</h1>
                        <p>Some representative placeholder content for the first slide of the carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <img src="https://img.freepik.com/foto-gratis/composicion-futbol-camiseta_23-2147827778.jpg?t=st=1721600155~exp=1721603755~hmac=081d92ec78f23326790b05ea2a94d2f87faee58800b38005a88863d244a4f93a&w=1380" class="d-block w-100" alt="Second slide" style="height: 800px;">
                  <div class="container">
                     <div class="carousel-caption">
                        <h1>Another example headline.</h1>
                        <p>Some representative placeholder content for the second slide of the carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <img src="https://img.freepik.com/foto-gratis/grupo-atletas-diversos-sentados-juntos_53876-146063.jpg?t=st=1721603014~exp=1721606614~hmac=ed36dc973530a4e5c196c547e6c30916c04b51067428254e5a8ca66d38336b0c&w=1380" class="d-block w-100" alt="Third slide" style="height: 800px;">
                  <div class="container">
                     <div class="carousel-caption text-end">
                        <h1>One more for good measure.</h1>
                        <p>Some representative placeholder content for the third slide of this carousel.</p>
                        <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
                     </div>
                  </div>
               </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
               <span class="carousel-control-prev-icon" aria-hidden="true"></span>
               <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
               <span class="carousel-control-next-icon" aria-hidden="true"></span>
               <span class="visually-hidden">Next</span>
            </button>
         </div>
      </div>
   </div>
</div>

</div>

    <br />

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://imgs.search.brave.com/jLL3ye29Opr5-C1MvA3vLORHJXV67gm6DAHaDnCg-ig/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jb250/ZW50cy5tZWRpYWRl/Y2F0aGxvbi5jb20v/cDIxNTQwMzEvayRh/YzIyMzIyNzYzNWNh/MTU3OTgyZmM4YjJl/NzBmZTIwYy9iYWxv/bi1kZS1mdXRib2wt/Zmlyc3Qta2ljay10/YWxsYS0zLXBhcmEt/bmlub3MtbWVub3Jl/cy1kZS05LWFub3Mt/YXp1bC5qcGc_Zm9y/bWF0PWF1dG8mcXVh/bGl0eT00MCZmPTUy/MHg1MjA" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="70%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>

        <h2>Equipo deportivo</h2>
        <p><em>Encuentra lo necesario para practicar tus deportes favoritos, explora nuestro catálago de productos y obtén más información.</em></p>
        <p><a class="btn btn-secondary" href="#">Ir al catálago &raquo;</a></p>
      </div><!-- /.col-lg-4 -->

      <div class="col-lg-4">
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://i5.walmartimages.com.mx/mg/gm/3pp/asr/5c743c93-3c04-40db-af21-3bb9d701e9ba.dd64c224ed05f8a6165791c82b0a981e.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>

        <h2>Línea de ropa</h2>
        <p><em>Explora nuestra amplia gama de productos que abarcan desde uniformes escolares y deportivos como casacas personalizadas. ¡No te quedes sin la tuya!</em></p>
        <p><a class="btn btn-secondary" href="#">Ir al catálago &raquo;</a></p>
      </div><!-- /.col-lg-4 -->

       <div class="col-lg-4">
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://http2.mlstatic.com/D_NQ_NP_645251-MLM44881175006_022021-O.webp" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>

        <h2>Diseños personalizados</h2>
        <p><em><strong>¿Te interesa adquirir un diseño único y a tu gusto?</strong> ¡Contáctanos! Llama o visita nuestra tienda física para ser atendid@ por una persona de nuestro equipo y elige el diseño que más te guste.</em></p>
        <p><a class="btn btn-secondary" href="Contact">¡Contáctanos! &raquo;</a></p>
      </div><!-- /.col-lg-4 -->

    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">


    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of how this layout would work with some actual real-world content in place.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="350" height="350" src="https://img.freepik.com/foto-gratis/retrato-joven-estudiante-uniforme-escolar-saltando-aire_23-2150282588.jpg?t=st=1721857193~exp=1721860793~hmac=8e4b8707048256c59a91d30234fa6de21b78541c8d08e2d16693cab41e62cca8&w=740" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="60%" height="40%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></text></img>

      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
        <p class="lead">And yes, this is the last block of representative placeholder content. Again, not really intended to be actually read, simply here to give you a better view of what this would look like with some actual content. Your content.</p>
      </div>
      <div class="col-md-5">
        <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" src="https://img.freepik.com/foto-gratis/cerrar-retrato-jugador-beisbol_23-2150885205.jpg?t=st=1721857501~exp=1721861101~hmac=3b3dee7f764e7686ade07808a5fbb436e998be874cb98d93683a7e65f12e5914&w=900" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></text></img>

      </div>
    </div>

    <hr class="featurette-divider"/>

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of how this layout would work with some actual real-world content in place.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="350" height="350" src="https://img.freepik.com/foto-gratis/retrato-joven-estudiante-uniforme-escolar-saltando-aire_23-2150282588.jpg?t=st=1721857193~exp=1721860793~hmac=8e4b8707048256c59a91d30234fa6de21b78541c8d08e2d16693cab41e62cca8&w=740" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="60%" height="40%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em"></text></img>

      </div>
    </div>
    <hr class="featurette-divider"/>
    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


    <script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

      
  </body>
</html>

</asp:Content>
