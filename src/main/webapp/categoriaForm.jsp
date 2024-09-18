<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<title>Ingreso de nuevo producto</title>
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="scripts/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
<script src="scripts/jquery/jquery-3.6.4.min.js"></script>
<script src="scripts/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="scripts/bootstrap/js/bootstrap.bundle.min.js.map"></script>
<script src="scripts/bootstrap/js/browser-polyfill.min.js.map"></script>
<script src="scripts/jquery/jquery1.13.2-ui.js"></script>
<script src="scripts/categoria.js"></script>

</head>


<body>
	<div class="container">
		<aside>

			<div class="top">
				<div class="close" id="close_btn">
					<span class="material-symbols-sharp"> close </span>
				</div>
			</div>

			<div class="sidebar">

				<a href="<%=request.getContextPath()%>/productos"> <span
					class="material-symbols-sharp">grid_view </span>
					<h3>Productos</h3>
				</a>
				<% HttpSession misession = request.getSession(true);%>
				<a href="<%=request.getContextPath()%>/ventashome"> <span
					class="material-symbols-sharp">receipt_long </span>
					<h3>Ventas</h3>
				</a><a href="<%= request.getContextPath() %>/proxy?method=agregarInput">
					<span class="material-symbols-sharp">add</span>
					<h3>Agregar Producto</h3>
				</a><a
					href="<%= request.getContextPath() %>/proxy?method=agregarCategoria"
					class="active"> <span class="material-symbols-sharp">view_comfy_alt</span>
					<h3>Marca y categoria</h3>
				</a> <a href="<%=request.getContextPath()%>/home"> <span
					class="material-symbols-sharp">home</span>
					<h3>Inicio</h3>
				</a>
			</div>
		</aside>

		<main>
			<h1>FatimaSportShop<span style="color: #B71C1C;">.</span></h1>

			<section class="wrapper">
				<div class="form signup">
					<header style="color: #986842;">Agregar Producto</header>
					<form action="<%= request.getContextPath() %>/agregarCategoria"
						method="Post" class="mt-4 mb-3">
						<div class="form-group mb-3">
							<label for="formGroupExampleInput">Nombre de categoria</label> <input
								type="text" class="form-control" id="nombre" name="nombre"
								placeholder="Nombre de categoria">
						</div>


						<div class="form-group mb-3">
							<label for="formGroupExampleInput">Marcas</label> <input
								type="text" class="form-control" id="marcas" name="marcas"
								placeholder=" Marcas habilitadas a esta categoria">
						</div>

						<div class="form-group mb-3">
							<label class="form-label" id="texto"></label>
							<button type="submit" class="btn btn-primary">Ingresar
								producto</button>
						</div>


					</form>
				</div>
			</section>
		</main>
		</div>
		<div class="right">
			<div class="top">
			  <button id="menu_bar">
				<span class="material-symbols-sharp">menu</span>
			  </button>
	  
			  <div class="theme-toggler">
				<span class="material-symbols-sharp active">light_mode</span>
				<span class="material-symbols-sharp">dark_mode</span>
			  </div>
			  <div class="profile">
				<a href="<%=request.getContextPath()%>/logOut">
					<span class="material-symbols-sharp">logout</span>
				</a>
			  </div>
			</div>
		</div>
	<script src="scripts/script.js"></script>
</body>
</html>

