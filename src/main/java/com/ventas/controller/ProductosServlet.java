package com.ventas.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

@WebServlet(urlPatterns = { "/productos"})
public class ProductosServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TipoDao tipoDao = new TipoDaoImpl();
	private ProductoDao productosDao = new ProductoDaoImpl();
	private MarcasDao marcasDao = new MarcasDaoImpl();
	private List<Producto> productos  = null;
	private Map<String, List<Producto>> mapa = null;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/producto.jsp");

		String categoria =(String)req.getParameter("cateogoria");
		if (categoria == null) {
			categoria = "1";
		}
		
		try {
			
			//obtenemos el tipo
			Tipo tipo =tipoDao.obtenerTipo(Integer.parseInt(categoria));
			
			//obtenemos las marcas asociadas
			List<Marca> marcasAsociadas = solicitarProductosPorCategoria(tipo);	
			
			filtrarListadoSolicitado(marcasAsociadas);
			
			
			HttpSession misession= req.getSession(true);	

			if(misession.getAttribute("carrito") != null) {
				List<Producto> pedidos	=(List<Producto>) misession.getAttribute("carrito");
				req.setAttribute("carrito", pedidos);
			}
			
			
			req.setAttribute("mapa", mapa);
			req.setAttribute("productos", productos);
			
			
		} catch (MercaditoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		dispatcher.forward(req, resp);
	}

	private List<Marca> solicitarProductosPorCategoria(Tipo tipo) throws MercaditoException {
		List<Marca> marcasAsociadas = marcasDao.listarMarcasPorTipo(tipo.getId());
		productos = productosDao.listarProductosPorTipo(tipo.getId());
		return marcasAsociadas;
	}

	private void filtrarListadoSolicitado(List<Marca> marcasAsociadas) {
		mapa = new HashMap<String,List<Producto>>();
		marcasAsociadas.forEach(x->{
		mapa.put(x.getMarca(),productos.stream().filter(
				data -> data.getMarca().equals(x.getMarca())).collect(Collectors.toList()) );
		});
	}

}
