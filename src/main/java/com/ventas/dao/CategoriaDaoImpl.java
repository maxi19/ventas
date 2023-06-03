package com.ventas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Categoria;
import com.ventas.entity.Marca;
import com.ventas.excepciones.MercaditoException;

public class CategoriaDaoImpl implements CategoriaDao {

	
	private Conexion conexion = Conexion.getInstance();

	
	@Override
	public List<Categoria> obtenerCategoria() throws Exception {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Categoria> categorias = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select id,nombre from categorias");
			categorias = new ArrayList<Categoria>();
			 while (rs.next()) {
				 categorias.add(new Categoria(rs.getInt(1), rs.getString(2)));
			}
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
		}	 
		return categorias;
	}

	
	
	
	
	private void finalizarConexion(Statement st, ResultSet rs) {
		try {
			st.close();
			rs.close();
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
	public Categoria obtenerCategoria(int idCategoria) throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 Categoria categoria = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery("select id,nombre from categorias where id =".concat(String.valueOf(idCategoria)));
			if (rs.first()) {
				 categoria = new Categoria(rs.getInt(1),rs.getString(2));
			}		
		 }catch (SQLException e) {
			 throw new MercaditoException("error al conectar con la base");
		 }finally {
			finalizarConexion(st, rs);
		}
		 
		return categoria;
	}
	
}
