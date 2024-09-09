package com.ventas.services;

import java.util.List;

import com.ventas.entity.Venta;

public interface VentasService {

	public List<Venta> filtraProductos(String clave , String valor ) throws Exception; 
	
	
	
}
