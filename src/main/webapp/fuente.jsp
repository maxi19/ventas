<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
  <html>
  <head>
	  <title>Fuentes:
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
      <h2>Fuente De Alimentacion ASUS:</h2>
      <div id="prod1">
      <% List<Producto> asus = (List<Producto>) request.getAttribute("asus"); %>
      		 <% for (int i = 0; i < asus.size(); i++) { %>
       <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodfue1.jpg" align="left"><p><%=asus.get(i).getDescripcion()%></p><p><font color="blue"><%=asus.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=asus.get(i).getId()%>" class="boton">COMPRAR</a>
       
       	<a href="/carrito?idprod=<%=asus.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodfue2.jpg" align="left"><p><%=asus.get(i).getDescripcion()%></p><p><font color="blue"><%=asus.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=asus.get(i).getId()%>" class="boton">COMPRAR</a>
        
        	<a href="/carrito?idprod=<%=asus.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodfue3.jpg" align="left"><p><%=asus.get(i).getDescripcion()%></p><p><font color="blue"><%=asus.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=asus.get(i).getId()%>" class="boton">COMPRAR</a>
  
        	<a href="/carrito?idprod=<%=asus.get(i).getId()%>" class="boton2">CARRITO</a> 
      </div>
      <%}
       } %>
    </div>
    <br>
    <h2>Fuente De Alimentacion Cooler Master:</h2>
      <div id="prod1">
      <% List<Producto> cooler = (List<Producto>) request.getAttribute("cooler"); %>
      		 <% for (int i = 0; i < cooler.size(); i++) { %>
       <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodfue4.jpg" align="left"><p><%=cooler.get(i).getDescripcion()%></p><p><font color="blue"><%=cooler.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=cooler.get(i).getId()%>" class="boton">COMPRAR</a>
       
       	<a href="/carrito?idprod=<%=cooler.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodfue5.jpg" align="left"><p><%=cooler.get(i).getDescripcion()%></p><p><font color="blue"><%=cooler.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=cooler.get(i).getId()%>" class="boton">COMPRAR</a>
        
        	<a href="/carrito?idprod=<%=cooler.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodfue6.jpg" align="left" ><p><%=cooler.get(i).getDescripcion()%></p><p><font color="blue"><%=cooler.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=cooler.get(i).getId()%>" class="boton">COMPRAR</a>
        
        	<a href="/carrito?idprod=<%=cooler.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
       <%}
       }%>
    </div>
    <br>
    <h2>Fuente Kolink:</h2>
      <div id="prod1">
      <% List<Producto> kolink = (List<Producto>) request.getAttribute("kolink"); %>
      		 <% for (int i = 0; i < kolink.size(); i++) { %>
       <%if (i == 0){%>
      <div id="fuego">
        <img src="media/prodfue7.jpg" align="left"><p><%=kolink.get(i).getDescripcion()%></p><p><font color="blue"><%=kolink.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=kolink.get(i).getId()%>" class="boton">COMPRAR</a>
        
        	<a href="/carrito?idprod=<%=kolink.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodfue8.jpg" align="left"><p><%=kolink.get(i).getDescripcion()%></p><p><font color="blue"><%=kolink.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=kolink.get(i).getId()%>" class="boton">COMPRAR</a>
   
        	<a href="/carrito?idprod=<%=kolink.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
       <%} else { %>
      <div id="f">
        <img src="media/prodfue9.jpg" align="left"><p><%=kolink.get(i).getDescripcion()%></p><p><font color="blue"><%=kolink.get(i).getPrecio()%></font></p><a href="/preparacion-venta?method=unidad&idproducto=<%=kolink.get(i).getId()%>" class="boton">COMPRAR</a>
        
        	<a href="/carrito?idprod=<%=kolink.get(i).getId()%>" class="boton2">CARRITO</a>
      </div>
       <%}
       }%>
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
    <div id="miModal" class="modal">
		<div class="modal-contenido">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
        <hr>      
  <ul>Los capacitores y los chokes pasan pruebas exigentes para lograr la certificación de grado militar.</ul>
<ul>Los baleros de doble bola del ventilador pueden durar hasta el doble que los diseños de rodamientos de manguito.</ul>
<ul>Un revestimiento protector de PCB protege contra la humedad, el polvo y las temperaturas extremas.</ul>
<ul>La certificación 80 Plus Bronze se obtiene con componentes de alta calidad que pasan pruebas rigurosas</ul>
<ul>El diseño del ventilador Axial-tech presenta un eje de ventilador más pequeño que facilita aspas más largas y un anillo de barrera que aumenta la presión de aire hacia abajo.</ul>
<ul>La tecnología 0dB te permite disfrutar de juegos ligeros en relativo silencio.</ul>
<ul>Los cables trenzados dejan a tu plataforma con un aspecto tácticamente limpio.</ul>
<ul>Conector de CPU de 8 pines de 80cm (EPS 12V)</ul>
<ul>Garantía de 6 años incluida.</ul></hr>
		</div>
</div>
<div id="miModal2" class="modal">
		<div class="modal-contenido2">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
        <hr>      
  <ul>Los disipadores térmicos ROG cubren los componentes críticos, temperaturas más bajas y menos ruido.</ul>
<ul>El diseño de ventilador Axial-tech presenta un eje de ventilador más pequeño que facilita aspas más largas y un anillo de barrera que aumenta la presión de aire hacia abajo.</ul>
<ul>Los cojinetes de ventilador de bola doble pueden durar hasta el doble que los diseños de cojinetes convencionales.</ul>
<ul>La tecnología 0dB te permite disfrutar de juegos ligeros en relativo silencio.</ul>
<ul>Una certificación 80 Plus Gold es el resultado de condensadores japoneses y otros componentes premium.</ul>
<ul>La personalización cosmética se habilita mediante un logotipo magnético y pegatinas que le ayudan a cambiar el aspecto del lado visible a su gusto.</ul>
<ul>Los cables totalmente modulares mantienen tu equipo limpio y ordenado.</ul>
<ul>Garantía de 10 años incluida.</ul></hr>
		</div>
</div>
<div id="miModal3" class="modal">
		<div class="modal-contenido3">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
        <hr>      
  <ul>Los capacitores y los chokes pasan pruebas exigentes para lograr la certificación de grado militar.</ul>
<ul>Los baleros de balero de doble bola del ventilador pueden durar hasta el doble que los diseños de rodamientos de manguito.</ul>
<ul>Un revestimiento protector de PCB protege contra la humedad, el polvo y las temperaturas extremas.</ul>
<ul>La certificación 80 Plus Bronze se obtiene con componentes de alta calidad que pasan pruebas rigurosas.</ul>
<ul>El diseño del ventilador Axial-tech presenta un eje de ventilador más pequeño que facilita aspas más largas y un anillo de barrera que aumenta la presión de aire hacia abajo.</ul>
<ul>La tecnología 0dB te permite disfrutar de juegos ligeros en relativo silencio.</ul>
<ul>Los cables trenzados dejan su plataforma con un aspecto tácticamente limpio.</ul>
<ul>Conector de CPU de 8 pines de 80cm (EPS 12V)</ul>
<ul>Garantía de 6 años incluida.</ul></hr>
		</div>
		</div>
</div>
<div id="miModal4" class="modal">
		<div class="modal-contenido4">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
        <hr>      
  <ul>MODELO MPW-5001-ACAAN1</ul>
  <ul>VERSIÓN ATX ATX 12V V2.31</ul>
  <ul>PFC PFC activo (>0,9 típico)</ul>
  <ul>VOLTAJE DE ENTRADA 100-240V</ul>
  <ul>CORRIENTE DE ENTRADA 10-5A</ul>
  <ul>FRECUENCIA DE ENTRADA 50-60Hz</ul>
  <ul>DIMENSIONES 150 (L) x 140 (B) x 86 (H) mm</ul>
  <ul>TAMAÑO DEL VENTILADOR 120mm</ul>
  <ul>COJINETE DEL VENTILADOR Ventilador de manga</ul>
  <ul>POTENCIA BUENA SEÑAL 100-500ms</ul>
  <ul>TIEMPO DE ESPERA >10 ms al 100 % de carga completa</ul>
  <ul>EFICIENCIA 75% a carga típica</ul>
  <ul>MTBF >100.000 horas</ul>
  <ul>TEMPERATURA DE FUNCIONAMIENTO 10-40°C</ul>
  <ul>PROTECCIONES OVP/OPP/OTP/SCP</ul>
  <ul>TUV REGLAMENTARIO, cTUVus, CE, FCC, BSMI</ul>
  <ul>CONECTORES MB 20+4 PIN 1</ul>
  <ul>CONECTORES CPU 12V 4+4 PIN 1</ul>
  <ul>CONECTORES SATA 6</ul>
  <ul>CONECTORES PERIFÉRICOS DE 4 PINES 3</ul>
  <ul>CABLE FDD CONECTORES DE 4 PINES 1</ul>
  <ul>CONECTORES PCI-E 6+2 PINES 2</ul>
  <ul>SERIE Serie Elite</ul></hr>
		</div>
</div>
<div id="miModal5" class="modal">
		<div class="modal-contenido5">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
  <ul>Versión ATX ATX 12V V2.52</ul>
  <ul>PFC PFC activo</ul>
  <ul>Voltaje de entrada 100-240V</ul>
  <ul>Corriente de entrada 10-6A</ul>
  <ul>Frecuencia de entrada 50-60Hz</ul>
  <ul>Dimensiones (L X W X H) 140 x 150 x 86 mm</ul>
  <ul>Tamaño del ventilador 120mm</ul>
  <ul>Rodamiento del ventilador HDB</ul>
  <ul>Velocidad del ventilador 2400 RPM</ul>
  <ul>Nivel de ruido @ 20% 12,16 dBA</ul>
  <ul>Nivel de ruido @ 50% 17,9 dBA</ul>
  <ul>Nivel de ruido al 100% 39.8 dBA</ul>
  <ul>Eficiencia 85% típicamente</ul>
  <ul>Clasificación 80 PLUS 80 PLUS Bronce</ul>
  <ul>ERP 2014 Lote 3 si</ul>
  <ul>Temperatura de funcionamiento 40 ° C</ul>
  <ul>Buena señal de potencia 100-500ms</ul></hr>
		</div>
</div>
<div id="miModal6" class="modal">
		<div class="modal-contenido6">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Versión atx versión atx 12v. 2.41</ul>
<ul>PFC activo</ul>
<ul>Voltaje de entrada 100-240v</ul>
<ul>Corriente de entrada 12-6a</ul>
<ul>Frecuencia de entrada 47-63hz</ul>
<ul>Dimensiones (l x an x al) 160x150x86mm</ul>
<ul>Tamaño del ventilador 120 mm</ul>
<ul>Cojinete de ventilador hdb</ul>
<ul>Velocidad del ventilador 1500 rpm</ul>
<ul>Nivel de ruido @ 20% 0 dba</ul>
<ul>Nivel de ruido @ 50% 17,8 dba</ul>
<ul>Nivel de ruido @ 100% 25,9 dba</ul>
<ul>Eficiencia ≥90% a carga típica</ul>
<ul>Calificación 80+ GOLD</ul>
<ul>mtbf >100.000 horas</ul></hr>
		</div>
</div>
<div id="miModal7" class="modal">
		<div class="modal-contenido7">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
<hr><ul>80 PLUS Bronze certified</ul>
<ul>120mm Silent Hydraulic Bearing (HYB) Fan</ul>
<ul>Reliable flat cable</ul>
<ul>Single +12V rail</ul>
<ul>OVP/OPP/SCP/UVP/OCP/OTP protection</ul>
<ul>3 years warranty (Adjusted according to different regions)</ul></hr>
		</div>
</div>
<div id="miModal8" class="modal">
		<div class="modal-contenido8">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>80 PLUS Gold certified</ul>
<ul>Fully modular design</ul>
<ul>120mm Smart Hydraulic Bearing (HYB) Fan</ul>
<ul>Main Japanese capacitors</ul>
<ul>Powerful single +12V rail</ul>
<ul>OVP/OPP/SCP/UVP/OCP/OTP protection</ul>
<ul>Compact size</ul>
<ul>5 years warranty (Adjusted according to different regions)</ul></hr>
		</div>
</div>
<div id="miModal9" class="modal">
		<div class="modal-contenido9">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Model GP-P1000GM</ul>
<ul>Type Intel Form Factor ATX 12V v2.31</ul>
<ul>PFC Active PFC (>0.9 typical)</ul>
<ul>Input Voltage 100-240 Vac (full range)</ul>
<ul>Input Current 15-6.5 A , (China: 10-6 A)</ul>
<ul>Input Frequency 60-50 Hz</ul>
<ul>Output Capacity 1000W</ul>
<ul>Dimension 150 x 140 x 86 mm</ul>
<ul>Fan Type 120mm Hydraulic Bearing ( HYB ) fan</ul>
<ul>80 PLUS Gold</ul>
<ul>Efficiency 90% at typical load</ul>
<ul>MTBF >100,000 hours</ul>
<ul>Protection OVP/OPP/SCP/UVP/OCP/OTP</ul>
<ul>Power Good Signal 100-500ms</ul>
<ul>Hold Up Time >16ms</ul>
<ul>Cable Type Flat, All black</ul></hr>
		</div>
</div>
  </body>