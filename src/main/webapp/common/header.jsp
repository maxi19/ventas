
<% HttpSession misession = request.getSession(true);%>
<header>
	<input type="checkbox" name="" id="toggler"> <label
		for="toggler" class="fas fa-bars"></label> <img class=""
		src="media/logo-open.svg" width="150" height="75">

	<nav class="navbar">
		<%if(misession.getAttribute("usuario") != null) {%>
		<a href="<%=request.getContextPath()%>/home">Inicio</a> <a
			class="nav-link" href="<%=request.getContextPath()%>/ventashome">ventas</a>
		<%}%>
		<%if(misession.getAttribute("usuario") != null) {%>
		<a href="<%=request.getContextPath()%>/logOut"><span
			class="material-symbols-outlined">Logout</span></a>
		<%}else{%>
		<a href="<%=request.getContextPath()%>/iniciar">Login</a>
		<%}%>
		<a href="<%=request.getContextPath()%>/productos">Productos</a>
	</nav>
	<div class="icons">
		<a href="#" class="fas fa-heart"></a> <a href="#"
			class="fas fa-shopping-cart"></a> <a href="#" class="fas fa-user"></a>
	</div>
</header>

