package com.ventas.dao;

import java.util.List;

import com.ventas.excepciones.MercaditoException;

public interface DaoBase<I,T> {

	public void add(T t) throws MercaditoException;
	
	public void delete(I i) throws MercaditoException;

	public void edit(T t) throws MercaditoException;

	public List<T> list() throws MercaditoException;
	
	public T getOne(I i) throws MercaditoException;
}
