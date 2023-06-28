package com.ventas.service.producto;

import java.util.List;

import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

public interface ProductoService {

	public List<Producto> listarProductos() throws MercaditoException;
	
	public void cambiarFlag(int idProducto) throws MercaditoException;
	
	public void registrarProducto(String idmarca, String titulo, String nombre, String descripcion, String idCategoria, String stock, String precio) throws MercaditoException;
	
}
