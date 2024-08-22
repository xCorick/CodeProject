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
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="Estilos/DefaultStyle.css" rel="stylesheet"/>
        <link href="Estilos/AlbumStyle.css" rel="stylesheet"/>
        <link href="carousel.css" rel="stylesheet"/>
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

.modal-lg {
    max-width: 35%;
}

.card {
    height: 600px;
}

.card-img-top {
    width: auto; /* Ajusta el ancho según tu necesidad */
    height: 300px; /* Ajusta la altura según tu necesidad */
    object-fit: cover;
}

#modalImage {
    width: 400px;
    height: 400px;
}

#modalDescription {
    font-size: 16px;
    line-height: 1.5;
    word-wrap: break-word; /* Asegura que el texto largo se ajuste al contenedor */
}

/* Ajustes adicionales para el espaciado */
.modal-body {
    padding: 2rem; /* Ajusta el espaciado dentro del modal */
}

.modal-header, .modal-footer {
    padding: 1rem;
}
        </style>
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
                                        <!--<p><a class="btn btn-lg btn-info" href="#">Ver catálago</a></p>-->
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="Images/Background/35.png" class="d-block w-100" alt="First slide" style="height: 800px;"/>
                            </div>
                            <div class="carousel-item">
                                <img src="Images/Background/34.png" class="d-block w-100" alt="Second slide" style="height: 800px;"/>          
                                <div class="container">
                                  <!--  <div class="carousel-caption text-end">
                                        <h1>Equipo deportivo</h1>
                                        <p>¡Encuentra todo lo que necesites para maximizar tu rendimiento y comodidad!</p>
                                    </div>-->
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
        <br /><hr />
    <!-- Marketing messaging and featurettes -->
    <div class="container marketing">
        <div class="row" style="background-color: rgba(128, 128, 128, 0.5); padding: 20px; border: 1px solid #ccc;">
            <div class="col-lg-4">
                <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://m.media-amazon.com/images/I/61mtnrRGWzL.jpg" role="img" aria-label="Placeholder: 140x140"/>
                <h2>Equipo deportivo</h2>
                <p><em>Encuentra lo necesario para practicar tus deportes favoritos, explora nuestro catálago de productos y obtén más información.</em></p>
            </div>
            <div class="col-lg-4">
                <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://i5.walmartimages.com.mx/mg/gm/3pp/asr/5c743c93-3c04-40db-af21-3bb9d701e9ba.dd64c224ed05f8a6165791c82b0a981e.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF" role="img" aria-label="Placeholder: 140x140"/>
                <h2>Línea de ropa</h2>
                <p><em>Explora nuestra amplia gama de productos que abarcan desde uniformes escolares y deportivos como casacas personalizadas. ¡No te quedes sin la tuya!</em></p>
            </div>
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

        <br /><hr />

    <!-- Marketing messaging and featurettes -->
    <div class="container marketing">
        <div class="row" style="background-color: rgba(128, 128, 128, 0.5); padding: 20px; border: 1px solid #ccc;">
            <div class="col-lg-4">
                <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://imgs.search.brave.com/jLL3ye29Opr5-C1MvA3vLORHJXV67gm6DAHaDnCg-ig/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9jb250/ZW50cy5tZWRpYWRl/Y2F0aGxvbi5jb20v/cDIxNTQwMzEvayRh/YzIyMzIyNzYzNWNh/MTU3OTgyZmM4YjJl/NzBmZTIwYy9iYWxvbi1kZS1mdXRib2wtZmlyc3Qta2ljay10YWxsYS0zLXBhcmEtbmlub3MtbWVub3Jlcy1kZS05LWFub3MtYXp1bC5qcGc_Zm9y/bWF0PWF1dG8mcXVh/bGl0eT00MCZmPTUy/MHg1MjA" role="img" aria-label="Placeholder: 140x140"/>
                <h2>Equipo deportivo</h2>
                <p><em>Encuentra lo necesario para practicar tus deportes favoritos, explora nuestro catálago de productos y obtén más información.</em></p>
            </div>
            <div class="col-lg-4">
                <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://i5.walmartimages.com.mx/mg/gm/3pp/asr/5c743c93-3c04-40db-af21-3bb9d701e9ba.dd64c224ed05f8a6165791c82b0a981e.jpeg?odnHeight=612&odnWidth=612&odnBg=FFFFFF" role="img" aria-label="Placeholder: 140x140"/>
                <h2>Línea de ropa</h2>
                <p><em>Explora nuestra amplia gama de productos que abarcan desde uniformes escolares y deportivos como casacas personalizadas. ¡No te quedes sin la tuya!</em></p>
            </div>
            <div class="col-lg-4">
                <img class="bd-placeholder-img rounded-circle" width="140" height="140" src="https://http2.mlstatic.com/D_NQ_NP_645251-MLM44881175006_022021-O.webp" role="img" aria-label="Placeholder: 140x140"/>
                <h2>Diseños personalizados</h2>
                <p><em><strong>¿Te interesa adquirir un diseño único y a tu gusto?</strong> ¡Contáctanos! Llama o visita nuestra tienda física para ser atendid@ por una persona de nuestro equipo y elige el diseño que más te guste.</em></p>
                <p><a class="btn btn-secondary" href="Contact">¡Contáctanos! &raquo;</a></p>
            </div>
        </div> 
     </div>

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
                    <a href="Catalogo.aspx" class="btn btn-dark my-2">Ir al catálogo</a>
                </p>
            </div>
        </section>
      <div class="album py-5 bg-light">
        <div class="container">

          <div class="row">
            <!-- Card 1 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177945/iangntvurgvb7kd2mwvp.png" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Falda a cuadros</strong><br />
                      Uniforme femenino, variedad de colores y estilos. <br /><br />
                      <strong>Tallas:</strong> <br />
                      XS, S, M, L, XL, XXL.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary"onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177945/iangntvurgvb7kd2mwvp.png', '<strong>Falda a cuadros</strong><br>Uniforme femenino, variedad de colores y estilos.<br><br><strong>Tallas:</strong> XS, S, M, L, XL, XXL.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carriro</button>
                    </div>
                    <small class="text-success">$240.00</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 2 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177831/aavjumygsdqbxasc19ru.webp" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Camisa blanca polo</strong><br />
                      Camisa para dama de algodón tipo polo.<br /><br />
                      <strong>Talla:</strong><br />
                      M, L, XXL.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177831/aavjumygsdqbxasc19ru.webp', '<strong>Camisa blanca polo</strong><br>Camisa para dama de algodón tipo polo.<br /><br /><strong>Talla:</strong><br />M, L, XXL. ')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$220.00</small>
                  </div>
                </div>
              </div>
            </div>
             <!-- Card 3 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177316/nzy0pglo8tsob9t2jd1a.webp" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Pantalón para uniforme</strong><br />
                      Uniforme para hombre. Tela resistente en diversos colores.<br /><br />
                      <strong>Talla:</strong><br />
                      M, L, XL, XXL.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177316/nzy0pglo8tsob9t2jd1a.webp', '<strong>Pantalón para uniforme</strong><br />Uniforme para hombre. Tela resistente en diversos colores.<br /><br /><strong>Talla:</strong><br />M, L, XL, XXL.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$545.00</small>
                    </div>
                    <small class="text-success">$545.00</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 4 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177760/ij6reaomlvllzj2krp6n.webp" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Uniforme escolar color verde</strong><br />
                        Uniforme escolar, material hecho de algodón.<br /><br />
                        <strong>Talla:</strong><br />
                        XS, S, M, L.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177760/ij6reaomlvllzj2krp6n.webp', '<strong>Uniforme escolar color verde</strong><br />Uniforme escolar, material hecho de algodón.<br /><br /><strong>Talla:</strong><br />XS, S, M, L.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$380.00</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 5 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177448/jqc815gfphkpehqofvln.webp" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Uniforme amarillo deportivo</strong><br />
                      Uniforme deportivo escolar. Material hecho de algodón.<br /><br />
                      <strong>Talla:</strong><br />
                      S, M, L.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177448/jqc815gfphkpehqofvln.webp', ' <strong>Uniforme amarillo deportivo</strong><br />Uniforme deportivo escolar. Material hecho de algodón.<br /><br /><strong>Talla:</strong><br />S, M, L.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$380.00</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 6 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177025/ospm5mzwncw0itiq1ny2.png" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Jersey casaca deportiva</strong><br />
                      Jersey de beisbol negra con líneas rojas.<br /><br />
                      <strong>Talla:</strong><br />M, XL, XXL.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177025/ospm5mzwncw0itiq1ny2.png', '<strong>Jersey casaca deportiva</strong><br />Jersey de beisbol negra con líneas rojas.<br /><br /><strong>Talla:</strong><br /> M, XL, XXL.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$350.00</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 4 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177760/ij6reaomlvllzj2krp6n.webp" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Uniforme escolar color verde</strong><br />
                        Uniforme escolar, material hecho de algodón.<br /><br />
                        <strong>Talla:</strong><br />
                        XS, S, M, L.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177760/ij6reaomlvllzj2krp6n.webp', '<strong>Uniforme escolar color verde</strong><br />Uniforme escolar, material hecho de algodón.<br /><br /><strong>Talla:</strong><br />XS, S, M, L.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$380.00</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 5 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177448/jqc815gfphkpehqofvln.webp" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Uniforme amarillo deportivo</strong><br />
                      Uniforme deportivo escolar. Material hecho de algodón.<br /><br />
                      <strong>Talla:</strong><br />
                      S, M, L.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177448/jqc815gfphkpehqofvln.webp', ' <strong>Uniforme amarillo deportivo</strong><br />Uniforme deportivo escolar. Material hecho de algodón.<br /><br /><strong>Talla:</strong><br />S, M, L.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$380.00</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 6 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177025/ospm5mzwncw0itiq1ny2.png" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Jersey casaca deportiva</strong><br />
                      Jersey de beisbol negra con líneas rojas.<br /><br />
                      <strong>Talla:</strong><br />M, XL, XXL.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724177025/ospm5mzwncw0itiq1ny2.png', '<strong>Jersey casaca deportiva</strong><br />Jersey de beisbol negra con líneas rojas.<br /><br /><strong>Talla:</strong><br /> M, XL, XXL.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$350.00</small>
            <!-- Card 7 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724176867/op7jjp3sqji6h032o3zz.jpg" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Calcetas Red-Hat</strong><br />
                      Calcetines deportivos hechos de algodón.<br /><br />
                      <strong>Talla:</strong><br />
                      M, XL, XL, XXL.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724176867/op7jjp3sqji6h032o3zz.jpg', '<strong>Calcetas Red-Hat</strong><br />Calcetines deportivos hechos de algodón.<br /><br /><strong>Talla:</strong><br />M, XL, XL, XXL.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                    </div>
                    <small class="text-muted">$120.50</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 7 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724176867/op7jjp3sqji6h032o3zz.jpg" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Calcetas Red-Hat</strong><br />
                      Calcetines deportivos hechos de algodón.<br /><br />
                      <strong>Talla:</strong><br />
                      M, XL, XL, XXL.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724176867/op7jjp3sqji6h032o3zz.jpg', '<strong>Calcetas Red-Hat</strong><br />Calcetines deportivos hechos de algodón.<br /><br /><strong>Talla:</strong><br />M, XL, XL, XXL.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                    </div>
                    <small class="text-muted">$120.50</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 8 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724176666/xmwhmg2nb2iczuuyno6v.jpg" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Calcetas Red-Hat</strong><br />
                        Calcetines deportivos hechos de algodón.<br /><br />
                        <strong>Talla:</strong><br />
                        M, L, XL, XXL.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724176666/xmwhmg2nb2iczuuyno6v.jpg', '<strong>Calcetas Red-Hat</strong><br />Calcetines deportivos hechos de algodón.<br /><br /><strong>Talla:</strong><br />M, XL, XL, XXL.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$120.50</small>
                  </div>
                </div>
              </div>
            </div>
            <!-- Card 9 -->
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="https://res.cloudinary.com/dj4vhebsj/image/upload/v1724176408/f7xp7l72ydgql2v4hlq8.jpg" alt="Card image cap"/>
                <div class="card-body">
                  <p class="card-text">
                      <strong>Espinilleras</strong><br />
                      Espinilleras de fútbol de alta resistencia para adultos y niños.<br /><br />
                      <strong>Talla:</strong><br />
                      XS, S, M, L, XL, XXL.
                  </p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary" onclick="showModal('https://res.cloudinary.com/dj4vhebsj/image/upload/v1724176408/f7xp7l72ydgql2v4hlq8.jpg', '<strong>Espinilleras</strong><br />Espinilleras de fútbol de alta resistencia para adultos y niños.<br /><br /><strong>Talla:</strong><br />XS, S, M, L, XL, XXL.')">Ver</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Añadir al carrito</button>
                    </div>
                    <small class="text-success">$180.00</small>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </main>

<!-- Modal -->
<div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="imageModalLabel">Image Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <img id="modalImage" class="img-fluid" src="" alt="Image"/>
        <div id="modalDescription" class="mt-3"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

    </main>

<!-- Modal -->
<div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="imageModalLabel">Image Details</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <img id="modalImage" class="img-fluid" src="" alt="Image"/>
        <div id="modalDescription" class="mt-3"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>

<script>
    function showModal(imageUrl, description) {
        document.getElementById('modalImage').src = imageUrl;
        document.getElementById('modalDescription').innerHTML = description;
        var myModal = new bootstrap.Modal(document.getElementById('imageModal'));
        myModal.show();
    }
</script>


    </body>

<script>
    function showModal(imageUrl, description) {
        document.getElementById('modalImage').src = imageUrl;
        document.getElementById('modalDescription').innerHTML = description;
        var myModal = new bootstrap.Modal(document.getElementById('imageModal'));
        myModal.show();
    }
</script>


    </body>


    <!-- Agrega el script de Bootstrap al final del documento para una carga más rápida -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</html>
</asp:Content>

    </div>
</asp:Content>
