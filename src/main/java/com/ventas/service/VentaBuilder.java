package com.ventas.service;

import java.util.List;

import com.ventas.entity.Item;
import com.ventas.excepciones.MercaditoException;

public interface VentaBuilder {

	public void generarStatement() throws MercaditoException;
	
	public void obtenerProducto(List<Item> item) throws MercaditoException;
	
	public void descontarStock() throws MercaditoException;
		
	public void registrarVenta(String nombreYApellido, String direccion, String pago) throws MercaditoException;
	
}
