<%@page import="java.util.Map"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.ventas.entity.Producto"%>
<%@page import="com.ventas.entity.Tipo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%
      	List<Producto> productos = (List<Producto>) request.getAttribute("productos");
%>
<c:set var="ctx" value="${pageContext.request.contextPath}" /> 
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
    <div class="container vh-100">
	<%@ include file="common/header.jsp" %> 
  
    <div class="listado">
    <%for(Producto producto : productos  ){ %>
    <div class="articulo">
    	        <div class="card border border-dark rounded m-2">
            <div class="card-header">
            <h3><%=producto.getNombre()%></h3>
            <p>$ <%=producto.getPrecio()%></p>
            </div>
            <div class="card-body">
                <p><%=producto.getNombre()%></p>                
            </div>
            <div class="card-pie" >
            			<a href="<%= request.getContextPath() %>/preparacion-venta?method=unidad&idproducto=<%=producto.getId()%>" class="btn btn-info d-inline"><i class="far fa-credit-card"></i></a>
				    	<a href="<%= request.getContextPath() %>/carrito?idprod=<%=producto.getId()%>" class="btn btn-info d-inline"><i class="fas fa-cart-plus"></i></a>
            </div>
        </div>
    </div>
     <% } %>
    </div>
 
	<%@ include file="common/footer.jsp" %> 
  
   </div>
</body>
</html>