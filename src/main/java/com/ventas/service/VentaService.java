package com.ventas.service;

import java.util.List;

import com.ventas.entity.Contacto;
import com.ventas.entity.Item;
import com.ventas.excepciones.MercaditoException;

public interface VentaService {

	public void procesarVenta(List<Item> items, Contacto contacto) throws MercaditoException;
	
}
