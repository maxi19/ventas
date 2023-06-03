package com.ventas.entity;

public class Contacto {

	private String nombre;
	private String apellido;
	private String direccion;
	private String cp;
	private String barrio;
	private String celular;
	private String email;
	
	public Contacto(String nombre, String apellido, String direccion) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.direccion = direccion;
	}

	public String getNombre() {
		return nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public String getDireccion() {
		return direccion;
	}

	public String getCelular() {
		return celular;
	}
	
	
	
}
