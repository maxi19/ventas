package com.ventas.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ventas.dao.MarcasDao;
import com.ventas.dao.MarcasDaoImpl;
import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.dao.TipoDao;
import com.ventas.dao.TipoDaoImpl;
import com.ventas.entity.Marca;
import com.ventas.entity.Producto;
import com.ventas.entity.Tipo;
import com.ventas.excepciones.MercaditoException;

import utils.ProductoUtils;

@WebServlet(urlPatterns = { "/productos"})
public class ListadoServlet extends HttpServlet {

	TipoDao tipoDao = new TipoDaoImpl();
	ProductoDao productosDao = new ProductoDaoImpl();
	MarcasDao marcasDao = new MarcasDaoImpl();
	
	List<Producto> productos  = null;

	
	
	Map<String, List<Producto>> mapa = new HashMap<String,List<Producto>>();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/producto.jsp");

		String categoria =(String)req.getParameter("cateogoria");
		String marca =(String)req.getParameter("marca");
		
		
		try {
			
			List<Marca> marcas = marcasDao.listarMarcas();
			//obtenemos el tipo
			Tipo tipo =tipoDao.obtenerTipo(Integer.parseInt(categoria));
			
			//obtenemos las marcas asociadas
			List<Marca> marcasAsociadas = marcasDao.listarMarcasPorTipo(tipo.getId());
			productos = productosDao.listarProductosPorTipo(tipo.getNombre());	
			
			
			marcasAsociadas.forEach(x->{
			mapa.put(x.getMarca(),productos.stream().filter(
					data -> data.getMarca().equals(x.getMarca())).collect(Collectors.toList()) );
			});
			
			req.setAttribute("mapa", mapa);
			req.setAttribute("productos", productos);
			
			
		} catch (MercaditoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
			
			
		
		
		dispatcher.forward(req, resp);
	}

}
