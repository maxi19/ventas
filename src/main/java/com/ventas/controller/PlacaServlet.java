package com.ventas.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.dao.ProductoPlaca;
import com.ventas.dao.ProductoPlacaImpl;
import com.ventas.entity.Producto;




@WebServlet(urlPatterns = { "/placa"})
public class PlacaServlet extends HttpServlet {

	public static List<Producto> productos = new ArrayList<Producto>();
	

	
	private ProductoPlaca placa = new ProductoPlacaImpl();
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/placa.jsp");
	
		try {

			req.setAttribute("asus", placa.listarProductosPlacaASUS());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {

			req.setAttribute("asrock", placa.listarProductosPlacaAsrock());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {

			req.setAttribute("gigabyte", placa.listarProductosPlacaGigabyte());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		HttpSession misession= req.getSession(true);	

		if(misession.getAttribute("carrito") != null) {
			List<Producto> pedidos	= (List<Producto>) misession.getAttribute("carrito");
			req.setAttribute("carrito", pedidos);
		}
		

		dispatcher.forward(req, resp);
		
	}

	
	
	
}
