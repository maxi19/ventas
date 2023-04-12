package com.ventas.entity;

import java.util.Objects;

public class Tipo {

	public int id;
	private String nombre;
	private String value;
	
	
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
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(id, nombre, value);
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Tipo other = (Tipo) obj;
		return id == other.id && Objects.equals(nombre, other.nombre) && Objects.equals(value, other.value);
	}
	@Override
	public String toString() {
		return "Tipo [id=" + id + ", nombre=" + nombre + ", value=" + value + "]";
	}
	
	
}
