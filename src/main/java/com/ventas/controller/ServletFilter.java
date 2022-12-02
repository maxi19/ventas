package com.ventas.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import com.ventas.dao.TipoDao;
import com.ventas.dao.TipoDaoImpl;
import com.ventas.excepciones.MercaditoException;

@WebFilter("/filter")
public class ServletFilter implements Filter {
	
	private TipoDao tiposDao = new TipoDaoImpl();


	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		try {
			request.setAttribute("tipos", tiposDao.obtenerTipos());
		} catch (MercaditoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		chain.doFilter(request, response);	
	}

}
