<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<title>Ingreso de nuevo producto</title>
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />



<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<script
	src="<%=request.getContextPath()%>/scripts/jquery/jquery-3.6.4.min.js"></script>
<script
	src="<%=request.getContextPath()%>/scripts/bootstrap/js/bootstrap.bundle.min.js"></script>
<script
	src="<%=request.getContextPath()%>/scripts/bootstrap/js/bootstrap.bundle.min.js.map"></script>

<script src="<%=request.getContextPath()%>/scripts/ventas.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
				</a><a href="<%=request.getContextPath()%>/ventashome" class="active">
					<span class="material-symbols-sharp">receipt_long </span>
					<h3>Ventas</h3>
				</a><a href="<%= request.getContextPath() %>/proxy?method=agregarInput">
					<span class="material-symbols-sharp">add</span>
					<h3>Agregar Producto</h3>
				</a><a
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
			<nav class="navbar bg-body-tertiary">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">Ventas</a>

					<div class="input-group">
						<div class="input-group-text">
							<select id="ventasCombo" class="form-select"
								aria-label="Default select example">
								<option selected>mostrarTodos</option>
								<option value="1">Pendientes de entrega</option>
								<option value="2">Entregados</option>
								<option value="3">En camino</option>
							</select>
						</div>
					</div>
				</div>
			</nav>

			<div class="recent_order">
				<h1>Ventas</h1>
				<table id="tableOrderDetail">
					<thead>
						<tr>
							<th width="25%">Fecha</th>
							<th width="12%" class="center">Identificador</th>
							<th width="12%" class="center">Direccion</th>
							<th width="12%" class="center">Estado</th>
							<th width="12%" class="center">Telefono</th>
							<th width="12%" class="center">Monto</th>
							<th width="12%" class="center">Ver detalles</th>
						</tr>
					</thead>
					<tbody>
						<tr class="">
							<td width="25%" class="fecha">test</td>
							<td width="12%" class="identificador">test</td>
							<td width="25%" class="direccion">test</td>
							<td width="25%" class="estado">test</td>
							<td width="25%" class="te�efono">test</td>
							<td width="25%" class="monto">test</td>
							<td width="25%" class="detalles"></td>
						</tr>
					</tbody>
				</table>
			</div>
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