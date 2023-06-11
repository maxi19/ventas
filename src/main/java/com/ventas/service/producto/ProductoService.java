package com.ventas.service.producto;

import java.util.List;

import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

public interface ProductoService {

	public List<Producto> listarProductos() throws MercaditoException;
	
	public void cambiarFlag(int idProducto) throws MercaditoException;
	
}
