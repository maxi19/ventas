package com.ventas.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.dao.VentasDao;
import com.ventas.dao.VentasDaoImpl;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/finalizarVenta"})
public class VentaServlet extends HttpServlet {

	private ProductoDao dao =  new ProductoDaoImpl();

	private VentasDao ventasDao = new VentasDaoImpl();	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		 String idProducto = (String) req.getParameter("idProducto");
		 String pagStr= (String)req.getParameter("pago");
		 String cantidadStr= (String) req.getParameter("cantidad");
		 String nombreYapellido= (String) req.getParameter("nombre");
		 String direccion= (String) req.getParameter("direccion");
			
		int cantidad = Integer.parseInt(cantidadStr);
		int modoPago = Integer.parseInt(pagStr);	
	
		
		procesarVenta(idProducto, nombreYapellido, direccion, cantidad);
		 
	}
	private void procesarVenta(String idProducto, String nombreYapellido, String direccion, int cantidad) {
		try {
			
			Producto producto = dao.obtenerProcucto(Integer.parseInt(idProducto));
			if (cantidad <= producto.getStock()){
				dao.quitarStock(cantidad, producto.getId());
				ventasDao.registrarVentaItem(producto.toItem(cantidad), nombreYapellido, direccion, "00000001-00000001");			
			}
	
		} catch (MercaditoException e) {
			e.printStackTrace();
		}
		
	}
}
