package com.ventas.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.ventas.entity.Venta;
import com.ventas.services.VentasService;
import com.ventas.services.VentasServiceImp;

@WebServlet(urlPatterns = { "/ventas"})
public class ListarVentasServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private VentasService vemtasService  = new VentasServiceImp();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
	  String campo = req.getParameter("campo");
	  String valor = req.getParameter("valor");
	  List<Venta> ventas;
	  
	  try {
		 if (campo == null  || valor == null  ) {
			ventas =vemtasService.filtraProductos("", "");		
		}else {
		    ventas =vemtasService.filtraProductos(campo, valor);
		}
		 
		 resp.setContentType("application/json");
		 OutputStream outputStream= resp.getOutputStream();
		 Gson gson=new Gson();       
		 outputStream.write(gson.toJson(ventas).getBytes());
		 outputStream.flush();
	  
	  } catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}

}
