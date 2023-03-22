package com.ventas.entity;

public class Item {
	
	private Producto producto;
	
	private int cantidad;
	
	private int total;

	public Item(Producto producto){
		cantidad = 1;
		total = producto.getPrecio();
		this.producto = producto;
	}
	
	public void autoIncrementar(){
		cantidad ++;
	}
	
	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public int getTotal() {
		total = this.cantidad * producto.getPrecio();
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
}
