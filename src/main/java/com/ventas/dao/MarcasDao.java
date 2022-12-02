package com.ventas.dao;

import java.util.List;

import com.ventas.entity.Marca;
import com.ventas.excepciones.MercaditoException;

public interface MarcasDao {

	
	 List<Marca> listarMarcas() throws MercaditoException;
	
	 List<Marca> listarMarcasPorTipo(int categoria) throws MercaditoException;
	 
	 Marca obtenerMarca(int id) throws MercaditoException;
	 
}
