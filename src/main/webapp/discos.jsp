<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>



<!DOCTYPE html>
  <html>
  <head>
	  <title>Discos:
      </title>
      <link rel="stylesheet" href="estilo2.css">
  </head>
  <body>
    <header>
      <div id="log">
      <a href="inicio.html"><img src="media/logo.png"  align="left" width="120" hight="60" alt="logo"></a>
      <a href=""> <button>cerrar sesion</button></a>
      </div>
      <nav> 
      <p>Buscador: <input type="search" name="busqueda" placeholder="gabinetes,fuentes,etc">
      <button>Buscar</button>
      </p>
    </nav>
    <nav>
      <ul id="menu">
        <li><a href="">COMPONENTES:</a>
        <ul>
          <li><a href="discos">DISCOS DE ALMACENAMIENTO</a></li>
          <li><a href="ram.html">MEMORIAS RAM</a></li>
          <li><a href="micro.html">PROCESADORES</a></li>
          <li><a href="cooler.html">COOLERS</a></li>
          <li><a href="placa.html">PLACAS MADRES</a></li>
          <li><a href="gabinete.html">GABINETES</a></li>
          <li><a href="fuente.html">FUENTES</a></li>
        </ul>  
      </li>
      </ul>
    </nav>
    </header>
    
     <section id="inicio">
      <h1>Discos Rigidos de Western Digital:</h1>
      <div id="prod1">
     	<% List<Producto> productos = (List<Producto>) request.getAttribute("productos"); %>
      		 <% for (int i = 0; i < productos.size(); i++) { %>
 	    
 	    <%if (i == 0){%>
 	    
 	     		 <div id="fuego">
		       		<img src="media/proddisco.jpg" align="left"><p><%=productos.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=productos.get(i).getPrecio()%></font></p><button>COMPRAR</button>
		      		 <a href="#miModal"><button>INFO</button></a> 
		      	</div>	
				
 	    <%}else if(i == 1){%>
 	          <div id="p">
        		<img src="media/proddisco2.jpg" align="left"><p><%=productos.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=productos.get(i).getPrecio()%></font></p><button>COMPRAR</button>
       			 <a href="#miModal2"><button>INFO</button></a> 
     		</div>

		<%} else { %>
		      <div id="f">
        		<img src="media/proddisco3.jpg" align="left"><p><%=productos.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=productos.get(i).getPrecio()%></font></p><button>COMPRAR</button>
       			 <a href="#miModal3"><button>INFO</button></a> 
     			 </div>
		<%}} %>
     </div>
    

    <h1>Discos Solido de Team:</h1>
      <div id="prod1">
      <div id="fuego">
       <img src="media/prodssd.jpg" align="left"><p>Disco Solido SSD Team 240GB T-Force Vulcan Z 540MB/s</p><br></br><p><font color="blue">$ 5.600</font></p><button>COMPRAR</button>
       <a href="#miModal4"><button>INFO</button></a>  
      </div>
      <div id="p">
        <img src="media/prodsdd2.jpg" align="left"><p>Disco Solido SSD Team 1TB T-Force Vulcan Z 550MB/s</p><br></br><p><font color="blue">$ 16.400</font></p><button>COMPRAR</button>
        <a href="#miModal5"><button>INFO</button></a> 
      </div>
      <div id="f">
        <img src="media/prodssd3.jpg" align="left"><p>Disco Solido SSD M.2 Team 2TB T-Create 2100MB/s NVMe PCI-E x4</p><p><font color="blue">$ 39.290</font></p><button>COMPRAR</button>
        <a href="#miModal6"><button>INFO</button></a> 
      </div>
    </div>
    <h1>Discos Solido de Hikvision y PNY:</h1>
      <div id="prod1">
      <div id="fuego">
        <img src="media/prodssd4.jpg" align="left"><p>Disco Solido SSD HIKVISION C100 120GB 460MB/s</p><br></br><p><font color="blue">$ 3.250</font></p><button>COMPRAR</button>
        <a href="#miModal7"><button>INFO</button></a>   
      </div>
      <div id="p">
        <img src="media/prodssd4.jpg" align="left"><p>Disco Solido SSD HIKVISION C100 240GB 550MB/s</p><br></br><p><font color="blue">$ 5.230</font></p><button>COMPRAR</button>
        <a href="#miModal8"><button>INFO</button></a> 
      </div>
      <div id="f">
        <img src="media/prodssd5.jpg" align="left"><p>Disco Solido SSD M.2 PNY 1TB PCI-E NVMe Gen4 x4 </p><br></br><p><font color="blue">$ 26.640</font></p><button>COMPRAR</button>
        <a href="#miModal9"><button>INFO</button></a> 
      </div>
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
<ul>Tipo De Conexión SATA</ul>
<ul>Consumo 30 w</ul>
<ul>Tipo De Disco
Mecánico</ul></hr>
<h1>RENDIMIENTO</h1>
<hr><ul>Memoria Cache
64 mb</ul>
<ul>Velocidad De Rotación
7200 rpm</ul>
<ul>Velocidad De Interface
6.0</ul>
<ul>Capacidad
1000 gb</ul></hr>
		</div>
</div>
<div id="miModal2" class="modal">
		<div class="modal-contenido2">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Tipo De Conexión SATA</ul>
<ul>Consumo 8 w</ul>
<ul>Tipo De Disco
Mecánico</ul></hr>
<h1>RENDIMIENTO</h1>
<hr><ul>Memoria Cache
256 mb</ul>
<ul>Velocidad De Rotación
7200 rpm</ul>
<ul>Velocidad De Interface
6.0</ul>
<ul>Capacidad
8000 gb</ul></hr>
		</div>
</div>
<div id="miModal3" class="modal">
		<div class="modal-contenido3">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Tipo De Conexión SATA</ul>
<ul>Consumo 7 w</ul>
<ul>Tipo De Disco
Mecánico</ul></hr>
<h1>RENDIMIENTO</h1>
<hr><ul>Memoria Cache
64 mb</ul>
<ul>Velocidad De Rotación
5400 rpm</ul>
<ul>Velocidad De Interface
6.0</ul>
<ul>Capacidad
3000 gb</ul></hr>
		</div>
		</div>
</div>
<div id="miModal4" class="modal">
		<div class="modal-contenido4">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Tipo De Conexión SATA</ul>
<ul>Consumo 3 w</ul>
<ul>Tipo De Disco
Solido</ul></hr>
<h1>RENDIMIENTO</h1>
<hr><ul>Memoria Cache
128 mb</ul>
<ul>Velocidad De Rotación
00 rpm</ul>
<ul>Velocidad De Interface
0.0</ul>
<ul>Capacidad
200 tb</ul>
<ul>Vel Lectura Secuencial
520 mb/s</ul>
<ul>el Escritura Secuencial
470 mb/s</ul>
<ul>Terabytes Written
200 tb</ul>
<ul>Capacidad
240 gb</ul></hr>
		</div>
</div>
<div id="miModal5" class="modal">
		<div class="modal-contenido5">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
  <ul>Tipo De Conexión SATA</ul>
<ul>Consumo 3 w</ul>
<ul>Tipo De Disco
Solido</ul></hr>
<h1>RENDIMIENTO</h1>
<hr><ul>Memoria Cache
128 mb</ul>
<ul>Velocidad De Rotación
00 rpm</ul>
<ul>Velocidad De Interface
0.0</ul>
<ul>Vel Lectura Secuencial
550 mb/s</ul>
<ul>el Escritura Secuencial
500 mb/s</ul>
<ul>Terabytes Written
800 tb</ul>
<ul>Capacidad
1000 gb</ul></hr>
		</div>
</div>
<div id="miModal6" class="modal">
		<div class="modal-contenido6">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Tipo De Conexión SATA</ul>
<ul>Consumo 4 w</ul>
<ul>Tipo De Disco
Solido</ul></hr>
<h1>RENDIMIENTO</h1>
<hr><ul>Memoria Cache
128 mb</ul>
<ul>Velocidad De Rotación
00 rpm</ul>
<ul>Velocidad De Interface
0.0</ul>
<ul>Vel Lectura Secuencial
550 mb/s</ul>
<ul>el Escritura Secuencial
500 mb/s</ul>
<ul>Vel Lectura Random
220000 iops</ul>
<ul>Vel Escritura Random
200000 iops</ul>
<ul>Terabytes Written
1000 tb</ul>
<ul>Capacidad
1000 gb</ul></hr>
		</div>
</div>
<div id="miModal7" class="modal">
		<div class="modal-contenido7">
        <a href="#"><button>X</button></a>
        <hr>
        <h1>CARACTERISTICAS GENERALES</h1>
        <ul>Tipo De Conexión SATA</ul>
<ul>Consumo 2 w</ul>
<ul>Tipo De Disco
Solido</ul></hr>
<h1>RENDIMIENTO</h1>
<hr><ul>Memoria Cache
0 mb</ul>
<ul>Velocidad De Rotación
00 rpm</ul>
<ul>Velocidad De Interface
0.0</ul>
<ul>Vel Lectura Secuencial
460 mb/s</ul>
<ul>el Escritura Secuencial
360 mb/s</ul>
<ul>Terabytes Written
40 tb</ul>
<ul>Capacidad
120 gb</ul></hr>
		</div>
</div>
<div id="miModal8" class="modal">
		<div class="modal-contenido8">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Tipo De Conexión SATA</ul>
<ul>Consumo 2 w</ul>
<ul>Tipo De Disco
Solido</ul></hr>
<h1>RENDIMIENTO</h1>
<hr><ul>Memoria Cache
0 mb</ul>
<ul>Velocidad De Rotación
00 rpm</ul>
<ul>Velocidad De Interface
0.0</ul>
<ul>Vel Lectura Secuencial
530 mb/s</ul>
<ul>el Escritura Secuencial
400 mb/s</ul>
<ul>Vel Lectura Random
28000 iops</ul>
<ul>Vel Escritura Random
51000 iops</ul>
<ul>Terabytes Written
80 tb</ul>
<ul>Capacidad
240 gb</ul></hr>
		</div>
</div>
<div id="miModal9" class="modal">
		<div class="modal-contenido9">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Tipo De Conexión SATA</ul>
<ul>Consumo 6 w</ul>
<ul>Tipo De Disco
Solido</ul></hr>
<h1>RENDIMIENTO</h1>
<hr><ul>Memoria Cache
128 mb</ul>
<ul>Velocidad De Rotación
00 rpm</ul>
<ul>Velocidad De Interface
0.0</ul>
<ul>Vel Lectura Secuencial
5600 mb/s</ul>
<ul>Vel Escritura Secuencial
4300 mb/s</ul>
<ul>Capacidad
1000 gb</ul></hr>
		</div>
</div>

  </body>
  </html>