package com.ventas.dao;

import java.util.List;

import com.ventas.entity.Categoria;
import com.ventas.excepciones.MercaditoException;

public interface CategoriaDao {

	public List<Categoria> obtenerCategoria() throws Exception;
	
	public void existeCategoriaAsociadoAMarca(Integer idCategoria, Integer idMarca) throws Exception;
	
	public void asociarCategoriaAMarca(Integer idCategoria, Integer idMarca) throws Exception;

	public Categoria obtenerCategoria( int idCategoria) throws MercaditoException;

	
}
