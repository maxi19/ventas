package com.ventas.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;


@WebServlet(urlPatterns = { "/agregar"})
public class ProductoServlet extends GenericServlet{

	private ProductoDao productoDao = new ProductoDaoImpl();
	
	@Override
	public void getUrl(HttpServletRequest req, HttpServletResponse resp) throws MercaditoException {

		String nombre = (String)req.getParameter("nombre");
		String stock = (String)req.getParameter("stock");
		String tipo = (String)req.getParameter("tipo");
		String marca = (String)req.getParameter("marca");
		String precio = (String)req.getParameter("precio");
		
		Producto p = new Producto();
		p.setDescripcion(nombre);
		p.setStock(Integer.parseInt(stock));
		p.setTipo(Integer.parseInt(tipo));
		p.setPrecio(Integer.parseInt(precio));
		p.setMarca(marca);
		
		
		try {
			productoDao.agregarProducto(p);
			resp.sendRedirect("/home");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}


	
	
}
