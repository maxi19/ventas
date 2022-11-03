package com.ventas.dao;

import java.sql.SQLException;
import java.util.List;

import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

public interface ProductoFuente {
	
	public void quitarStock(int cantidad, int id) throws SQLException, MercaditoException;
	public Producto obtenerProducto(int id) throws SQLException;
	public List<Producto> listarProductosFuenteASUS() throws SQLException;
	public List<Producto> listarProductosFuenteCoolerMaster() throws SQLException;
	public List<Producto> listarProductosFuenteKolink() throws SQLException;
}