package com.ventas.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.dao.UsuariosDao;
import com.ventas.dao.UsuariosDaoImpl;
import com.ventas.entity.Usuario;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/login"})
public class LoginServlet extends HttpServlet{

	
	private UsuariosDao usuariosService = new UsuariosDaoImpl();
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/home");

		boolean existeUsuario = false;	
		Usuario usuario = null;
		String usuarioIngresado = (String)req.getParameter("user");
		String passwordIngresado = (String) req.getParameter("password");
		HttpSession misession= req.getSession(true);	

				try {
				existeUsuario =	usuariosService.verificarUsuario(usuarioIngresado);	
				if (existeUsuario) 
					usuario = usuariosService.obtenerUsuario(usuarioIngresado);

				//verificamos si la pass es la misma que en base si no lanzamos una excepcion y redirec.
				if (usuario.getPassword().equals(passwordIngresado)){
					misession.setAttribute("usuario", usuario);
					resp.sendRedirect("/home");
				}else {
					throw new MercaditoException("Datos ingresados incorrectos");
				}
					     
				} catch (MercaditoException e) {
					resp.sendRedirect("/Ventas/error.jsp");
				}
	
	}		
}
