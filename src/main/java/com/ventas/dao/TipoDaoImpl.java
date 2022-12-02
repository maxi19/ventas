package com.ventas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Producto;
import com.ventas.entity.Tipo;
import com.ventas.excepciones.MercaditoException;

public class TipoDaoImpl implements TipoDao{

	private Conexion conexion = Conexion.getInstance();
	
	
	@Override
	public Tipo obtenerTipo(int id) throws MercaditoException {
		 ResultSet rs = null;
		 Tipo tipoResponse = null;
		 Statement st = null;
		 try{
			  st =conexion.dameConnection().createStatement();
			 	rs = st.executeQuery ("select * from tipos where id =" + id);	 
			 if (rs.next()) {
				 tipoResponse = new Tipo();
				 tipoResponse.setId(rs.getInt(1));
				 tipoResponse.setNombre(rs.getString(2));
			 }
			} catch (SQLException e) {
				// TODO: handle exception
			}finally {
			 cerrarStatement(st);    
		}
		return tipoResponse;
	}

	@Override
	public void crearTipo(Tipo tipo) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void eliminarTipo(int id) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modificarTipo(Tipo tipo) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Tipo> obtenerTipos() throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Tipo> tipos = null;
		 Tipo tipo = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select id,nombre,valor from tipos");
			tipos = new ArrayList<Tipo>();
			 while (rs.next()) {
				 tipo = new Tipo();
				 tipo.setId(rs.getInt(1));
				 tipo.setNombre(rs.getString(2));
				 tipo.setValue(rs.getString(3));
				 tipos.add(tipo);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
		}
		 
		return tipos;
	}

	private void cerrarStatement(Statement st) {
		try {
			st.close ();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void finalizarConexion(Statement st, ResultSet rs) {
		try {
			st.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



}
