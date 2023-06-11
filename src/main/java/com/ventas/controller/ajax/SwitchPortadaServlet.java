package com.ventas.controller.ajax;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ventas.excepciones.MercaditoException;
import com.ventas.service.producto.ProductoService;
import com.ventas.service.producto.ProductoServiceImp;

@WebServlet(urlPatterns = { "/changeFlag"})
public class SwitchPortadaServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private ProductoService productoService =  new ProductoServiceImp();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String Id = (String)req.getParameter("idProducto");
		int idProducto  = Integer.parseInt(Id);
		
		try {
			productoService.cambiarFlag(idProducto);
		} catch (MercaditoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	
	
}
