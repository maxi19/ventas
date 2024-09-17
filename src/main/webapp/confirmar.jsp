<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.ventas.entity.Item"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Confirmar Compra</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Sharp:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
				<%
				HttpSession misession = request.getSession(true);
				%>
				<%
				if (misession.getAttribute("usuario") != null) {
				%>
				<a href="<%=request.getContextPath()%>/logOut"><span
					class="material-symbols-outlined">Logout</span></a>
				<%
				}
				%>

			</div>

		</aside>
		<main>
			<h1>Flower.</h1>
			<section class="wrapper">
				<div class="form signup">
					<form action="<%=request.getContextPath()%>/finalizarVenta?"
						method="post">
						<div class="recent_order">
							<h1>Confirmar Compra:</h1>
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
								<%
								List<Item> items = (List<Item>) request.getAttribute("items");
								boolean soloProducto = (boolean) request.getAttribute("soloProducto");
								%>
								<tbody>
									<%
									for (int i = 0; i < items.size(); i++) {
									%>
									<tr>
										<th scope="row"><%=items.get(i).getProducto().getId()%></th>
										<td><%=items.get(i).getProducto().getNombre()%></td>
										<td><%=items.get(i).getProducto().getPrecio()%></td>
										<td><%=items.get(i).getCantidad()%></td>
										<td><%=items.get(i).getTotal()%></td>
									</tr>
									<%
									}
									%>
								</tbody>
							</table>
						</div>
						<h3>Datos de entrega:</h3>
						<label>Nombre y apellido </label> <input type="text" name="nombre"
							value=""> <label>Direccion </label> <input type="text"
							name="direccion" value="">
						<div class="select-container">
							<select name="pago" required>
								<option value="">seleccione metodo de pago</option>
								<option id="1" value="1">credito</option>
								<option id="2" value="2">debito</option>
								<option id="3" value="3">efectivo</option>
							</select>
						</div>
						<%
						if (soloProducto) {
						%>
						<h3>Cantidad:</h3>
						<div class="select-container">
							<select name="cantidad" required>
								<option value="">seleccione cantidad</option>
								<option id="1" value="1">1</option>
								<option id="2" value="2">2</option>
								<option id="3" value="3">3</option>
							</select>
						</div>
						<%
						}
						%>
						<input type="submit" value="Confirmar Compra" />
					</form>
				</div>
			</section>
		</main>
		<div class="right">
			<div class="top">
				<button id="menu_bar">
					<span class="material-symbols-sharp">menu</span>
				</button>

				<div class="theme-toggler">
					<span class="material-symbols-sharp active">light_mode</span> <span
						class="material-symbols-sharp">dark_mode</span>
				</div>
				<div class="profile">
					<div class="info">
						<p>
							<b>6 tc</b>
						</p>
						<p>Fatima</p>
						<small class="text-muted"></small>
					</div>
					<div class="profile-photo">
						<img src="images/profile-3.jpg" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="scripts/script.js"></script>
</body>
</html>
