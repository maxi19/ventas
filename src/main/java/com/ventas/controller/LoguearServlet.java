package com.ventas.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ventas.dao.usuario.UsuariosDao;
import com.ventas.dao.usuario.UsuariosDaoImpl;
import com.ventas.entity.Usuario;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/login"})
public class LoguearServlet extends HttpServlet{


	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UsuariosDao usuariosService = new UsuariosDaoImpl();

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		boolean existeUsuario = false;	
		Usuario usuario = null;
		String usuarioIngresado = (String)req.getParameter("user");
		String passwordIngresado = (String) req.getParameter("password");
		HttpSession misession= req.getSession(true);	
		PrintWriter out = resp.getWriter();
		JsonObject obj = new JsonObject();
		JsonArray list =  new JsonArray();
				

				try {
					
				existeUsuario =	usuariosService.existeUsuario(usuarioIngresado);	
				if (!existeUsuario) 
					throw new MercaditoException("El usuario no existe en sistema");	

				usuario = usuariosService.obtenerUsuario(usuarioIngresado);
				if (!usuario.getPassword().equals(passwordIngresado)){
					throw new MercaditoException("El password es incorrecto");	
				}	
				misession.setAttribute("usuario", usuario);

				obj.addProperty("estatus","ok");
				
				
				obj.addProperty("msg","xewwxwew");
				list.add(obj.getAsJsonObject());
				out.print(list.toString());
				out.flush();
				
				} catch (MercaditoException e) {
					obj.addProperty("msg",e.getMessage());
					obj.addProperty("estatus","error");
					list.add(obj.getAsJsonObject());
					out.print(list.toString());
					out.flush();
				}
	}		
	
	
}
