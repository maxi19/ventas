package com.ventas.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ventas.dao.CategoriaDao;
import com.ventas.dao.CategoriaDaoImpl;
import com.ventas.dao.MarcasDao;
import com.ventas.dao.MarcasDaoImpl;
import com.ventas.dao.TipoDao;
import com.ventas.dao.TipoDaoImpl;
import com.ventas.excepciones.MercaditoException;

@WebFilter("/filter")
public class ServletFilter implements Filter {
	
	private CategoriaDao categoriaDao = new CategoriaDaoImpl();
	private MarcasDao marcasDao = new MarcasDaoImpl();

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req	 =(HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
	
		try {
			request.setAttribute("categorias", categoriaDao.obtenerCategoria());
			request.setAttribute("marcas", categoriaDao.obtenerCategoria());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		chain.doFilter(request, response);	
	}

}
