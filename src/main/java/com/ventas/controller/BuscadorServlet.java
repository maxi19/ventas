package com.ventas.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.gson.Gson;
import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/buscar"})
public class BuscadorServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ProductoDao dao = new ProductoDaoImpl();
    Logger logger = LoggerFactory.getLogger(BuscadorServlet.class);
    
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		
		resp.setContentType("text/html");
		
		String caracter = (String)req.getParameter("q");
		
		if (caracter != null) {
		    logger.info("BUSQUEDA POR CARACTER -->  ".concat(caracter) );
		}


		
		List<Producto> productos = new ArrayList<Producto>();
		
		try {
			productos = dao.buscarProductoPorLetra(caracter);
			String json = new Gson().toJson(productos);
			resp.setContentType("applycation/json");
			resp.setCharacterEncoding("UTF-8");
			resp.getWriter().write(json);

		} catch (MercaditoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
	}

	
	
	
}
