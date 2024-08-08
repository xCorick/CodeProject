<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="CodeProject.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Carrito</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>
<body>
	<div class="container">
		<h1>Carrito</h1>
		<hr>
		<table class="table">
			<thead>
			  <tr>
				<th scope="col">#</th>
				<th scope="col">Item</th>
				<th scope="col">Cantidad</th>
				<th scope="col">Acción</th>
				<th scope="col">Total</th>
			  </tr>
			</thead>
			<tbody id="items"></tbody>
			<tfoot>
			  <tr id="footer">
				<th scope="row" colspan="5">Carrito vacío - comience a comprar!</th>
			  </tr>
			</tfoot>
		  </table>
		<div class="row" id="cards"></div>
	</div>

	
	<asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>

	<template id="template-card">
		<div class="col-12 mb-2 col-md-4">
		  <div class="card">
			  <img src="" alt="" class="card-img-top">
			<div class="card-body">
			  <h5>Titulo</h5>
			  <p>precio</p>
			  <button class="btn btn-dark">Comprar</button>
			</div>
		  </div>
		</div>
	  </template>
	

<script src="app.js"></script>
</body>
</html>




</asp:Content>
