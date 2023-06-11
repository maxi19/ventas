package com.ventas.controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.ventas.dao.marca.MarcasDao;
import com.ventas.dao.marca.MarcasDaoImpl;
import com.ventas.entity.Marca;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/marcas"})
public class MarcasServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private MarcasDao marcasDao = new MarcasDaoImpl();

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Marca> marcas;
		resp.setContentType("application/json");
        resp.addHeader("pragma", "no-cache");
        resp.addDateHeader("Expires", -1);
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();

		try {
			marcas = marcasDao.list();
			req.setAttribute("marcas", marcas);	
			String json = new Gson().toJson(marcas);
			System.out.println(json);
			out.println(json);
	        out.close();
	        out.flush();

		} catch (MercaditoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	
	
}
