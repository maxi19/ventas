<%@page import="com.ventas.entity.Marca"%>
<%@page import="com.ventas.entity.Producto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Ingreso de nuevo producto</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/style/style.css">
<script
	src="<%=request.getContextPath()%>/scripts/jquery/jquery-3.6.4.min.js"></script>
<script
	src="<%=request.getContextPath()%>/scripts/bootstrap/js/bootstrap.bundle.min.js"></script>
<script
	src="<%=request.getContextPath()%>/scripts/bootstrap/js/bootstrap.bundle.min.js.map"></script>
<script
	src="<%=request.getContextPath()%>/scripts/bootstrap/js/browser-polyfill.min.js.map"></script>
<script src="<%=request.getContextPath()%>/scripts/scripts.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
<script type="text/javascript">
			var contextPath="<%=request.getContextPath()%>";
		</script>
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
				</a> <a href="<%=request.getContextPath()%>/ventashome"> <span
					class="material-symbols-sharp">receipt_long </span>
					<h3>Ventas</h3>
				</a><a href="<%= request.getContextPath() %>/proxy?method=agregarInput"
					class="active"> <span class="material-symbols-sharp">add</span>
					<h3>Agregar Producto</h3></a> <a
					href="<%= request.getContextPath() %>/proxy?method=agregarCategoria"
					role="button"> <span class="material-symbols-sharp">view_comfy_alt</span>
					<h3>Marca y categoria</h3>
				</a> <a href="<%=request.getContextPath()%>/home"> <span
					class="material-symbols-sharp">home</span>
					<h3>Inicio</h3>
				</a>
				<% HttpSession misession = request.getSession(true);%>
			</div>
		</aside>
		<main>
			<h1>FatimaSportShop<span style="color: #B71C1C;">.</span></h1>

			<section class="wrapper">
				<div class="form signup">
					<header style="color: #986842;">Agregar Producto</header>
					<form id="productoForm">
						<div class="form-group mb-3">
							<label for="formGroupExampleInput">Titulo</label> <input
								type="text" class="form-control" id="titulo" name="titulo"
								placeholder="Titulo en grilla de venta">
						</div>

						<div class="form-group mb-3">
							<label for="formGroupExampleInput">Nombre</label> <input
								type="text" class="form-control" id="nombre" name="nombre"
								placeholder="Nombre de producto">
						</div>

						<div class="form-group mb-3">
							<label for="formGroupExampleInput">Marca</label>
							<div id="marcas"></div>
							<input type="hidden" name="marca-hidden" id="marca-hidden" value>
						</div>

						<div class="form-group mb-3">
							<label for="exampleFormControlSelect1">Categoria</label>
							<div id="categorias"></div>
							<input type="hidden" name="categoria-hidden"
								id="categoria-hidden" value>
						</div>

						<div class="form-group mb-3">
							<label for="formGroupExampleInput">Stock</label> <input
								type="text" class="form-control" id="stock" name="stock"
								placeholder="Stock inicial">
						</div>

						<div class="form-group mb-2">
							<label for="formGroupExampleInput">Precio</label> <input
								type="text" class="form-control" id="precio" name="precio"
								placeholder="Precio del producto">
						</div>

						<div class="form-group mb-2">
							<label for="floatingTextarea">Descripcion del producto</label>
							<textarea class="form-control"
								placeholder="brebe descripcion del producto" id="descripcion"
								name="descripcion"></textarea>
						</div>

						<div class="form-group mb-3">
							<label for="formFile" class="form-label">imagen</label> <input
								class="form-control" type="file" id="fichero">
						</div>
						<div class="form-group mb-3">
							<label class="form-label" id="texto"></label>
							<button type="button" class="btn btn-primary"
								id="crearProductoBtn">Ingresar producto</button>
						</div>
						<link rel="stylesheet"
							href="scripts/bootstrap/css/bootstrap.min.css">
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