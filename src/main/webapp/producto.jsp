<%@page import="java.util.Map"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ventas.entity.Producto"%>
<%@page import="com.ventas.entity.Tipo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<% List<Producto> productos = (List<Producto>) request.getAttribute("productos"); %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Productos</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="style/styleProducto.css">
</head>
<body>
	<%@ include file="common/header.jsp"%>

	<section class="products" id="productos">

		<h1 class="heading">
			<span> Productos </span>
		</h1>

		<div class="box-container">
			<% for(Producto producto : productos  ){ %>
			<% if (producto.isPortada()){ %>
			<div class="box-wrapper">
				<div class="box">
					<div class="image">
						<img src="media/1.jpg" width="150" height="75">
						<div class="icons">
							<a
								href="<%= request.getContextPath() %>/preparacion-venta?method=unidad&idproducto=<%=producto.getId()%>"
								class="cart-btn"><i class="far fa-credit-card"></i></a> <a
								href="<%= request.getContextPath() %>/carrito?idprod=<%=producto.getId()%>"
								class="cart-btn"><i class="fas fa-cart-plus"></i></a>
						</div>
					</div>
					<div class="content">
						<h3><%=producto.getNombre()%></h3>
						<div class="price">
							$<%=producto.getPrecio()%></div>
							
					</div>
				</div>
				
			</div>
			<% } %>
			<% } %>
		</div>
	</section>

	<%@ include file="common/footer.jsp"%>
</body>
</html>
