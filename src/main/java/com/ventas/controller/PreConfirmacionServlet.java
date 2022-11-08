package com.ventas.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.entity.Producto;

@WebServlet(urlPatterns = { "/preparacion-venta"})
public class PreConfirmacionServlet extends HttpServlet {
	
	private ProductoDao dao =  new ProductoDaoImpl();


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/pre.jsp");
		Producto prod = null;
		
		String id =(String) req.getParameter("idproducto");	
		int idProd = Integer.parseInt(id);	
		try {
		 prod =	dao.obtenerProducto(idProd);
		 
		 
		 
		 
		req.setAttribute("producto", prod);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		req.setAttribute("idProducto", idProd);
		rd.forward(req, resp);
	}
}
