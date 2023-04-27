package com.ventas.dao;

import java.util.List;

import com.ventas.entity.Categoria;

public interface CategoriaDao {

	public List<Categoria> obtenerCategoria() throws Exception;
	
	public Boolean existeCategoriaAsociadoAMarca(Integer idCategoria, Integer idMarca) throws Exception;
	
	public Boolean asociarCategoriaAMarca(Integer idCategoria, Integer idMarca) throws Exception;

}
