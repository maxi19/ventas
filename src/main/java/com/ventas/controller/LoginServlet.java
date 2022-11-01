package com.ventas.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ventas.dao.UsuariosDao;
import com.ventas.dao.UsuariosDaoImpl;
import com.ventas.entity.Usuario;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/login"})
public class LoginServlet extends HttpServlet{

	
	private UsuariosDao usuariosService = new UsuariosDaoImpl();
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/discos");

		boolean existeUsuario = false;	
		Usuario usuario = null;
		String usuarioIngresado = (String)req.getParameter("user");
		String passwordIngresado = (String) req.getParameter("password");
		
				try {
				existeUsuario =	usuariosService.verificarUsuario(usuarioIngresado);	
				if (existeUsuario) 
					usuario = usuariosService.obtenerUsuario(usuarioIngresado);

				if (usuario.getPassword().equals(passwordIngresado)){
					resp.sendRedirect("/home");
					//rd.forward(req, resp);
				}else {
					throw new MercaditoException("Datos ingresados incorrectos");
				}
					     
				} catch (MercaditoException e) {
					resp.sendRedirect("/error.jsp");
				}
	
	}		
}
