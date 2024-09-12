<header class="p-3 mb-2 bg-dark fixed-top text-white p-3 border rounded bg-light">
		  <% HttpSession misession = request.getSession(true);%>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
  <div class="container-fluid">
    <a class="navbar-brand" href="/Home?"><img class="d-inline-block align-text-top"
				src="media/logo-open.svg" width="100" height="30"></a>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav col-4 sm-12">
      
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/productos">Productos</a>
        </li>
      	<%if(misession.getAttribute("usuario") != null) {%>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/home">Home</a>
        </li>        
        <li class="nav-item">
          <a class="nav-link" href="<%=request.getContextPath()%>/ventashome">ventas</a>
        </li>
        <%}%>
         <li class="nav-item">
 		<%if(misession.getAttribute("usuario") != null) {%>
               <a class="nav-link" href="<%=request.getContextPath()%>/logOut"><span class="material-symbols-outlined">Logout</span></a>
 		<%}else{%>
          <a class="nav-link" href="<%=request.getContextPath()%>/iniciar">Login</a>
       <%}%>
        </li>
      </ul> 
        <li class="navbar-nav ms-auto">
          <a class="nav-link" href="<%=request.getContextPath()%>/carrito"><i class="fas fa-shopping-cart"></i></a>
       </li> 
    </div>
  </div>
</nav>
</header>