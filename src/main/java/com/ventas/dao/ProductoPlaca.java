package com.ventas.dao;

import java.sql.SQLException;
import java.util.List;

import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

public interface ProductoPlaca {

	public void quitarStock(int cantidad, int id) throws SQLException, MercaditoException;
	public Producto obtenerProducto( int id) throws SQLException;
	public List<Producto> listarProductosPlacaASUS() throws SQLException;
	public List<Producto> listarProductosPlacaAsrock() throws SQLException;
	public List<Producto> listarProductosPlacaGigabyte() throws SQLException;
}
