package com.ventas.dao;


import com.ventas.entity.Usuario;
import com.ventas.excepciones.MercaditoException;

public interface UsuariosDao {

	public boolean verificarUsuario(String usuario)throws MercaditoException;
		
	public Usuario obtenerUsuario(String usuario)throws  MercaditoException;
	
	
}
