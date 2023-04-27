package com.ventas.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.dao.CategoriaDao;
import com.ventas.dao.CategoriaDaoImpl;
import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;


@WebServlet(urlPatterns = { "/agregarProducto"})
public class ProductoServlet extends GenericServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ProductoDao productoDao = new ProductoDaoImpl();
	
	private CategoriaDao categoriaDao = new CategoriaDaoImpl();
	
	
	@Override
	public void getUrl(HttpServletRequest req, HttpServletResponse resp) throws MercaditoException {

		String nombre = (String)req.getParameter("nombre");
		String stock = (String)req.getParameter("stock");
		String tipo = (String)req.getParameter("categoria");
		String marca = (String)req.getParameter("marca");
		String precio = (String)req.getParameter("precio");
		
		//verificamos si existe la categoria
		
		try {
			Boolean existe = categoriaDao.existeCategoriaAsociadoAMarca(Integer.decode(tipo), Integer.decode(marca));
			if (existe) {
				Producto p = new Producto();
				p.setDescripcion(nombre);
				p.setStock(Integer.parseInt(stock));
				p.setTipo(Integer.parseInt(tipo));
				p.setPrecio(Integer.parseInt(precio));
				p.setMarca(marca);
				productoDao.agregarProducto(p);
			}
		
		} catch (Exception e1) {

		}
		
		
	
		
		
		try {
			resp.sendRedirect("/home");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}


	
	
}
