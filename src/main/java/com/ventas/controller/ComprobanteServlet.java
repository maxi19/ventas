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

import com.ventas.entity.Item;

@WebServlet(urlPatterns = { "/comprobante"})
public class ComprobanteServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/comprobante.jsp");


		HttpSession misession= req.getSession(true);	
		List<Item> items = (List<Item>)misession.getAttribute("items");
		int importeTotal = 0;
		
		for (Item item : items) {
			importeTotal += item.getTotal();
		}
		
		req.setAttribute("items", misession.getAttribute("items"));
		req.setAttribute("totalfactura", importeTotal);
		
		misession.removeAttribute("items");
		misession.removeAttribute("soloProducto");
		rd.forward(req, resp);

	}

}
