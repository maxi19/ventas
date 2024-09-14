package com.ventas.dao.categoria;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Categoria;
import com.ventas.excepciones.MercaditoException;

public class CategoriaDaoImpl implements CategoriaDao {

	
	private Conexion conexion = Conexion.getInstance();

	private static final String queryList ="select id,nombre from categorias";
	private static final String queryGetOne ="select id,nombre from categorias where id = ?";

	
	
	
	
	
	private void finalizarConexion(Statement st, ResultSet rs) {
		try {
			if(st != null)st.close();
			if(rs != null)rs.close();
			System.out.println("Se cierra la conexion");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}





	public void existeCategoriaAsociadoAMarca(Integer idCategoria, Integer idMarca) throws Exception {
		 Statement st =null;
		 ResultSet rs = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select tipo, marca "
					+ "from tipo_marca where tipo =" + idCategoria +" and marca="+idMarca );
			if (rs.first()) {
				throw new Exception("no existe marca asociada a esa categoria");
			}
		 }finally {
			finalizarConexion(st, rs);
		}
	}





	@Override
	public void asociarCategoriaAMarca(Integer idCategoria, Integer idMarca) throws Exception {
		 Statement st =null;
		 ResultSet rs = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("inset into (tipo, marca) "
					+ "values("+idCategoria+" , "+idMarca+")");
		 }catch (Exception e) {
			 System.out.println("No fue posible asociar la categoria con la marca");
		 }finally {
			finalizarConexion(st, rs);
		}	 
	}









	@Override
	public void add(Categoria t) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}





	@Override
	public void delete(Integer i) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}





	@Override
	public void edit(Categoria t) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}





	@Override
	public List<Categoria> list() throws MercaditoException {
		 PreparedStatement st =null;
		 ResultSet rs = null;
		 List<Categoria> categorias = null;
		 try{
			st = conexion.dameConnection().prepareStatement(queryList);
			rs = st.executeQuery ("select id,nombre from categorias");
			categorias = new ArrayList<Categoria>();
			 while (rs.next()) {
				 categorias.add(new Categoria(rs.getInt(1), rs.getString(2)));
			}
		 }catch (SQLException e) {
			 throw new MercaditoException("Error en listado categorias",e);
		}finally {
			finalizarConexion(st, rs);
		}	 
		return categorias;
	}





	@Override
	public Categoria getOne(Integer id) throws MercaditoException {
		 PreparedStatement st =null;
		 ResultSet rs = null;
		 Categoria categoria = null;
		 try{
			st = conexion.dameConnection().prepareStatement(queryGetOne);
			st.setInt(1, id);
			rs = st.executeQuery();
			if (rs.first()) {
				 categoria = new Categoria(rs.getInt(1),rs.getString(2));
			}		
		 }catch (SQLException e) {
			 throw new MercaditoException("Error al obtener Categoria " , e);
		 }finally {
			finalizarConexion(st, rs);
		}
		 
		return categoria;
	}
	
}
