<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.util.List"%>
     <%@page import="com.ventas.entity.Producto"%>
    
<!DOCTYPE html>
  <html>
  <head>
	  <title>Coolers:
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
      <h2>Coolers De ID-Cooling:</h2>
      <div id="prod1">
      <% List<Producto> ic = (List<Producto>) request.getAttribute("ic"); %>
      		 <% for (int i = 0; i < ic.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
      <div id="fuego">
        <img src="media/prodcoo2.jpg" align="left"><p><%=ic.get(i).getDescripcion()%></p><p><font color="blue"><%=ic.get(i).getPrecio()%></font></p> <a href="/preparacion-venta?method=unidad&idproducto='<%ic.get(i).getId();%>" class="boton" >COMPRAR</a>
		
		   		<a href="/carrito?idprod=<%=ic.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
       <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodcoo5.jpg" align="left"><p><%=ic.get(i).getDescripcion()%></p><p><font color="blue"><%=ic.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=ic.get(i).getId()%>" class="boton">COMPRAR</a>
     
        	<a href="/carrito?idprod=<%=ic.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
       <%} else { %>
      <div id="f">
        <img src="media/prodcoo6.jpg" align="left"><p><%=ic.get(i).getDescripcion()%></p><p><font color="blue"><%=ic.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=ic.get(i).getId()%>" class="boton">COMPRAR</a>
        
        	<a href="/carrito?idprod=<%=ic.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
        <%}
 	    } %>
    </div>
    <br>
    <h2>Coolers Master Hype:</h2>
      <div id="prod1">
      <% List<Producto> mh = (List<Producto>) request.getAttribute("mh"); %>
      		 <% for (int i = 0; i < mh.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodcoo7.jpg" align="left"><p><%=mh.get(i).getDescripcion()%></p><p><font color="blue"><%=mh.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=mh.get(i).getId()%>" class="boton">COMPRAR</a>
      
       		<a href="/carrito?idprod=<%=mh.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodcoo8.jpg" align="left"><p><%=mh.get(i).getDescripcion()%></p><p><font color="blue"><%=mh.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=mh.get(i).getId()%>" class="boton">COMPRAR</a>
   
        	<a href="/carrito?idprod=<%=mh.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
       <%} else { %>
      <div id="f">
        <img src="media/prodcoo9.jpg" align="left"><p><%=mh.get(i).getDescripcion()%></p><p><font color="blue"><%=mh.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=mh.get(i).getId()%>" class="boton">COMPRAR</a>
     
        	<a href="/carrito?idprod=<%=mh.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
       <%}
 	    } %>
    </div>
    <br>
    <h2>Coolers De Deepcool:</h2>
      <div id="prod1">
      <% List<Producto> dp = (List<Producto>) request.getAttribute("dp"); %>
      		 <% for (int i = 0; i < mh.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
      <div id="fuego">
        <img src="media/prodcoo.jpg" align="left"><p><%=dp.get(i).getDescripcion()%></p><p><font color="blue"><%=dp.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=dp.get(i).getId()%>" class="boton">COMPRAR</a>
 
        	<a href="/carrito?idprod=<%=dp.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodcoo4.jpg" align="left"><p><%=dp.get(i).getDescripcion()%></p><p><font color="blue"><%=dp.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=dp.get(i).getId()%>" class="boton">COMPRAR</a>
       
        	<a href="/carrito?idprod=<%=dp.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodcoo3.jpg" align="left"><p><%=dp.get(i).getDescripcion()%></p><p><font color="blue"><%=dp.get(i).getPrecio()%></font></p><br></br><a href="/preparacion-venta?method=unidad&idproducto=<%=dp.get(i).getId()%>" class="boton">COMPRAR</a>
     
        	<a href="/carrito?idprod=<%=dp.get(i).getId()%>" class="boton2">CARRITO</a> 
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
    <div id="miModal" class="modal">
		<div class="modal-contenido">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
5 w</ul>
<ul>Tdp
180 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
154 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
32 dba</ul></hr>
		</div>
</div>
<div id="miModal2" class="modal">
		<div class="modal-contenido2">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
3 w</ul>
<ul>Tdp
250 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
154 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
35 dba</ul></hr>
		</div>
</div>
<div id="miModal3" class="modal">
		<div class="modal-contenido3">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
5 w</ul>
<ul>Tdp
280 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
157 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
2</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
35 dba</ul></hr>
		</div>
		</div>
</div>
<div id="miModal4" class="modal">
		<div class="modal-contenido4">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
5 w</ul>
<ul>Tdp
105 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
117 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
95 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
30 dba</ul></hr>
		</div>
</div>
<div id="miModal5" class="modal">
		<div class="modal-contenido5">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
  <ul>Consumo
3 w</ul>
<ul>Tdp
150 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
158 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Blanca</ul>
<ul>Nivel De Ruido Máxima
31 dba</ul></hr>
		</div>
</div>
<div id="miModal6" class="modal">
		<div class="modal-contenido6">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
10 w</ul>
<ul>Tdp
180 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
165 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
2</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
ARGB</ul>
<ul>Nivel De Ruido Máxima
27 dba</ul></hr>
		</div>
</div>
<div id="miModal7" class="modal">
		<div class="modal-contenido7">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
<hr><ul>Consumo
5 w</ul>
<ul>Tdp
105 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
112 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
80 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
25 dba</ul></hr>
		</div>
</div>
<div id="miModal8" class="modal">
		<div class="modal-contenido8">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
5 w</ul>
<ul>Tdp
130 w</ul>
<ul>Tipo De Disipasión
Aire</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
1</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Roja</ul>
<ul>Nivel De Ruido Máxima
28 dba</ul></hr>
		</div>
</div>
<div id="miModal9" class="modal">
		<div class="modal-contenido9">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Consumo
6 w</ul>
<ul>Tdp
150 w</ul>
<ul>Tipo De Disipasión
Aire</ul>
<ul>Altura
158 mm</ul></hr>
<h1>COOLERS Y DISIPADORES</h1>
<hr><ul>Coolers Fans Incluidos
2</ul>
<ul>Tamaño De Los Coolers
120 mm</ul>
<ul>Tipo De Iluminación
Sin iluminación</ul>
<ul>Nivel De Ruido Máxima
27.6 dba</ul></hr>
		</div>
</div>
  </body>
  </html>