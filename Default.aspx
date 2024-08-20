<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CodeProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>
    <html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors"/>
    <meta name="generator" content="Hugo 0.84.0"/>
    <title>Inicio</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/album/"/>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/carousel/"/>
      
      <!-- Album -->
      <script src="Scripts/AlbumScript.js"></script>
      <link href="Estilos/AlbumStyle.css" rel="stylesheet" />

    <!-- Bootstrap core CSS -->
<link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
<link href="album.css" rel="stylesheet"/>
    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180"/>
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png"/>
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png"/>
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json"/>
<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3"/>
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico"/>
<meta name="theme-color" content="#7952b3"/>


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
.col-md-4 {
    max-width: 33.33%; /* Ocupa un tercio del ancho total */
    flex: 0 0 33.33%; /* Asegura que cada columna ocupe un tercio del ancho */
}

.card {
    height: 500px; /* Aumenta la altura de la tarjeta si lo deseas */
}

.card-img-top {
    height: 300px; /* Aumenta la altura de la imagen */
    object-fit: cover;
}

.card-body {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    height: calc(100% - 250px); /* Ajusta la altura del cuerpo de la tarjeta según la nueva altura de la imagen */
}


    </style>

    
    <!-- Custom styles for this template -->
    <link href="carousel.css" rel="stylesheet"/>
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
                  <img src="https://img.freepik.com/foto-gratis/grupo-atletas-diversos-sentados-juntos_53876-146063.jpg?t=st=1721603014~exp=1721606614~hmac=ed36dc973530a4e5c196c547e6c30916c04b51067428254e5a8ca66d38336b0c&w=1380" class="d-block w-100" alt="Third slide" style="height: 800px;"/>
                  <div class="container">
                     <div class="carousel-caption text-start">
                        <h1>Uniformes escolares, deportivos & más..</h1>
                        <p>Ofertas exclusivas y promociones especiales. ¡Aprovecha antes de que acaben!</p>
                        <p><a class="btn btn-lg btn-info" href="#">Ver catálago</a></p>
                     </div>
                  </div>
               </div>
               <div class="carousel-item">
                  <img src="https://palermotextil.com/wp-content/uploads/2020/02/las-mejores-telas-para-uniformes-escolares-1.jpg" class="d-block w-100" alt="First slide" style="height: 800px;"/>
                  <!--<div class="container">
                     <div class="carousel-caption text-end" >
                        <h1>Línea de ropa</h1>
                        <p>Uniformes escolares, deportivos y casacas de calidad. Viste con comodidad y con estilo.</p>
                        
                     </div>
                  </div>-->
               </div>
               <div class="carousel-item">
                  <img src="https://e0.pxfuel.com/wallpapers/663/300/desktop-wallpaper-sport-top-36-quality-cool-sport-pics-cool-sports.jpg" class="d-block w-100" alt="Second slide" style="height: 800px;"/>           
                   <div class="container">
                     <div class="carousel-caption text-end">
                        <h1>Equipo deportivo</h1>
                        <p>¡Encuentra todo lo que necesites para maximizar tu rendimiento y comodidad!</p>
                        
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
 </main>
    <br />

  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row" style="background-color: rgba(128, 128, 128, 0.5); padding: 20px; border: 1px solid #ccc;">
      <div class="col-lg-4">
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://imgs.search.brave.com/jLL3ye29Opr5-C1MvA3vLORHJXV67gm6DAHaDnCg-ig/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jb250/ZW50cy5tZWRpYWRl/Y2F0aGxvbi5jb20v/cDIxNTQwMzEvayRh/YzIyMzIyNzYzNWNh/MTU3OTgyZmM4YjJl/NzBmZTIwYy9iYWxv/bi1kZS1mdXRib2wt/Zmlyc3Qta2ljay10/YWxsYS0zLXBhcmEt/bmlub3MtbWVub3Jl/cy1kZS05LWFub3Mt/YXp1bC5qcGc_Zm9y/bWF0PWF1dG8mcXVh/bGl0eT00MCZmPTUy/MHg1MjA" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="70%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>

        <h2>Equipo deportivo</h2>
        <p><em>Encuentra lo necesario para practicar tus deportes favoritos, explora nuestro catálago de productos y obtén más información.</em></p>
      </div><!-- /.col-lg-4 -->

      <div class="col-lg-4">
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://i5.walmartimages.com.mx/mg/gm/3pp/asr/5c743c93-3c04-40db-af21-3bb9d701e9ba.dd64c224ed05f8a6165791c82b0a981e.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>

        <h2>Línea de ropa</h2>
        <p><em>Explora nuestra amplia gama de productos que abarcan desde uniformes escolares y deportivos como casacas personalizadas. ¡No te quedes sin la tuya!</em></p>
      </div><!-- /.col-lg-4 -->

       <div class="col-lg-4">
        <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://http2.mlstatic.com/D_NQ_NP_645251-MLM44881175006_022021-O.webp" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em"></text></img>

        <h2>Diseños personalizados</h2>
        <p><em><strong>¿Te interesa adquirir un diseño único y a tu gusto?</strong> ¡Contáctanos! Llama o visita nuestra tienda física para ser atendid@ por una persona de nuestro equipo y elige el diseño que más te guste.</em></p>
        <p><a class="btn btn-secondary" href="Contact">¡Contáctanos! &raquo;</a></p>
      </div><!-- /.col-lg-4 -->

    </div><!-- /.row -->


    <!-- Inicio de album -->

    <hr class="featurette-divider"/>

    <main role="main">

        <section class="jumbotron text-center">
            <div class="container" style="background-color: #e9ecef; padding: 2rem 1rem; border-radius: 0.3rem; margin-bottom: 2rem;">
                <h1 class="jumbotron-heading">Explora nuestros productos</h1>
                <p class="lead text-muted">Encuentra desde equipo
                    deportivo hasta uniformes escolares y deportivos de calidad, tenemos lo que necesitas para estar preparado. 
                    Navega por nuestra amplia gama de productos y encuentra las mejores ofertas y novedades.</p>
                <p>
                    <a href="#" class="btn btn-dark my-2">Ir al catálogo</a>
                </p>
            </div>
        </section>

        <div class="album py-5 bg-light">
            <div class="container">

                <div class="row">
                    <!-- Card 1 -->
                      <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                             <div class="card-body">
                                 <asp:HiddenField ID="HiddenField1" runat="server" />
                                 <p class="card-text">This is another card with different content.</p>
                                 <div class="d-flex justify-content-between align-items-center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                         <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                     </div>
                                     <small class="text-muted">10 mins</small>
                                 </div>
                             </div>
                         </div>
                        </div>
                    <!-- Card 2 -->
                         <div class="col-md-4">
                             <div class="card mb-4 box-shadow">
                                <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                                 <div class="card-body">
                                     <asp:HiddenField ID="HiddenField2" runat="server" />
                                     <p class="card-text">This is another card with different content.</p>
                                     <div class="d-flex justify-content-between align-items-center">
                                         <div class="btn-group">
                                             <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                             <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                         </div>
                                         <small class="text-muted">10 mins</small>
                                     </div>
                                 </div>
                             </div>
                           </div>
                     <!-- Card 3 -->
                         <div class="col-md-4">
                             <div class="card mb-4 box-shadow">
                                 <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                                 <div class="card-body">
                                     <asp:HiddenField ID="HiddenField3" runat="server" />
                                     <p class="card-text">This is another card with different content.</p>
                                     <div class="d-flex justify-content-between align-items-center">
                                         <div class="btn-group">
                                             <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                             <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                         </div>
                                         <small class="text-muted">10 mins</small>
                                     </div>
                                 </div>
                             </div>
                        </div>
                     <!-- Card 4 -->
                          <div class="col-md-4">
                             <div class="card mb-4 box-shadow">
                                 <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                                 <div class="card-body">
                                     <asp:HiddenField ID="HiddenField4" runat="server" />
                                     <p class="card-text">This is another card with different content.</p>
                                     <div class="d-flex justify-content-between align-items-center">
                                         <div class="btn-group">
                                             <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                             <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                         </div>
                                         <small class="text-muted">10 mins</small>
                                     </div>
                                 </div>
                             </div>
                            </div>
                     <!-- Card 5 -->
                     <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                             <div class="card-body">
                                 <asp:HiddenField ID="HiddenField5" runat="server" />
                                 <p class="card-text">This is another card with different content.</p>
                                 <div class="d-flex justify-content-between align-items-center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                         <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                     </div>
                                     <small class="text-muted">10 mins</small>
                                 </div>
                             </div>
                         </div>
                        </div>
                     <!-- Card 6 -->
                     <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                             <div class="card-body">
                                 <asp:HiddenField ID="HiddenField6" runat="server" />
                                 <p class="card-text">This is another card with different content.</p>
                                 <div class="d-flex justify-content-between align-items-center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                         <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                     </div>
                                     <small class="text-muted">10 mins</small>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <!-- Card 7 -->
                     <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                             <div class="card-body">
                                 <asp:HiddenField ID="HiddenField7" runat="server" />
                                 <p class="card-text">This is another card with different content.</p>
                                 <div class="d-flex justify-content-between align-items-center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                         <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                     </div>
                                     <small class="text-muted">9 mins</small>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <!-- Card 8 -->
                     <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                             <div class="card-body">
                                 <asp:HiddenField ID="HiddenField8" runat="server" />
                                 <p class="card-text">This is another card with different content.</p>
                                 <div class="d-flex justify-content-between align-items-center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                         <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                     </div>
                                     <small class="text-muted">10 mins</small>
                                 </div>
                             </div>
                         </div>
                     </div>
                    <!-- Card 9 -->
             <div class="col-md-4">
                <div class="card mb-4 box-shadow">
                    <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                    <div class="card-body">
                        <asp:HiddenField ID="HiddenField9" runat="server" />
                        <p class="card-text">This is another card with different content.</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div class="btn-group">
                                <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                            </div>
                            <small class="text-muted">9 mins</small>
                        </div>
                    </div>
                </div>
            </div>

                     <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                             <div class="card-body">
                                 <asp:HiddenField ID="HiddenField10" runat="server" />
                                 <p class="card-text">This is another card with different content.</p>
                                 <div class="d-flex justify-content-between align-items-center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                         <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                     </div>
                                     <small class="text-muted">10 mins</small>
                                 </div>
                             </div>
                         </div>
                     </div>

                                         <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                             <div class="card-body">
                                 <asp:HiddenField ID="HiddenField11" runat="server" />
                                 <p class="card-text">This is another card with different content.</p>
                                 <div class="d-flex justify-content-between align-items-center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                         <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                     </div>
                                     <small class="text-muted">10 mins</small>
                                 </div>
                             </div>
                         </div>
                     </div>

                                         <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                             <div class="card-body">
                                 <asp:HiddenField ID="HiddenField12" runat="server" />
                                 <p class="card-text">This is another card with different content.</p>
                                 <div class="d-flex justify-content-between align-items-center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                         <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                     </div>
                                     <small class="text-muted">10 mins</small>
                                 </div>
                             </div>
                         </div>
                     </div>

                                         <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="" alt="Card image cap" data-image=""/>
                             <div class="card-body">
                                 <asp:HiddenField ID="HiddenField13" runat="server" />
                                 <p class="card-text">This is another card with different content.</p>
                                 <div class="d-flex justify-content-between align-items-center">
                                     <div class="btn-group">
                                         <button type="button" class="btn btn-sm btn-outline-secondary showImageBtn">Ver</button>
                                         <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                                     </div>
                                     <small class="text-muted">10 mins</small>
                                 </div>
                             </div>
                         </div>
                     </div>
                </div>
            </div>
        </div>

        <!-- Modal -->
        <div id="modal" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Image View</h5>
                        <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img id="modalImage" src="" class="img-fluid" alt="Image"/>
                    </div>
                </div>
            </div>
        </div>
</main>
  
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="script.js"></script>
<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


      <script>
          document.addEventListener("DOMContentLoaded", function () {
              // Obtener todas las imágenes y los HiddenField
              const images = document.querySelectorAll(".card-img-top");
              const hiddenFields = document.querySelectorAll("input[type='hidden']");

              // Iterar sobre las imágenes y actualizar sus src con los valores de los HiddenField
              images.forEach((img, index) => {
                  const hiddenField = hiddenFields[index];
                  if (hiddenField && hiddenField.value) {
                      img.src = hiddenField.value;
                  }
              });

              // Añadir evento a los botones para mostrar las imágenes
              const showImageBtns = document.querySelectorAll(".showImageBtn");
              showImageBtns.forEach((button, index) => {
                  button.addEventListener("click", function () {
                      const hiddenField = hiddenFields[index];
                      if (hiddenField && hiddenField.value) {
                          img.src = hiddenField.value;
                      }
                  });
              });
          });


      </script>


  </body>
</html>

</asp:Content>
