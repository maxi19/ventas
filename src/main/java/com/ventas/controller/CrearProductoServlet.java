package com.ventas.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/crearProducto"})
public class CrearProductoServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nombre= (String) req.getParameter("stock");
		String stock= (String) req.getParameter("stock");
		String precio= (String) req.getParameter("precio");
		String idCategoria= (String) req.getParameter("categoria");
		String idMarca= (String) req.getParameter("marca");
	
	}

	
	
	
	
}
