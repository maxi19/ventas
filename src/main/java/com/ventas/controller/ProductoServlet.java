package com.ventas.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ventas.excepciones.MercaditoException;
import com.ventas.service.producto.ProductoService;
import com.ventas.service.producto.ProductoServiceImp;



@WebServlet(urlPatterns = { "/agregarProducto"})
public class ProductoServlet extends GenericServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ProductoService productoService = new ProductoServiceImp();
	

	@Override
	public void getUrl(HttpServletRequest req, HttpServletResponse resp) throws MercaditoException {
		String idmarca = (String)req.getParameter("marca");
		String titulo = (String)req.getParameter("titulo");
		String nombre = (String)req.getParameter("nombre");
		String descripcion = (String)req.getParameter("descripcion");
		String idCategoria = (String)req.getParameter("categoria");
		String stock = (String)req.getParameter("stock");
		String precio = (String)req.getParameter("precio");
		
		productoService.registrarProducto(idmarca, titulo, nombre, descripcion, idCategoria, stock, precio);
		
	}

}
