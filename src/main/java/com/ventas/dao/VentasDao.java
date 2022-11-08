package com.ventas.dao;

import java.util.List;

import com.ventas.entity.Producto;

public interface VentasDao {

	public void registrarVenta(List<Producto> productos   );
		
}
