package com.ventas.entity;

public class Producto implements Facturable {
	
	private int id ;
	
	private String marca;
	
	private String nombre;
	
	private int precio;
	
	private String descripcion;
	
	private int stock;

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPrecio() {
		return precio;
	}

	public void setPrecio(int precio) {
		this.precio = precio;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	
	
	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Producto(int id, int precio, String descripcion) {
		super();
		this.id = id;
		this.precio = precio;
		this.descripcion = descripcion;
	}
	
	
	public Producto() {
		
	}

	@Override
	public Item toItem(int cantidad) {
		Item item = new Item(this);
		int total = cantidad * getPrecio();
		item.setCantidad(cantidad);
		item.setTotal(total);
		item.setProducto(this);
		return item;
	}
	

}
