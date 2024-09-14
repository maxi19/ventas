package com.ventas.dao;

import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ventas.config.Conexion;


public class DataBaseHelper<T> {

	private Conexion conexion = Conexion.getInstance();
	
	private java.sql.Statement stmt = null;
	
	private ResultSet rs = null;
	
	private List<T> listaObjetos = new ArrayList<T>();
	
	private Connection con;
	
	@SuppressWarnings("finally")
	public List<T> seleccionarRegistros(String consultaSql, Class clase) {
		
		try {
			con = conexion.dameConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(consultaSql);
			while (rs.next() ) {
					T objeto = (T) Class.forName(clase.getName()).newInstance();
					Method[] metodos = objeto.getClass().getDeclaredMethods();
					for (int i = 0; i < metodos.length; i++) {
						if (metodos[i].getName().startsWith("set") ) {
								metodos[i].invoke(objeto, rs.getString(metodos[i].getName().substring(3)));	 
						}
						if (objeto.getClass().getName().equals("java.lang.String") ) {
							objeto= (T)rs.getString(1);
						}	
					}
				listaObjetos.add(objeto);
			}
			
		}catch (Exception e) {
			System.out.println("error al seleccionar registros");
		}finally{
			if (stmt != null) {
				try { stmt.close(); }catch (SQLException e) {	}
			}
			
			if (con != null) {
				try { con.close(); } catch (SQLException e2) {	}
		}
		
		return listaObjetos;
		
	}
		
	
	}	
	
}
