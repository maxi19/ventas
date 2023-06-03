package com.ventas.excepciones;

public class MercaditoException extends Exception{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public MercaditoException (String mensaje){
		super(mensaje);
	}
	
	public MercaditoException (String mensaje,Throwable toThrowable){
		super(mensaje,toThrowable);
	}
	
}
