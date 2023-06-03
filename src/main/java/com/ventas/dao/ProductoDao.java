package com.ventas.dao;

import java.sql.Statement;
import java.util.List;

import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;


public interface ProductoDao extends DaoBase<Integer, Producto>{

	
	 List<Producto> obtenerProductos(int idCategoria ) throws MercaditoException;
	 void quitarStock(int cantidad, int id) throws MercaditoException;
	 Producto obtenerProducto( int id) throws MercaditoException;
	 Producto obtenerProcucto(int idProducto) throws  MercaditoException;
	 void modificarStock (Producto producto, int cantidad) throws MercaditoException;
	 List<Producto> listarProductosPorCategoria() throws MercaditoException;
	 List<Producto> listarProductosPorCategoria(int categoria) throws MercaditoException;
	 List<Producto> buscarProductoPorLetra(String buscar) throws MercaditoException;
	 List<Producto> listarProductosPortada() throws MercaditoException;
	 void agregarProducto(Producto producto) throws MercaditoException;
	 void eliminarProducto(String idProducto) throws MercaditoException;
	 
	 Producto obtenerProductoTransaccion(int idProducto , Statement st) throws  MercaditoException;

	 
}
