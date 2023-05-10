package com.ventas.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/eliminarProducto"})
public class EliminarServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ProductoDao servicio = new ProductoDaoImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String idProducto =req.getParameter("productoId");
		try {
			servicio.eliminarProducto(idProducto);
		} catch (MercaditoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}




}
