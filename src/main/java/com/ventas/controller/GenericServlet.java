package com.ventas.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.excepciones.MercaditoException;
import com.ventas.excepciones.NoLogerException;

public abstract class GenericServlet extends HttpServlet{

	/**
	 * 
	 */
	
	
	private static final long serialVersionUID = 1L;
	private HttpSession misession ;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		
		misession = req.getSession(true);
		//no logueado
		if (misession.getAttribute("usuario") == null) 
			throw new NoLogerException("usuario no autenticado");

		getUrl(req, resp);
		
		} catch (MercaditoException e) {
			// TODO: handle exception
		} catch (NoLogerException e) {
			resp.sendRedirect("/productos");
		}
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			misession = req.getSession(true);
			
			if (misession.getAttribute("usuario") == null) 
				throw new NoLogerException("usuario no autenticado");
			
			getUrl(req, resp);
		} catch (MercaditoException e) {
			// TODO: handle exception
		} catch (NoLogerException e) {
			resp.sendRedirect("/productos");
		}
	
	}

	public abstract void getUrl(HttpServletRequest req, HttpServletResponse resp) throws MercaditoException;
	

	
}
