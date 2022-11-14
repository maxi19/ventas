package com.ventas.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/home"})
public class HomeServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession misession= req.getSession(true);	

		//valida si no existe una session, entonces redirecionamos
		if (misession.getAttribute("usuario") == null) {
			resp.sendRedirect("/discos");	
		}
		
		//si existe una session vamos a home
		if (misession.getAttribute("usuario") != null) {
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/home.jsp");
			dispatcher.forward(req, resp);			
		}

	}
	
	
	
	
	

}
