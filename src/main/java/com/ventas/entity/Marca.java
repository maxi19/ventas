package com.ventas.entity;

public class Marca {
	private int id;
	private String  nombre;

	public Marca() {
		
	}
	public Marca(int id) {
		super();
		this.id = id;
	}
	public Marca(int id, String nombre) {
		super();
		this.id = id;
		this.nombre = nombre;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
