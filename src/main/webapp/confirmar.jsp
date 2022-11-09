<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import="com.ventas.entity.Producto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmar venta</title>
<link rel="stylesheet" href="style/estilo10.css">
</head>
<body>
<%
Producto producto =(Producto)request.getAttribute("producto");
%>
<div id="SI">
<center><h2>Confirmar Compra</h2></center>
<hr></hr>
	<form  action="/finalizarVenta" method="post">
	<h3>Caracteristicas:</h3>
	<label>Descripcion </label> <%=producto.getDescripcion()%>

	<label>Precio Unitario </label> <%=producto.getPrecio()%>
	
	<h3>Datos de entrega:</h3>
	
	<label>nombre y apellido </label> <input type="text" name="nombre" value="" >
	<label>direccion </label> <input type="text" name="direccion" value="" >
	
	
	
	    <br></br>
	    <select name="pago"  required>
	      <option  value="">seleccione metodo de pago</option>
	      <option id = "1" value="1">credito</option>
	      <option id = "2" value="2">debito</option>
	       <option id = "3" value="3">efectivo</option>
	    </select>
	    	<h3>Cantidad:</h3>
	    <br></br>
	    <select name="cantidad"  required>
	      <option  value="">seleccione cantidad</option>
	      <option  id = "1" value="1">1</option>
	      <option id = "2" value="2">2</option>
	       <option id = "3" value="3">3</option>
	    </select>
	      <input type="hidden" id="idProducto" name="idProducto" value="<%=producto.getId()%>" />
	    <button>Comprar este proucto</button>
	 </form>
 </div>
</body>
</html>