<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
    <link rel="stylesheet" href="estilo4.css">
</head>
<body>
    <div id="SI">
    <h1>Iniciar Sension</h1>
  <form action="/login?" method="POST">
    
        <h3>Usuario:</h3>
		<input type="text" placeholder="Usuario" name="user" id="user" required>

		<h3>Contraseña:</h3>
		<input type="password" placeholder="Contraseña" name="password" id="password" required>

        <input type="submit" name="login"  value="Iniciar Sension">

    </form>


    <h1>Crear usuario</h1>
    <a href="#miModal"><button>registrarse</button></a>
</div>
<div id="miModal" class="modal">
		<div class="modal-contenido">
            <h1>volver a iniciar sension?</h1>
        <a href=""><button>inicio de sension</button></a>
	        <form method="post">
				<H1>RESGISTRO:<h1>
				<h3>Nombre:</h3>
				<input type="text" placeholder="Nombre" name="name" id="name" required>
				
				<h3>Email:</h3>
				<input type="email" placeholder="email" name="email" id="email" required>
				
				<h3>Contraseña:</h3>
				<input type="password" placeholder="Contraseña" name="contra" id="contra" required>
				
				<h3>Usuario:</h3>
				<input type="text" placeholder="Usuario" name="usuario" id="usuario" required>
				
				<input type="submit" name="registre" value="Crear Usuario">
	
			</form>
		</div>
	</div>
</body>
</html>