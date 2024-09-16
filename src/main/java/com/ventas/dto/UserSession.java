package com.ventas.dto;

import java.util.Iterator;

import com.ventas.excepciones.MercaditoException;

public class UserSession {

	private String username;
	
	private String[] roles;
	
	private String[] pathsPermitidos;

	
	public void estaPermitido(String path ) throws MercaditoException{
		boolean existePath = false;
		for( int  i = 0 ; pathsPermitidos.length < i; i++ ) {
			if (pathsPermitidos[i].equals(path) ) {
				existePath = true;
			}
		}
		if (!existePath) {
			throw new MercaditoException("Acceso denegado");
		}
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String[] getRoles() {
		return roles;
	}

	public void setRoles(String[] roles) {
		this.roles = roles;
	}

	public String[] getPathsPermitidos() {
		return pathsPermitidos;
	}

	public void setPathsPermitidos(String[] pathsPermitidos) {
		this.pathsPermitidos = pathsPermitidos;
	}
		
	
}
