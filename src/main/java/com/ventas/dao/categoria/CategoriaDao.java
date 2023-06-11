package com.ventas.dao.categoria;

import com.ventas.dao.DaoBase;
import com.ventas.entity.Categoria;

public interface CategoriaDao extends DaoBase<Integer, Categoria> {

	
	public void existeCategoriaAsociadoAMarca(Integer idCategoria, Integer idMarca) throws Exception;
	
	public void asociarCategoriaAMarca(Integer idCategoria, Integer idMarca) throws Exception;

	
}
