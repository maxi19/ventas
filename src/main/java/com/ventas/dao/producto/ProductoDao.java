package com.ventas.dao.producto;

import java.sql.Statement;
import com.ventas.dao.DaoBase;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;


public interface ProductoDao extends DaoBase<Integer, Producto>{

	 Producto obtenerProductoTransaccion(int idProducto , Statement st) throws  MercaditoException;
	 
	 void cambiarFlag(int idProducto, boolean flag) throws  MercaditoException;
	 
}
