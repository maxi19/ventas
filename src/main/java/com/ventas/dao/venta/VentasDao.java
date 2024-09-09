package com.ventas.dao.venta;

import java.util.List;
import com.ventas.entity.Contacto;
import com.ventas.entity.Item;
import com.ventas.entity.Venta;
import com.ventas.excepciones.MercaditoException;
import com.ventas.service.VentaBuilder;

public interface VentasDao {

	 String obtenerFactura() throws MercaditoException;
	 	
	 void registrarTransaccion (List<Item> item, VentaBuilder ventaBuilder , Contacto contacto) throws MercaditoException;
	
	 List<Venta> bustarPorFiltro( Filter filter  ) throws Exception;	 
	 
	 
}
