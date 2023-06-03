package com.ventas.dao;

import java.util.List;

import com.ventas.entity.Contacto;
import com.ventas.entity.Item;
import com.ventas.excepciones.MercaditoException;
import com.ventas.service.VentaBuilder;

public class VentasDaoImpl implements VentasDao{

	@Override
	public String obtenerFactura() throws MercaditoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void registrarTransaccion(List<Item> items, VentaBuilder ventaBuilder, Contacto contacto) throws MercaditoException {
		ventaBuilder.generarStatement();
		ventaBuilder.obtenerProducto(items);
		ventaBuilder.descontarStock();
		ventaBuilder.registrarVenta(contacto.getNombre() + " " + contacto.getApellido(), contacto.getDireccion(), "1");
	}

}
