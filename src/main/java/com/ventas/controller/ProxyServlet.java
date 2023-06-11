package com.ventas.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.dao.marca.MarcasDao;
import com.ventas.dao.marca.MarcasDaoImpl;
import com.ventas.entity.Marca;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/proxy"})
public  class ProxyServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HttpSession misession ;
	private MarcasDao marcasDao = new MarcasDaoImpl();

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher;
		misession = req.getSession(true);
		if (misession.getAttribute("usuario") == null) {
			resp.sendRedirect("/login.jsp");	
		}
		
		if (misession.getAttribute("usuario") != null && req.getParameter("method") != null) {
			String metodo = (String)req.getParameter("method");	
			//si aprentamos el boton agregar producto
			if (metodo.equals("agregarInput")) {
				dispatcher = this.getServletContext().getRequestDispatcher("/productoForm.jsp");
				try {
				
				List<Marca> marcas = marcasDao.list();
				req.setAttribute("marcas", marcas);
				
				} catch (MercaditoException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				dispatcher.forward(req, resp);
			}else if (metodo.equals("agregarCategoria")) {
				dispatcher = this.getServletContext().getRequestDispatcher("/categoriaForm.jsp");
				
				dispatcher.forward(req, resp);
			}
		}
		
	
	
	}

	
	

	
}
