package com.ventas.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ventas.dao.producto.ProductoDao;
import com.ventas.dao.producto.ProductoDaoImpl;
import com.ventas.dao.venta.VentasDao;
import com.ventas.dao.venta.VentasDaoImpl;
import com.ventas.entity.Contacto;
import com.ventas.entity.Item;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;
import com.ventas.service.VentaService;
import com.ventas.service.VentaServiceImp;

@WebServlet(urlPatterns = { "/finalizarVenta"})
public class VentaServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private ProductoDao dao =  new ProductoDaoImpl();

	private VentasDao ventasDao = new VentasDaoImpl();
	
	private VentaService ventaService = new VentaServiceImp();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
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
			
			try {
				ventaService.procesarVenta(items, new Contacto(nombreYapellido, nombreYapellido, direccion) );
			} catch (MercaditoException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		resp.sendRedirect("/comprobante?");
	}
	

}
