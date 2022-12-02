package com.ventas.dao;

import java.util.List;

import com.ventas.entity.Tipo;
import com.ventas.excepciones.MercaditoException;

public interface TipoDao {

	Tipo obtenerTipo(int id) throws MercaditoException;
	
	void crearTipo(Tipo tipo) throws MercaditoException;
	
	void eliminarTipo(int id) throws MercaditoException;
	
	void modificarTipo(Tipo tipo) throws MercaditoException;
	
	List<Tipo> obtenerTipos()throws MercaditoException;
	
}
