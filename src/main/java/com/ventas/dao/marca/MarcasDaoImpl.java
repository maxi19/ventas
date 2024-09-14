package com.ventas.dao.marca;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Marca;
import com.ventas.excepciones.MercaditoException;

public class MarcasDaoImpl implements MarcasDao {

	private Conexion conexion = Conexion.getInstance();
	
	private static final String queryGetOne ="select id,nombre from marcas where id = ?";
	
	@Override
	public void add(Marca t) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void delete(Integer i) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void edit(Marca t) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<Marca> list() throws MercaditoException {
		 PreparedStatement st =null;
		 ResultSet rs = null;
		 List<Marca> marcas = null;
		 Marca marca = null;
		 try{
			 marcas = new ArrayList<Marca>();
			st = conexion.dameConnection().prepareStatement("select id,nombre from marcas");
			rs = st.executeQuery();
			while (rs.next()) {
				 marca = new Marca(rs.getInt(1),rs.getString(2));
				 marcas.add(marca);
			}
				
		 }catch (Exception e) {
			 throw new MercaditoException("error al conectar con la base",e);
		}finally {
			finalizarConexion(st, rs);
		}
		 
		return marcas;
	}


	@Override
	public Marca getOne(Integer i) throws MercaditoException {
		 ResultSet rs = null;
		 PreparedStatement st = null;
		 Marca marca = null;
		 try{
			st = conexion.dameConnection().prepareStatement(queryGetOne);
			st.setInt(1, i);
			rs = st.executeQuery();
			if (rs.first()) {
				 marca = new Marca(rs.getInt(1),rs.getString(2));
			}		
		 }catch (SQLException e) {
			 throw new MercaditoException("error al conectar con la base");
		 }finally {
			finalizarConexion(st, rs);
		}
		return marca;
	}
	
	private void finalizarConexion(PreparedStatement st, ResultSet rs) {
		try {
			if(st != null)st.close();
			if(rs != null)rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

	
}
