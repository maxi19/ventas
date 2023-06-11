package com.ventas.dao.usuario;


import com.ventas.dao.DaoBase;
import com.ventas.entity.Usuario;
import com.ventas.excepciones.MercaditoException;

public interface UsuariosDao extends DaoBase<Integer, Usuario>{

	public boolean existeUsuario(String usuario)throws MercaditoException;
		
	public Usuario obtenerUsuario(String usuario)throws  MercaditoException;
	
	
}
