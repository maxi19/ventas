package com.ventas.dao;

import java.sql.SQLException;
import java.util.List;

import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;


public interface ProductoDao {

	 void quitarStock(int cantidad, int id) throws MercaditoException;
	 Producto obtenerProducto( int id) throws MercaditoException;
	 List<Producto> listarProductosAlmacenamiento() throws SQLException;
	 List<Producto> listarProductosAlmacenamientoTeam() throws SQLException;
	 List<Producto> listarProductosAlmacenamientoHyP() throws SQLException;
	 List<Producto> listarProductosprocesadorAMD() throws SQLException;
	 List<Producto> listarProductosprocesadorINTEL() throws SQLException;
	 List<Producto> listarProductoscoolerIDCooling() throws SQLException;
	 List<Producto> listarProductoscoolerMH() throws SQLException;
     List<Producto> listarProductoscoolerDeepcool() throws SQLException;
     List<Producto> listarProductosMemoriaGeil() throws SQLException;
	 List<Producto> listarProductosMemoriaPatriot() throws SQLException;
	 List<Producto> listarProductosMemoriaAdata() throws SQLException;
	 Producto obtenerProcucto(int idProducto) throws  MercaditoException;
	 void modificarStock (Producto producto, int cantidad) throws MercaditoException;
	 List<Producto> listarProductosPorTipo() throws MercaditoException;
	 List<String> listarMarcas() throws MercaditoException;
	 List<Producto> listarProductosPorTipo(int categoria) throws MercaditoException;
	 List<Producto> buscarProductoPorLetra(String buscar) throws MercaditoException;
	 List<Producto> listarProductosPortada() throws MercaditoException;
	 void agregarProducto(Producto producto) throws MercaditoException;

	 void eliminarProducto(String idProducto) throws MercaditoException;
}
