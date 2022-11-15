package com.ventas.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.dao.ProductoDao;
import com.ventas.dao.ProductoDaoImpl;
import com.ventas.dao.VentasDao;
import com.ventas.dao.VentasDaoImpl;
import com.ventas.entity.Item;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

@WebServlet(urlPatterns = { "/finalizarVenta"})
public class VentaServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ProductoDao dao =  new ProductoDaoImpl();

	private VentasDao ventasDao = new VentasDaoImpl();	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/comprobante");
		HttpSession misession= req.getSession(true);	
		List<Item> items =(List<Item>)misession.getAttribute("items");
		 
		String pagStr= (String)req.getParameter("pago");
		String nombreYapellido= (String) req.getParameter("nombre");
		String direccion= (String) req.getParameter("direccion");
		int cantidadProductos = 0;
		 
		int modoPago = Integer.parseInt(pagStr);
		
		boolean soloProducto=(boolean)misession.getAttribute("soloProducto");
		
		if (soloProducto) {
			String cantidadStr= (String) req.getParameter("cantidad");
			cantidadProductos = Integer.parseInt(cantidadStr);
			items.get(0).setCantidad(cantidadProductos);
		}
		
		items.forEach((Item item)->{
			procesarVenta(item.getProducto().getId(), nombreYapellido, direccion, item.getCantidad(), modoPago);
		});
		resp.sendRedirect("/comprobante");
		
		
	}
	private void procesarVenta(int idProducto, String nombreYapellido, String direccion, int cantidad, int modoPago) {
		try {	
			Producto producto = dao.obtenerProcucto(idProducto);
			if (cantidad <= producto.getStock()){
				dao.quitarStock(cantidad, producto.getId());
				ventasDao.registrarVentaItem(producto.toItem(cantidad), nombreYapellido, direccion, "00000001-00000001",modoPago);			
			}
	
		} catch (MercaditoException e) {
			e.printStackTrace();
		}
		
	}
}
