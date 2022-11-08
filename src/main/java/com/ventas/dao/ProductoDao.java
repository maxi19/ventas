package com.ventas.dao;

import java.sql.SQLException;
import java.util.List;

import com.ventas.entity.Item;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;


public interface ProductoDao {

	public void quitarStock(int cantidad, int id) throws SQLException, MercaditoException;
	public Producto obtenerProducto( int id) throws SQLException;
	public List<Producto> listarProductosAlmacenamiento() throws SQLException;
	public List<Producto> listarProductosAlmacenamientoTeam() throws SQLException;
	public List<Producto> listarProductosAlmacenamientoHyP() throws SQLException;
	public List<Producto> listarProductosprocesadorAMD() throws SQLException;
	public List<Producto> listarProductosprocesadorINTEL() throws SQLException;
	public List<Producto> listarProductoscoolerIDCooling() throws SQLException;
	public List<Producto> listarProductoscoolerMH() throws SQLException;
    public List<Producto> listarProductoscoolerDeepcool() throws SQLException;
    public List<Producto> listarProductosMemoriaGeil() throws SQLException;
	public List<Producto> listarProductosMemoriaPatriot() throws SQLException;
	public List<Producto> listarProductosMemoriaAdata() throws SQLException;
	public void registrarVentaItem(Item item , String nombreyApellido, String direccion, String factura) throws SQLException;
	public Producto obtenerProcucto(int idProducto) throws SQLException;
	public void	modificarStock (Producto producto, int cantidad) throws MercaditoException;

}
