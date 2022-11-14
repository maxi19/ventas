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


import com.ventas.dao.ProductoFuente;
import com.ventas.dao.ProductoFuenteImpl;
import com.ventas.entity.Producto;


@WebServlet(urlPatterns = { "/fuente"})

public class FuenteServlet extends HttpServlet {
public static List<Producto> productos = new ArrayList<Producto>();
	
	private ProductoFuente fuent=  new ProductoFuenteImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/fuente.jsp");
	
		try {

			req.setAttribute("asus", fuent.listarProductosFuenteASUS());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {

			req.setAttribute("cooler", fuent.listarProductosFuenteCoolerMaster());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {

			req.setAttribute("kolink", fuent.listarProductosFuenteKolink());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		HttpSession misession= req.getSession(true);	

		if(misession.getAttribute("carrito") != null) {
			List<Producto> pedidos	=(List<Producto>) misession.getAttribute("carrito");
			req.setAttribute("carrito", pedidos);
		}
		

		dispatcher.forward(req, resp);
		
	}
}
