package com.ventas.controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.ventas.dao.categoria.CategoriaDao;
import com.ventas.dao.categoria.CategoriaDaoImpl;
import com.ventas.entity.Categoria;

@WebServlet(urlPatterns = { "/categorias"})
public class CategoriaServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private CategoriaDao categoriaDao = new CategoriaDaoImpl();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			resp.setContentType("application/json");
	        resp.addHeader("pragma", "no-cache");
	        resp.addDateHeader("Expires", -1);
	        resp.setCharacterEncoding("UTF-8");
	        PrintWriter out = resp.getWriter();
			
			List<Categoria> categorias =  categoriaDao.list();
		
			String json = new Gson().toJson(categorias);
			out.println(json);
	        out.close();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
