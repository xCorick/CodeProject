<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="CodeProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    <title>Album example · Bootstrap v5.3</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">

<link href="/docs/5.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">
  </head>
    <body>
    <main>
        <div class="album py-5 bg-light">
            <div class="container">

                <div class="row">
                    <!-- Card 1 -->
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="https://i.pinimg.com/564x/81/12/7f/81127f158d257592f62f3a917112871b.jpg" alt="Card image cap" data-image="https://i.pinimg.com/564x/81/12/7f/81127f158d257592f62f3a917112871b.jpg"/>
                            <div class="card-body">
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
                    <!-- Card 2 -->
                    <div class="col-md-4">
                        <div class="card mb-4 box-shadow">
                            <img class="card-img-top" src="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161" alt="Card image cap" data-image="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161">
                            <div class="card-body">
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
                             <img class="card-img-top" src="https://i.pinimg.com/564x/81/12/7f/81127f158d257592f62f3a917112871b.jpg" alt="Card image cap" data-image="https://i.pinimg.com/564x/81/12/7f/81127f158d257592f62f3a917112871b.jpg"/>
                             <div class="card-body">
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
                     <!-- Card 4 -->
                     <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161" alt="Card image cap" data-image="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161"/>
                             <div class="card-body">
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
                             <img class="card-img-top" src="https://i.pinimg.com/564x/81/12/7f/81127f158d257592f62f3a917112871b.jpg" alt="Card image cap" data-image="https://i.pinimg.com/564x/81/12/7f/81127f158d257592f62f3a917112871b.jpg"/>
                             <div class="card-body">
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
                     <!-- Card 6 -->
                     <div class="col-md-4">
                         <div class="card mb-4 box-shadow">
                             <img class="card-img-top" src="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161" alt="Card image cap" data-image="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161"/>
                             <div class="card-body">
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
                             <img class="card-img-top" src="https://i.pinimg.com/564x/81/12/7f/81127f158d257592f62f3a917112871b.jpg" alt="Card image cap" data-image="https://i.pinimg.com/564x/81/12/7f/81127f158d257592f62f3a917112871b.jpg"/>
                             <div class="card-body">
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
                             <img class="card-img-top" src="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161" alt="Card image cap" data-image="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161"/>
                             <div class="card-body">
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
                        <img class="card-img-top" src="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161" alt="Card image cap" data-image="https://www.united-vintage.com/cdn/shop/files/PPmemoire-Grande_1_1024x1024.jpg?v=1709202161"/>
                        <div class="card-body">
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
</body>
    </main>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="script.js"></script>
<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</html>
</asp:Content>
