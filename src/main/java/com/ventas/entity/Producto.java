package com.ventas.entity;

public class Producto implements Facturable {
	
	private int id ;
	
	private String marca;
	
	private String nombre;
	
	private int precio;
	
	private String descripcion;
	
	private int stock;
	
	private int tipo;
	
	private boolean visiblePortada;
	
	public Producto(int id, String marca, String nombre, int precio, String descripcion, int stock, int tipo) {
		super();
		this.id = id;
		this.marca = marca;
		this.nombre = nombre;
		this.precio = precio;
		this.descripcion = descripcion;
		this.stock = stock;
		this.tipo = tipo;
	}
	
	
	public Producto(int id, String nombre, String descripcion, int stock,int precio, int tipo) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.precio = precio;
		this.descripcion = descripcion;
		this.stock = stock;
		this.tipo = tipo;
	}


	public Producto(int id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}
	
	public Producto() {
		
	}
	public int getTipo() {
		return tipo;
	}

	public void setTipo(int tipo) {
		this.tipo = tipo;
	}

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
	
	
	

	public boolean isVisiblePortada() {
		return visiblePortada;
	}


	public void setVisiblePortada(boolean visiblePortada) {
		this.visiblePortada = visiblePortada;
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
