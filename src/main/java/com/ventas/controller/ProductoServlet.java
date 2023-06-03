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
import com.ventas.dao.MarcasDao;
import com.ventas.dao.MarcasDaoImpl;
import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.entity.Categoria;
import com.ventas.entity.Marca;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;



@WebServlet(urlPatterns = { "/agregarProducto"})
public class ProductoServlet extends GenericServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ProductoDao productoDao = new ProductoDaoImpl();
	private MarcasDao marcasDao = new MarcasDaoImpl();
	private CategoriaDao categoriaDao = new CategoriaDaoImpl();
	
	
	@Override
	public void getUrl(HttpServletRequest req, HttpServletResponse resp) throws MercaditoException {
		String idmarca = (String)req.getParameter("marca");
		String titulo = (String)req.getParameter("titulo");
		String nombre = (String)req.getParameter("nombre");
		String descripcion = (String)req.getParameter("descripcion");
		String idCategoria = (String)req.getParameter("categoria");
		String stock = (String)req.getParameter("stock");
		String precio = (String)req.getParameter("precio");
		String portada = (String)req.getParameter("portada");

		Marca marca = this.marcasDao.obtenerMarca(Integer.parseInt(idmarca));
		Categoria categoria = this.categoriaDao.obtenerCategoria(Integer.parseInt(idCategoria));
		Producto producto = new Producto(marca,titulo,nombre, "",categoria,Integer.parseInt(stock) ,Integer.parseInt(precio),"");
		
		try {
			 productoDao.agregarProducto(producto);	
			 resp.sendRedirect("/home");
		} catch (Exception e1) {
			
		} 

	}


	
	
}
