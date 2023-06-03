package com.ventas.entity;

public class Producto {
	
	private int id;
	private Marca marca;
	private String titulo;
	private String nombre;
	private String descripcion;
	private Categoria categoria;
	private int stock;
	private int precio;
	private String origen;
	private boolean portada;
	
	public Producto() {
		
	}
	public Producto(int id, Marca marca, String titulo, String nombre, String descripcion, Categoria categoria,
			int stock, int precio, String origen) {
		super();
		this.id = id;
		this.marca = marca;
		this.titulo = titulo;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.categoria = categoria;
		this.stock = stock;
		this.precio = precio;
		this.origen = origen;
	}
	
	
	
	public Producto(Marca marca, String titulo, String nombre, String descripcion, Categoria categoria, int stock,
			int precio, String origen) {
		super();
		this.marca = marca;
		this.titulo = titulo;
		this.nombre = nombre;
		this.descripcion = descripcion;
		this.categoria = categoria;
		this.stock = stock;
		this.precio = precio;
		this.origen = origen;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Marca getMarca() {
		return marca;
	}
	public void setMarca(Marca marca) {
		this.marca = marca;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getPrecio() {
		return precio;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	public String getOrigen() {
		return origen;
	}
	public void setOrigen(String origen) {
		this.origen = origen;
	}
	public boolean isPortada() {
		return portada;
	}
	public void setPortada(boolean portada) {
		this.portada = portada;
	}

	
}
