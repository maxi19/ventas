<% HttpSession misession = request.getSession(true);%>
<header>
	<input type="checkbox" name="" id="toggler"> 
	<label for="toggler" class="fas fa-bars"></label> 

	<a href="#" class="logo">FatimaSportShop<span>.</span></a>

	<nav class="navbar">
		<a href="<%=request.getContextPath()%>/home">Inicio</a> 
		<a href="<%=request.getContextPath()%>/productos">Productos</a>
		<%if(misession.getAttribute("usuario") != null) {%>
		<a class="nav-link" href="<%=request.getContextPath()%>/ventashome">ventas</a> <%}%>
	</nav>
	<div class="icons">
		<a href="#" class="fas fa-heart"></a> <a href="<%= request.getContextPath() %>/carrito" class="fas fa-shopping-cart"></a> 
		<%if(misession.getAttribute("usuario") != null) {%>
		<a href="<%=request.getContextPath()%>/logOut" class="material-symbols-outlined"></a>
		<a href="<%=request.getContextPath()%>/logOut" class="fas fa-sign-out-alt"></a>
		
		<%}else{%>
			<a href="<%=request.getContextPath()%>/iniciar" class="fas fa-user"></a>
		
		<%}%>
	</div>
</header>