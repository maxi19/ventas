package com.ventas.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.dao.producto.ProductoDao;
import com.ventas.dao.producto.ProductoDaoImpl;
import com.ventas.entity.*;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/carrito"})
public class CarritoServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ProductoDao dao =  new ProductoDaoImpl();

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/carrito.jsp");
		try {
		List<Item> items  = null; 

		HttpSession misession= req.getSession(true);	
		

		if (misession.getAttribute("items") != null) {
			items =(List<Item>)misession.getAttribute("items");
		}else{
			items = new ArrayList<Item>();
		}
		
		String idProducto = (String) req.getParameter("idprod");
		if(idProducto != null) {
		int idProd = Integer.parseInt(idProducto);
		 
		Producto prod;
		
			prod = dao.getOne(idProd);
		
		boolean existeProductoEnCarrito = false;
		for (Item item : items) {
				if (item.getProducto().getId() == idProd ) {
					item.autoIncrementar();
					existeProductoEnCarrito = true;
				}
		}
		
		if (existeProductoEnCarrito == false) {
			Item newItem = new Item(prod);
			items.add(newItem);
		}
		}
		misession.setAttribute("items", items);
		dispatcher.forward(req, resp);
		} catch (MercaditoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}
	
}