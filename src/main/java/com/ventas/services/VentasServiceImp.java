package com.ventas.services;

import java.util.List;

import com.ventas.dao.venta.Filter;
import com.ventas.dao.venta.VentasDao;
import com.ventas.dao.venta.VentasDaoImpl;
import com.ventas.entity.Venta;

public class VentasServiceImp  implements VentasService{

	private VentasDao ventasDao = new VentasDaoImpl();
	
	@Override
	public List<Venta> filtraProductos(String clave, String valor) throws Exception {
	
		return ventasDao.bustarPorFiltro( new Filter() {
			@Override
			public String orderBy() {
				return "id";
			}
			
			@Override
			public String getFilterValue() {
				return valor ;
			}
			
			@Override
			public String getFilterField() {
				// TODO Auto-generated method stub
				return clave;
			}
		} );
		
		
	}

}
