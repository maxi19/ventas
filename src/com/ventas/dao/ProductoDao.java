package com.ventas.dao;

import java.sql.SQLException;
import java.util.List;

import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;


public interface ProductoDao {

	public void quitarStock(int cantidad, int id) throws SQLException, MercaditoException;
	public Producto obtenerProducto( int id) throws SQLException;
	public List<Producto> listarProductos() throws SQLException;

}
