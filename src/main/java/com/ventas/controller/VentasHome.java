package com.ventas.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;
import com.ventas.service.producto.ProductoService;
import com.ventas.service.producto.ProductoServiceImp;

@WebServlet(urlPatterns = { "/ventashome"})
public class VentasHome extends HttpServlet{

	private ProductoService productoService = new ProductoServiceImp();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		HttpSession misession= req.getSession(true);	

		//valida si no existe una session, entonces redirecionamos
		if (misession.getAttribute("usuario") == null) {
			resp.sendRedirect("/productos");	
		}
		
		List<Producto> productos = null;
		try {
			productos = productoService.listarProductos();
		} catch (MercaditoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//si existe una session vamos a home
		if (misession.getAttribute("usuario") != null) {
			RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/ventas.jsp");
			dispatcher.forward(req, resp);			
		}

	}

}
