package com.ventas.service.producto;

import java.util.List;

import com.ventas.dao.marca.MarcasDao;
import com.ventas.dao.marca.MarcasDaoImpl;
import com.ventas.dao.producto.ProductoDao;
import com.ventas.dao.producto.ProductoDaoImpl;
import com.ventas.entity.Marca;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

public class ProductoServiceImp implements ProductoService{

	private ProductoDao productoDao = new ProductoDaoImpl();
	private MarcasDao marcasDao = new MarcasDaoImpl();
	
	@Override
	public List<Producto> listarProductos() throws MercaditoException {
		List<Producto> productos = productoDao.list();
		
		productos.forEach((Producto p) ->{
			try {
			 Marca marca = new Marca();
			 marca = this.marcasDao.getOne(p.getMarca().getId());
			p.setMarca(marca);
			} catch (MercaditoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		});
		
		return productos;
	}

	@Override
	public void cambiarFlag(int idProducto) throws MercaditoException {
		Producto p = productoDao.getOne(idProducto);
		if (p.isPortada() == true) {
			productoDao.cambiarFlag(p.getId(), false);
		}else {
			productoDao.cambiarFlag(p.getId(), true);
		}
	}



}
