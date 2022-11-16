package com.ventas.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/proxy"})
public  class ProxyServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HttpSession misession ;
	

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		misession = req.getSession(true);
		if (misession.getAttribute("usuario") == null) {
			resp.sendRedirect("/discos");	
		}
		
		if (misession.getAttribute("usuario") != null && req.getParameter("method") != null) {
			String metodo = (String)req.getParameter("method");	
			if (metodo.equals("agregarInput")) {
				RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/productoForm.jsp");
				dispatcher.forward(req, resp);
			}
		}
		
	
	
	}

	
	

	
}
