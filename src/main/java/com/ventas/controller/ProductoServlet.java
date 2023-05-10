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
		
		
		Producto p = new Producto();
		
		p.setDescripcion(nombre);
		p.setStock(Integer.parseInt(stock));
		p.setTipo(Integer.parseInt(tipo));
		p.setPrecio(Integer.parseInt(precio));
		Integer marcaId = Integer.decode(marca);
		p.setMarca(marca);
		//verificamos si existe la categoria
		
		try {
			 categoriaDao.existeCategoriaAsociadoAMarca(Integer.decode(tipo), Integer.decode(marca));
		
		
		} catch (Exception e1) {
			//categoriaDao.asociarCategoriaAMarca(p.getTipo(), marcaId);
		} 
		finally {
			 productoDao.agregarProducto(p);	
		}
		
	
		
		
	}


	
	
}
