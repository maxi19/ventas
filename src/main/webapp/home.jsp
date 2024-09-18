<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">

<script type="text/javascript">
		var contextPath='<%=request.getContextPath()%>';	
	</script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="style/style.css">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous">	  
	  </script>
<script
	src="<%=request.getContextPath()%>/scripts/jquery/jquery-3.6.4.min.js"></script>
<script src="<%=request.getContextPath()%>/scripts/home.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

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
				</a><a href="<%=request.getContextPath()%>/ventashome"> <span
					class="material-symbols-sharp">receipt_long </span>
					<h3>Ventas</h3>
				</a><a href="<%= request.getContextPath() %>/proxy?method=agregarInput">
					<span class="material-symbols-sharp">add</span>
					<h3>Agregar Producto</h3>
				</a><a
					href="<%= request.getContextPath() %>/proxy?method=agregarCategoria"
					role="button"> <span class="material-symbols-sharp">view_comfy_alt</span>
					<h3>Marca y categoria</h3>
				</a> <a href="<%=request.getContextPath()%>/home" class="active"> <span
					class="material-symbols-sharp">home</span>
					<h3>Inicio</h3>
				</a>
				<% HttpSession misession = request.getSession(true);%>
			</div>
		</aside>
		<main>
			<h1>FatimaSportShop<span style="color: #B71C1C;">.</span></h1>

			<div class="recent_order">
				<h2>Productos</h2>
				<%
                       List<Producto> productos = (List<Producto>) request.getAttribute("productos");
                      %>
				<table>
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Nombre</th>
							<th scope="col">Marca</th>
							<th scope="col">Sprecio unitario</th>
							<th scope="col">Stock</th>
							<th scope="col">Desactivar</th>
							<th scope="col">Acciones</th>
						</tr>
					</thead>
					<tbody>
						<% for (int i = 0; i < productos.size(); i++) { %>
						<%if(productos.get(i).getStock() > 10) {%>
						<tr class="table-light">
							<% }else{ %>
						
						<tr class="table-danger">
							<%}%>
							<th scope="row"><%=productos.get(i).getId() %></th>
							<td><%=productos.get(i).getNombre() %></td>
							<td><%=productos.get(i).getMarca().getNombre() %></td>
							<td><%=productos.get(i).getPrecio() %></td>
							<td><%=productos.get(i).getStock() %></td>
							<td class="form-switch">
								<% if(productos.get(i).isPortada()){%> <input
								class="form-check-input" type="checkbox" role="switch"
								id="<%=productos.get(i).getId()%>" checked> <% }else{ %> <input
								class="form-check-input" type="checkbox" role="switch"
								id="<%=productos.get(i).getId()%>"> <% } %>

							</td>
							<td><input type="button"
								class="btn btn-primary material-symbols-sharp" value="toc" /> <input
								type="button" class="btn btn-danger material-symbols-outlined"
								id="<%=productos.get(i).getId() %>" value="Delete" /></td>
						</tr>
						<%}%>
					</tbody>
				</table>
			</div>

		</main>
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