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

import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.dao.ProductoMemoria;
import com.ventas.dao.ProductoMemoriaImpl;
import com.ventas.entity.Producto;




@WebServlet(urlPatterns = { "/memorias"})
public class MemoriaServlet extends HttpServlet {

	public static List<Producto> productos = new ArrayList<Producto>();
	

	
	private ProductoMemoria mem=  new ProductoMemoriaImpl();
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/memorias.jsp");
	
		try {

			req.setAttribute("geil", mem.listarProductosMemoriaGeil());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {

			req.setAttribute("adata", mem.listarProductosMemoriaAdata());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {

			req.setAttribute("patriot", mem.listarProductosMemoriaPatriot());
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
