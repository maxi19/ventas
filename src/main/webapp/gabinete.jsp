<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
  <html>
  <head>
	  <title>Gabinetes:
      </title>
      <link rel="stylesheet" href="style/estilo11.css">
      <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </head>
  <body id="body">
  <header>
      <div id="log">
      <a href="inicio"><img src="media/logo.png"  align="left" width="120" hight="60" alt="logo"></a>
      </div>
      
        <ul>
          <li><a href="discos">DISCOS DE ALMACENAMIENTO</a></li>
          <li><a href="memorias">MEMORIAS RAM</a></li>
          <li><a href="micro">PROCESADORES</a></li>
          <li><a href="cooler">COOLERS</a></li>
          <li><a href="placa">PLACAS MADRES</a></li>
          <li><a href="gabinete">GABINETES</a></li>
          <li><a href="fuente">FUENTES</a></li>
        </ul>  
    </header>
    <section id="inicio">
      <h2>Gabinete Aerocool:</h2>
      <div id="prod1">
      <% List<Producto> ac = (List<Producto>) request.getAttribute("ac"); %>
      		 <% for (int i = 0; i < ac.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodga.jpg" align="left"><p><%=ac.get(i).getDescripcion()%></p><p><font color="blue">$ 8.650</font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=ac.get(i).getId()%>" class="boton">COMPRAR</a>
   
       		<a href="/carrito?idprod=<%=ac.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodga2.jpg" align="left"><p><%=ac.get(i).getDescripcion()%></p><p><font color="blue">$ 19.800</font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=ac.get(i).getId()%>" class="boton">COMPRAR</a>
    
        	<a href="/carrito?idprod=<%=ac.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodga3.jpg" align="left"><p><%=ac.get(i).getDescripcion()%></p><p><font color="blue">$ 14.890</font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=ac.get(i).getId()%>" class="boton">COMPRAR</a>
      
        	<a href="/carrito?idprod=<%=ac.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}
 	    } %>
    </div>
    <br>
    <h2>Gabinete Cooler Master:</h2>
      <div id="prod1">
      <% List<Producto> Com = (List<Producto>) request.getAttribute("Com"); %>
      		 <% for (int i = 0; i < Com.size(); i++) { %>
       <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodga4.jpg" align="left"><p><%=Com.get(i).getDescripcion()%></p><p><font color="blue">$ 11.060</font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=Com.get(i).getId()%>" class="boton">COMPRAR</a>
     
       		<a href="/carrito?idprod=<%=Com.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodga5.jpg" align="left"><p><%=Com.get(i).getDescripcion()%></p><p><font color="blue">$ 30.600</font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=Com.get(i).getId()%>" class="boton">COMPRAR</a>
       
        	<a href="/carrito?idprod=<%=Com.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodga6.jpg" align="left"><p><%=Com.get(i).getDescripcion()%></p><p><font color="blue">$ 39.100</font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=Com.get(i).getId()%>" class="boton">COMPRAR</a>
      
        	<a href="/carrito?idprod=<%=Com.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
       <%}
 	    } %>
    </div>
    <br>
    <h2>Gabinete Kolink:</h2>
      <div id="prod1">
      <% List<Producto> Knl = (List<Producto>) request.getAttribute("Knl"); %>
      		 <% for (int i = 0; i < Knl.size(); i++) { %>
       <%if (i == 0){%>
      <div id="fuego">
        <img src="media/prodga7.jpg" align="left"><p><%=Knl.get(i).getDescripcion()%></p><p><font color="blue">$ 12.250</font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=Knl.get(i).getId()%>" class="boton">COMPRAR</a>
       
        	<a href="/carrito?idprod=<%=Knl.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodga8.jpg" align="left"><p><%=Knl.get(i).getDescripcion()%></p><p><font color="blue">$ 8.150</font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=Knl.get(i).getId()%>" class="boton">COMPRAR</a>
        
        	<a href="/carrito?idprod=<%=Knl.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodga9.jpg" align="left"><p><%=Knl.get(i).getDescripcion()%></p><p><font color="blue">$ 11.100</font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=Knl.get(i).getId()%>" class="boton">COMPRAR</a>
 
        	<a href="/carrito?idprod=<%=Knl.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}
 	    } %>
    </div>
    </section>
    <footer>
    <div id="ayuda">
            <h2>AYUDA</h2>
            <p>Si tenés sugerencias o comentarios</p>
            <a href="conta.php"><button>contactos</button></a>
            </div>
            <div id="conct">
              <center>
              <h2>REDES</h2>
              <a href="https://www.instagram.com/compragamer_oficial/"><img src="media/instagram.png" height="50" width="50" hspace="8"></a>
              <a href="https://twitter.com/CompraGamerOK"><img src="media/twitter.png" height="50" width="50" hspace="6"></a>
                  </center>
              </div>
            <div id="ayuda2">
              <h2>INFORMACION</h2>
              <p>acerca de nosotros:</p>
              <a href="acerca.php"><button>acerca de:</button></a>
              </div>
    </footer>
  </body>