<%@page import="java.util.Map"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.ventas.entity.Producto"%>
<%@page import="com.ventas.entity.Tipo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%List<Producto> productos = (List<Producto>) request.getAttribute("productos");%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/522c77665c.js" crossorigin="anonymous"></script>
      <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Crimson+Pro">
    <title>Sistema de gestion de Venta</title>
	<link rel="stylesheet" href="style/style.css">
	
</head>
<body>
<%@ include file="common/header.jsp" %> 

<section class="p-3 mb-7 bg-dark">
    <div class="container  p-3 mb-2 bg-dark text-white">
		<div class="overflow-hidden">
			<div class="row gy-5">
			<%for(Producto producto : productos  ){ %>
    				<%  if (producto.isPortada()){ %>
				<div class="col-3">
					<div class="p-3 border rounded bg-dark">
						<img class="img-thumbnail"
						src="media/1.jpg" alt="">
						<hr>
						<p class="float-start col-6">
							<%=producto.getNombre()%>
						
					<p>	
					<p class="float-start col-6 bg-blue">
							Precio: $<%=producto.getPrecio()%>
						
					<p>
                        <a href="<%= request.getContextPath() %>/preparacion-venta?method=unidad&idproducto=<%=producto.getId()%>" class="btn btn-info d-inline"><i class="far fa-credit-card"></i></a>
				    	<a href="<%= request.getContextPath() %>/carrito?idprod=<%=producto.getId()%>" class="btn btn-info d-inline"><i class="fas fa-cart-plus"></i></a>
				    	
				</div>
				</div>
				 <% }} %>
			</div>
		</div>
   </div>
   </section>
   <hr>
   	<%@ include file="common/footer.jsp" %> 
</body>
</html>