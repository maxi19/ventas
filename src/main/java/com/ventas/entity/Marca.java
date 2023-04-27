package com.ventas.entity;

import java.util.Objects;

public class Marca {

	private int id;
	
	private String marca;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	@Override
	public String toString() {
		return "Marca [id=" + id + ", marca=" + marca + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, marca);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Marca other = (Marca) obj;
		return id == other.id && Objects.equals(marca, other.marca);
	}

}
