package com.ventas.dao;

import java.util.List;

import com.ventas.entity.Item;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

public interface VentasDao {

	 String obtenerFactura() throws MercaditoException;
	 
	 void registrarVentaItem(Item item , String nombreyApellido, String direccion, String factura) throws MercaditoException;
	
	
}
