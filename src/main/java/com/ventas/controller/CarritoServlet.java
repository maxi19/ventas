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

import com.ventas.entity.*;

@WebServlet(urlPatterns = { "/carrito"})
public class CarritoServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/listado");
		
		List<Producto> pedidos  = null; ;
		HttpSession misession= req.getSession(true);	
		
		//validar y obtener de la session si es la primera vez o despues de la primera vez
		if (misession.getAttribute("carrito") != null) {
			pedidos =(List<Producto>)misession.getAttribute("carrito");
		}else{
			pedidos = new ArrayList<Producto>();
		}
		
	
		Producto productoEncontrado = null;
		String idString = (String)req.getParameter("id");
		
		for (Producto prod : 	DiscosServlet.productos) {
			if (Integer.parseInt(idString)  == prod.getId()) {
				productoEncontrado =  prod;
			}
		}
		
		pedidos.add(productoEncontrado);
		misession.setAttribute("carrito", pedidos);
		dispatcher.forward(req, resp);

	}
	
}