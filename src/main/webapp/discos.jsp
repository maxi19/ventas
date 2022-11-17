<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>



<!DOCTYPE html>
  <html>
  <head>
	  <title>Discos:</title>
      <link rel="stylesheet" href="style/estilo11.css">
      <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </head>
  <body id="body">
    <header>
      <div id="log">
      <a href="inicio.html"><img src="media/logo.png"  align="left" width="120" hight="60" alt="logo"></a>
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
      <h2>Discos Rigidos de Western Digital:</h2>
      <div id="prod1">
      <div id="grilla">
     	<% List<Producto> productos = (List<Producto>) request.getAttribute("wd"); %>
      		 <% for (int i = 0; i < productos.size(); i++) { %>
      		 
 	    <%if (i == 0){%>
 	     		 <div id="fuego">
 	     		 
		       		<img src="media/proddisco.jpg" align="left"><p><%=productos.get(i).getDescripcion()%></p><p><font color="blue"><%=productos.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=productos.get(i).getId()%>" class="boton" >COMPRAR</a>
		      		 <a href="/carrito?idprod=<%=productos.get(i).getId()%>" class="boton2">CARRITO</a> 

		      	</div>	
				
 	    <%}else if(i == 1){%>
 	          <div id="p">
        		<img src="media/proddisco2.jpg" align="left"><p><%=productos.get(i).getDescripcion()%></p><p><font color="blue"><%=productos.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=productos.get(i).getId()%>" class="boton" >COMPRAR</a>
		      		 <a href="/carrito?idprod=<%=productos.get(i).getId()%>" class="boton2">CARRITO</a> 
     		</div>

		<%} else { %>
		      <div id="f">
        		<img src="media/proddisco3.jpg" align="left"><p><%=productos.get(i).getDescripcion()%></p><p><font color="blue"><%=productos.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=productos.get(i).getId()%>" class="boton" >COMPRAR</a>
		      		 <a href="/carrito?idprod=<%=productos.get(i).getId()%>" class="boton2">CARRITO</a>
     			 </div>
		<%}
 	    } %>
 	    </div>
     </div>
    <br>
    <h2>Discos Solido de Team:</h2>
    <div id="prod1">
    <% List<Producto> team = (List<Producto>) request.getAttribute("team"); %>
      		 <% for (int i = 0; i < team.size(); i++) { %>
       <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodssd.jpg" align="left"><p><%=team.get(i).getDescripcion()%></p><p><font color="blue"><%=team.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=team.get(i).getId()%>" class="boton" >COMPRAR</a>
		      		 <a href="/carrito?idprod=<%=team.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodsdd2.jpg" align="left"><p><%=team.get(i).getDescripcion()%></p><p><font color="blue"><%=team.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=team.get(i).getId()%>" class="boton" >COMPRAR</a>
		      		 <a href="/carrito?idprod=<%=team.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodssd3.jpg" align="left"><p><%=team.get(i).getDescripcion()%></p><p><font color="blue"><%=team.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=team.get(i).getId()%>" class="boton" >COMPRAR</a>
		      		 <a href="/carrito?idprod=<%=team.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}
       } %>
    </div>
     <br>
    <h2>Discos Solido de Hikvision y PNY:</h2>
      <div id="prod1">
      <% List<Producto> hp = (List<Producto>) request.getAttribute("hp"); %>
      		 <% for (int i = 0; i < hp.size(); i++) { %>
       <%if (i == 0){%>
      <div id="fuego">
        <img src="media/prodssd4.jpg" align="left"><p><%=hp.get(i).getDescripcion()%></p><p><font color="blue"><%=hp.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=hp.get(i).getId()%>" class="boton" >COMPRAR</a>
		      		 <a href="/carrito?idprod=<%=hp.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
       <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodssd4.jpg" align="left"><p><%=hp.get(i).getDescripcion()%></p><p><font color="blue"><%=hp.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=hp.get(i).getId()%>" class="boton" >COMPRAR</a>
		      		 <a href="/carrito?idprod=<%=hp.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
       <%} else { %>
      <div id="f">
        <img src="media/prodssd5.jpg" align="left"><p><%=hp.get(i).getDescripcion()%></p><p><font color="blue"><%=hp.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=hp.get(i).getId()%>" class="boton" >COMPRAR</a>
		      		 <a href="/carrito?idprod=<%=hp.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}
       } %>
    </div>
    </section>
    <footer>
    <div id="ayuda">
            <h2>AYUDA</h2>
            <p>Si tenes sugerencias o comentarios</p>
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
  </html>