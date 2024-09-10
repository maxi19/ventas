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

import com.ventas.dao.categoria.CategoriaDao;
import com.ventas.dao.categoria.CategoriaDaoImpl;
import com.ventas.dao.marca.MarcasDao;
import com.ventas.dao.marca.MarcasDaoImpl;

@WebFilter("/filter")
public class ServletFilter implements Filter {
	
	private CategoriaDao categoriaDao = new CategoriaDaoImpl();
	private MarcasDao marcasDao = new MarcasDaoImpl();

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req	 =(HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse) response;
		

		
		
		
		

		chain.doFilter(request, response);	
	}

}
