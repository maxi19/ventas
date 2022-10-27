package com.ventas.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/login"})
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		boolean check = false;		
		String user = (String)req.getParameter("user");
		String password = (String) req.getParameter("password");
		
		if ("admin".equals(user) && "admin".equals(password)) {
			check= true;
		}
		
		//sies ok, guardamos en session y redirigimos al home de stocks
		if(check==true) 
		{
		        RequestDispatcher rd=req.getRequestDispatcher("/discos");
		        rd.forward(req, resp);
		}
		else
		{
			//enviamos a una pagina de error
			
				RequestDispatcher rd=req.getRequestDispatcher("/error.jsp");
		        rd.forward(req, resp);
		}	
		
		
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
