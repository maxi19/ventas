package com.ventas.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ventas.entity.Item;

@WebServlet(urlPatterns = { "/confirmarVenta"})
public class VentaServlet extends HttpServlet {

	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 List<Item> items= (List<Item>) req.getAttribute("items");
		
		
		 String nombreComprador= (String) req.getAttribute("nombreComprador");

		 String direccion= (String) req.getAttribute("direccion");
		
		
		 
		 
		 
		 
	}
}
