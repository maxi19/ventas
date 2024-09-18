<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.ventas.entity.Producto"%>
<%@page import="com.ventas.entity.Item"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Confirmar Compra</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
				</a> <a href="<%=request.getContextPath()%>/pedidos" class="active">
					<span class="material-symbols-sharp">receipt_long </span>
					<h3>Comprobante de compra</h3>
				</a>
				<% HttpSession misession = request.getSession(true);%>
				<%if(misession.getAttribute("usuario") != null) {%>
				<a href="<%=request.getContextPath()%>/logOut"><span
					class="material-symbols-outlined">Logout</span></a>
				<%}%>
			</div>

		</aside>

		<main>

			<div class="recent_order">
			<h1>FatimaSportShop<span style="color: #B71C1C;">.</span></h1>
				<%
		List<Item> items = (List<Item>) request.getAttribute("items");
		int totalFactura = (int) request.getAttribute("totalfactura");

		%>
				<h2>Comprobante de compra</h2>
				<table>
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Descripcion</th>
							<th scope="col">Precio Unitario</th>
							<th scope="col">Cantidad</th>
							<th scope="col">Subtotal</th>
						</tr>
					</thead>
					<tbody>
						<% for (int i = 0; i < items.size(); i++) { %>
						<tr>
							<th scope="row"><%=items.get(i).getProducto().getId() %></th>
							<td><%=items.get(i).getProducto().getDescripcion() %></td>
							<td><%=items.get(i).getProducto().getPrecio() %></td>
							<td><%=items.get(i).getCantidad() %></td>
							<td><%=items.get(i).getTotal() %></td>
						</tr>
						<%} %>
					</tbody>

				</table>
				<h2>Total de venta:</h2>
				<input type="text" name="importe" value="<%=totalFactura%>" disabled>
			</div>
		</main>
		</div>
	<div class="right">
			<div class="top">
				<button id="menu_bar">
					<span class="material-symbols-sharp">menu</span>
				</button>

				<div class="theme-toggler">
					<span class="material-symbols-sharp active">light_mode</span> <span
						class="material-symbols-sharp">dark_mode</span>
				</div>
			</div>
		</div>

	<script src="scripts/script.js"></script>
</body>
</html>