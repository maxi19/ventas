<%@page import="com.ventas.entity.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
  <html>
  <head>
	  <title>PLacas:
      </title>
      <link rel="stylesheet" href="style/estilo2.css">
  </head>
  <body>
    <header>
      <div id="log">
      <a href="inicio"><img src="media/logo.png"  align="left" width="120" hight="60" alt="logo"></a>
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
          <li><a href="ram">MEMORIAS RAM</a></li>
          <li><a href="micro">PROCESADORES</a></li>
          <li><a href="cooler">COOLERS</a></li>
          <li><a href="placa">PLACAS MADRES</a></li>
          <li><a href="gabinete">GABINETES</a></li>
          <li><a href="fuente">FUENTES</a></li>
        </ul>  
      </li>
      </ul>
    </nav>
    </header>
    <section id="inicio">
      <h1>Mother ASUS:</h1>
      <div id="prod1">
      <% List<Producto> asus = (List<Producto>) request.getAttribute("asus"); %>
      		 <% for (int i = 0; i < asus.size(); i++) { %>
      		 
      		 <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodpla.jpg" align="left"><p><%=asus.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=asus.get(i).getPrecio()%></font></p><a href="/preparacion-venta?idproducto=<%=asus.get(i).getId()%>" >COMPRAR</a>
       <a href="#miModal"><button>INFO</button></a>  
       	<a href="/carrito?idprod=<%=asus.get(i).getId()%>">AGREGAR A CARRITO</a> 
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodpla2.jpg" align="left"><p><%=asus.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=asus.get(i).getPrecio()%></font></p><a href="/preparacion-venta?idproducto=<%=asus.get(i).getId()%>" >COMPRAR</a>
        <a href="#miModal2"><button>INFO</button></a>
        	<a href="/carrito?idprod=<%=asus.get(i).getId()%>">AGREGAR A CARRITO</a> 
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodpla3.jpg" align="left"><p><%=asus.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=asus.get(i).getPrecio()%></font></p><a href="/preparacion-venta?idproducto=<%=asus.get(i).getId()%>" >COMPRAR</a>
        <a href="#miModal3"><button>INFO</button></a>
        	<a href="/carrito?idprod=<%=asus.get(i).getId()%>">AGREGAR A CARRITO</a> 
      </div>
     <%}
      		 }%>
    </div>
    
    <h1>Mother Asrock:</h1>
      <div id="prod1">
      <% List<Producto> asrock = (List<Producto>) request.getAttribute("asrock"); %>
      		 <% for (int i = 0; i < asrock.size(); i++) { %>
      		 
      		 <%if (i == 0){%>
      <div id="fuego">
       <img src="media/prodpla4.jpg" align="left"><p><%=asrock.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=asrock.get(i).getPrecio()%></font></p><a href="/preparacion-venta?idproducto=<%=asrock.get(i).getId()%>" >COMPRAR</a>
       <a href="#miModal4"><button>INFO</button></a>
       	<a href="/carrito?idprod=<%=asrock.get(i).getId()%>">AGREGAR A CARRITO</a>    
      </div>
      <%}else if(i == 1){%>
      <div id="p">
        <img src="media/prodpla5.jpg" align="left"><p><%=asrock.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=asrock.get(i).getPrecio()%></font></p><a href="/preparacion-venta?idproducto=<%=asrock.get(i).getId()%>" >COMPRAR</a>
        <a href="#miModal5"><button>INFO</button></a>
        	<a href="/carrito?idprod=<%=asrock.get(i).getId()%>">AGREGAR A CARRITO</a>
      </div>
      <%} else { %>
      <div id="f">
        <img src="media/prodpla6.jpg" align="left"><p><%=asrock.get(i).getDescripcion()%></p><p><font color="blue"><%=asrock.get(i).getPrecio()%></font></p><a href="/preparacion-venta?idproducto=<%=asrock.get(i).getId()%>" >COMPRAR</a>
        <a href="#miModal6"><button>INFO</button></a>	
        	<a href="/carrito?idprod=<%=asrock.get(i).getId()%>">AGREGAR A CARRITO</a>
      </div>
    <%}
      		 }%>
    </div>
    
    <h1>Mother Gigabyte:</h1>
      <div id="prod1">
      <% List<Producto> gigabyte = (List<Producto>) request.getAttribute("gigabyte"); %>
      		 <% for (int i = 0; i < gigabyte.size(); i++) { %>
      		 
      		 <%if (i == 0){%>
      <div id="fuego">
        <img src="media/prodpla7.jpg" align="left"><p><%=gigabyte.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=gigabyte.get(i).getPrecio()%></font></p><a href="/preparacion-venta?idproducto=<%=gigabyte.get(i).getId()%>" >COMPRAR</a>
        <a href="#miModal7"><button>INFO</button></a> 
        	<a href="/carrito?idprod=<%=gigabyte.get(i).getId()%>">AGREGAR A CARRITO</a>   
      </div>
      <%} else { %>
      <div id="p">
        <img src="media/prodpla8.jpg" align="left"><p><%=gigabyte.get(i).getDescripcion()%></p><br></br><p><font color="blue"><%=gigabyte.get(i).getPrecio()%></font></p><a href="/preparacion-venta?idproducto=<%=gigabyte.get(i).getId()%>" >COMPRAR</a>
        <a href="#miModal8"><button>INFO</button></a>
        	<a href="/carrito?idprod=<%=gigabyte.get(i).getId()%>">AGREGAR A CARRITO</a>  
      </div>
          <%}
      		 }%>
      
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
<ul>Plataforma
AMD</ul>
<ul>Socket
AM4 Ryzen 3th Gen,AM4 APU 3th Gen,AM4 Ryzen 4th Gen,AM4 APU 5000</ul>
<ul>
Chipsets Principal
AMD A520</ul>
<ul>Boton Bios Flashback
No</ul></hr>
<h1>CONECTIVIDAD</h1>
<hr><ul>Cantidad De Slot Pci-e 16X
1</ul>
<ul>Cantidad De Slot Pci-e 1X
2</ul>
<ul>Tecnología Multi Gpu
0</ul>
<ul>Puertos Sata
4</ul>
<ul>Salidas Vga
1</ul>
<ul>Salidas Hdmi
1</ul>
<ul>Salidas Dvi
0</ul>
<ul>Salidas Display Ports
0</ul>
<ul>Cantidad De Slot M.2 Totales
1</ul>
<ul>Placa Wifi Integrada
No</ul>
<ul>Placa De Red
1 Gb/s</ul>
<ul>Puerto Ps/2
Si</ul>
<ul>Puertos Usb 2.0 Traseros
2</ul>
<ul>Puertos Usb 3.0 Traseros
4</ul>
<ul>Cantidad De Slot M.2 Nvme
1</ul></hr>
		</div>
</div>
<div id="miModal2" class="modal">
		<div class="modal-contenido2">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Plataforma
AMD</ul>
<ul>Socket
AM4 Ryzen 3th Gen,AM4 APU 3th Gen,AM4 Ryzen 4th Gen,AM4 APU 5000</ul>
<ul>
Chipsets Principal
AMD B550</ul>
<ul>Boton Bios Flashback
No</ul></hr>
<h1>CONECTIVIDAD</h1>
<hr>
<ul>Cantidad De Slot Pci-e 16X
1</ul>
<ul>Cantidad De Slot Pci-e 1X
2</ul>
<ul>Puertos Sata
4</ul>
<ul>Salidas Vga
1</ul>
<ul>Salidas Hdmi
1</ul>
<ul>Salidas Dvi
1</ul>
<ul>Cantidad De Slot M.2 Totales
2</ul>
<ul>Placa De Red
1 Gb/s</ul>
<ul>Puertos Usb 2.0 Traseros
2</ul>
<ul>Puertos Usb 3.2 Traseros
6</ul>
<ul>Cantidad De Slot M.2 Nvme
2</ul></hr>
		</div>
</div>
<div id="miModal3" class="modal">
		<div class="modal-contenido3">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
<ul>Plataforma
AMD</ul>
<ul>Socket
AM4 APU 3th Gen,AM4 APU 5000,AM4 Ryzen 3th Gen,AM4 Ryzen 4th Gen</ul>
<ul>
Chipsets Principal
AMD B550</ul>
<ul>Boton Bios Flashback
Si</ul></hr>
<h1>CONECTIVIDAD</h1>
<hr>
<ul>Cantidad De Slot Pci-e 16X
2</ul>
<ul>Cantidad De Slot M.2 Totales
2</ul>
<ul>Placa Wifi Integrada
Si</ul>
<ul>Sistema De Conexión Rgb
ARGB Header,RGB Header</ul>
<ul>Placa De Red
2.5 Gb/s</ul>
<ul>Puerto Ps/2
Si</ul>
<ul>Puertos Usb 2.0 Traseros
2</ul>
<ul>Puertos Usb 3.2 Traseros
4</ul>
<ul>Puertos Usb Type-c
1</ul>
<ul>Cantidad De Slot M.2 Sata
2</ul>
<ul>Cantidad De Slot M.2 Nvme
2</ul></hr>
		</div>
</div>
<div id="miModal4" class="modal">
		<div class="modal-contenido4">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
        <hr>      
  <ul>Socket AMD AM4</ul>
<ul>2 DIMMs, Soporta memoria DDR4 3200+(OC)</ul>
<ul>1 PCIe 3.0 x16, 1 PCIe 2.0 x1</ul>
<ul>Opciones de salida gráficos : HDMI, DVI-D, D-Sub</ul>
<ul>Audio 7.1 canales HD (Realtek ALC887/897 Audio Codec)</ul>
<ul>4 SATA3, 1 Ultra M.2 (PCIe Gen3 x4 & SATA3)*</ul>
<ul>6 USB 3.2 Gen1 (2 Frontales, 4 Traseros)</ul>
<ul>Realtek Gigabit LAN</ul></hr>
		</div>
</div>
<div id="miModal5" class="modal">
		<div class="modal-contenido5">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
  <hr>      
  <ul>Soporta Socket AMD AM4 Ryzen™ 3000, 3000 G-Series, 4000 G-Series, 5000 y 5000 G-Series Desktop Processors</ul>
<ul>Diseño de fase de alimentación 8, Digi Power</ul>
<ul>Soporta memoria DDR4 4733+ (OC)</ul>
<ul>1 PCIe 4.0 x16, 1 PCIe 3.0 x16, 2 PCIe 3.0 x1, 1 M.2 Key E para WiFi</ul>
<ul>Opciones de salida gráficos: HDMI, D-Sub</ul>
<ul>AMD CrossFireX™</ul>
<ul>Audio 7.1 canales HD (Códec de audio Realtek ALC1200), Nahimic Audio</ul>
<ul>6 SATA3, 1 Hyper M.2 (PCIe Gen4 x4), 1 M.2 (PCIe Gen3 x2 & SATA3)</ul>
<ul>2 USB 3.2 Gen2 (Trasero Tipo A+C), 6 USB 3.2 Gen1 (2 Frontales, 4 Traseros)</ul>
<ul>Gigabit LAN</ul></hr>
</div>
</div>
<div id="miModal6" class="modal">
		<div class="modal-contenido6">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
        <hr>      
  <ul>Soporta Socket AMD AM4 Ryzen™ 2000, 3000, 4000 G-Series, 5000 y 5000 G-Series Desktop Processors</ul>
<ul>Soporta memoria DDR4 3533+ (OC)</ul>
<ul>2 PCIe 3.0 x16, 4 PCIe 2.0 x1</ul>
<ul>AMD Quad CrossFireX™</ul>
<ul>Opciones de salida gráficos: DisplayPort, HDMI</ul>
<ul>Audio 7.1 canales HD (Realtek ALC892/897 Audio Codec)</ul>
<ul>6 SATA3, 1 Ultra M.2 (PCIe Gen3 x4), 1 M.2 (PCIe Gen3 x2 & SATA3)</ul>
<ul>2 USB 3.2 Gen2 (Trasero Tipo A+C)</ul>
<ul>6 USB 3.2 Gen1 (2 Frontales, 4 Traseros)</ul>
<ul>Realtek Gigabit LAN</ul></hr>
		</div>
</div>
<div id="miModal7" class="modal">
		<div class="modal-contenido7">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
        <hr>      
  <ul>Compatible con AMD 5000 Series/ 5000 G-Series/ 4000 G-Series/ 3rd Gen Ryzen™/ 2nd Gen Ryzen™/ 1st Gen Ryzen™/ 2nd Gen Ryzen™ con Radeon™ Vega Graphics/ 1st Gen Ryzen™ con Radeon™ Vega Graphics/ Athlon™ con gráficos Radeon™ Vega/7.ª generación serie A/procesadores Athlon X4</ul>
<ul>DDR4 sin búfer sin ECC de dos canales, 2 DIMM</ul>
<ul>PCIe Gen3 x4 M.2 ultrarrápido compatible con modo PCIe NVMe y SATA</ul>
<ul>Condensadores de audio de alta calidad y protector de ruido de audio</ul>
<ul>Realtek®  Gigabit LAN con software acelerador de Internet</ul>
<ul>Smart Fan 5 cuenta con 5 sensores de temperatura y 2 cabezales de ventilador híbrido</ul>
<ul>BIOS UEFI de GIGABYTE™</ul>
<ul>Todo el Nuevo Centro de APLICACIONES GIGABYTE™, Simple y Fácil de Usar</ul>
</hr>
		</div>
</div>
<div id="miModal8" class="modal">
		<div class="modal-contenido8">
        <a href="#"><button>X</button></a>
        <h1>CARACTERISTICAS GENERALES</h1>
        <hr>      
  <ul>Admite procesadores AMD Ryzen™ 5000 Series/ Ryzen™ 5000 G-Series/ Ryzen™ 4000 G-Series y Ryzen™ 3000 Series</ul>
<ul>DDR4 sin búfer ECC/no ECC de dos canales, 2 DIMM</ul>
<ul>Solución VRM digital pura de 4+3 fases con MOSFET de bajo RDS (encendido)</ul>
<ul>Conector ultrarrápido NVMe PCIe 3.0 x4 M.2</ul>
<ul>Exclusivo GIGABYTE 8118 Gaming LAN con gestión de ancho de banda</ul>
<ul>RGB FUSION 2.0 admite tiras de LED RGB y LED direccionables</ul>
<ul>Smart Fan 5 cuenta con múltiples sensores de temperatura, cabezales de ventilador híbridos con FAN STOP</ul>
<ul>TQ-Flash Plus Actualice el BIOS sin instalar la CPU, la memoria y la tarjeta gráfica</ul>
<ul>Diseño de resistencias anti-azufre</ul>
</hr>
		</div>
</div>
  </body>
  </html>