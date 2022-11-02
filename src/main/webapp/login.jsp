<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
    <link rel="stylesheet" href="style/estilo8.css">
</head>
<body>
    <div id="SI">
    <a href=""><img src="media/logo.png"  align="right" width="120" hight="60" alt="logo"></a>
    <h1>Iniciar:</h1>
	    <form  action="/login?" method="POST">
	    	<h3>Email:</h3>
			<input type="text"placeholder="Usuario" name="user" id="email" >
			<h3>Contraseña:</h3>
			<input type="password"placeholder="Contraseña" name="password" id="contra" >
	    	<button>Iniciar sesion</button>
	    </form>
    </div>
</body>
</html>