package com.ventas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Marca;
import com.ventas.excepciones.MercaditoException;

public class MarcasDaoImpl implements MarcasDao {

	private Conexion conexion = Conexion.getInstance();
	

	@Override
	public List<Marca> listarMarcas() throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Marca> marcas = null;
		 Marca marca = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select Id, marca from marcas");
			marcas = new ArrayList<Marca>();
			 while (rs.next()) {
				 marca = new Marca();
				 marca.setId(rs.getInt(1));
				 marca.setMarca(rs.getString(2));
				marcas.add(marca);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
		}
		 
		return marcas;
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


	@Override
	public List<Marca> listarMarcasPorTipo(int categoria) throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Marca> marcas = null;
		 Marca marca = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery("select * from tipo_marca where tipo=".concat(String.valueOf(categoria)));
			marcas = new ArrayList<Marca>();
			 while (rs.next()) {
				 marcas.add(obtenerMarca(rs.getInt(3)));
			}
				
		 }catch (SQLException e) {
			 throw new MercaditoException("error al conectar con la base");
		 }finally {
			finalizarConexion(st, rs);
		}
		 
		return marcas;
	}


	@Override
	public Marca obtenerMarca(int id) throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 Marca marca = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery("select Id,marca from marcas where Id =".concat(String.valueOf(id)));
			if (rs.first()) {
				 marca = new Marca();
				 marca.setId(rs.getInt(1));
				 marca.setMarca(rs.getString(2));
			}		
		 }catch (SQLException e) {
			 throw new MercaditoException("error al conectar con la base");
		 }finally {
			finalizarConexion(st, rs);
		}
		 
		return marca;
	}
}
