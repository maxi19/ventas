package com.ventas.service.producto;

import java.util.List;

//import org.apache.log4j.Logger;

import com.ventas.dao.categoria.CategoriaDao;
import com.ventas.dao.categoria.CategoriaDaoImpl;
import com.ventas.dao.marca.MarcasDao;
import com.ventas.dao.marca.MarcasDaoImpl;
import com.ventas.dao.producto.ProductoDao;
import com.ventas.dao.producto.ProductoDaoImpl;
import com.ventas.entity.Categoria;
import com.ventas.entity.Marca;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

public class ProductoServiceImp implements ProductoService{

	private ProductoDao productoDao = new ProductoDaoImpl();
	private MarcasDao marcasDao = new MarcasDaoImpl();
	private CategoriaDao categoriaDao = new CategoriaDaoImpl();
	
	//static Logger log = Logger.getLogger(ProductoServiceImp.class);

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

	@Override
	public void registrarProducto(String idmarca, String titulo, String nombre, String descripcion, String idCategoria,
			String stock, String precio) throws MercaditoException {
			
			if (descripcion == null || "".equals(descripcion.trim())) {
				descripcion = "Sin descripcion";
			}
			if (idCategoria == null || "".equals(idCategoria)) {
				idCategoria = "8";
			}
			
			if (idmarca == null || "".equals(idmarca)) {
				idmarca = "17";
			}
			
			Marca marca = this.marcasDao.getOne(Integer.parseInt(idmarca));
			Categoria categoria = this.categoriaDao.getOne(Integer.parseInt(idCategoria));
		
		productoDao.add(new Producto(marca,titulo,nombre, descripcion,categoria,Integer.parseInt(stock),Integer.parseInt(precio),"",""));		
	}



}
