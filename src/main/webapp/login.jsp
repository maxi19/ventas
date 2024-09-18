<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script type="text/javascript">
	var contextPath='<%=request.getContextPath()%>';
</script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>

<script src="scripts/jquery/jquery-3.6.4.min.js"></script>

<script src="scripts/login.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

</head>
<body class="bg-dark">
	<div class="container bg-dark text-white">
		<div class="row justify-content-center align-items-center vh-100">
			<form class="border rounded col-sm-5">
				<center>
					<h1>FatimaSportShop<span style="color: #B71C1C;">.</span></h1>
				</center>
				<div class="form-row">
					<h3>User:</h3>
					<input type="text"
						class="form-control form-control-lg form-control-sm"
						placeholder="Usuario" name="user" id="email">
					<h3>Password:</h3>
					<div class="input-group">
						<input type="password"
							class="form-control form-control-lg form-control-sm"
							placeholder="Contraseña" name="password" id="password" required>
						<span class="input-group-text"><input type="button"
							class="btn btn-secondary" onclick="mostrarContrasena0()"
							value="ver"></span>
					</div>
				</div>
				<br>
				<div class="col p-1 ">
					<button class="btn btn-danger" id="btn-login">Iniciar
						sesion</button>
				</div>
			</form>
		</div>
   </div>

</body>
<script>
	function mostrarContrasena0() {
		var tipo = document.getElementById("password");
		if (tipo.type == "password") {
			tipo.type = "text";
		} else {
			tipo.type = "password";
		}
	}
</script>

</html>