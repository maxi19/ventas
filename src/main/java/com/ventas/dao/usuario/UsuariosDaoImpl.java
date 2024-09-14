package com.ventas.dao.usuario;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Usuario;
import com.ventas.excepciones.MercaditoException;

public class UsuariosDaoImpl implements UsuariosDao {

	private Conexion conexion = Conexion.getInstance();

	private static final String queryObtenerUsuario="SELECT usuario , password from usuarios where usuario = ?";

	
	public boolean existeUsuario(String usuario) throws MercaditoException {
		 PreparedStatement st =null;
		 ResultSet rs = null;
		 try{
			st = conexion.dameConnection().prepareStatement(queryObtenerUsuario);
			st.setString(1, usuario);
			rs = st.executeQuery();
			if (!rs.first())
				throw new MercaditoException("el usuario no existe");
			return true;	
		 }catch (SQLException ex) {
			 System.out.println("Error en consulta tabla usuarios : usuario -> "+usuario );
			 throw new MercaditoException(ex.getMessage());
		 }finally {
			finalizarConexion(st, rs);
		}
	}

	private void finalizarConexion(Statement st, ResultSet rs) {
		try {
			if(st != null)st.close();
			if(rs != null)rs.close();
		} catch (SQLException e) {
			System.out.println("Error al intentar cerrar la conexion");
		}
	}

	public Usuario obtenerUsuario(String usuario) throws MercaditoException {
		 PreparedStatement st =null;
		 ResultSet rs = null;		 
		 try{
			st = conexion.dameConnection().prepareStatement(queryObtenerUsuario);
			st.setString(1, usuario);
			rs = st.executeQuery();			
			if (rs.next()) {
				 Usuario usr =  new Usuario(rs.getString(1), rs.getString(2));
				 return usr;
			}		
		 }catch (SQLException ex) {
			 throw new MercaditoException("Error al validar el usuario",ex);
		}finally {
			finalizarConexion(st, rs);
		}
		 return null;
	}

	@Override
	public void add(Usuario t) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer i) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void edit(Usuario t) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Usuario> list() throws MercaditoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usuario getOne(Integer i) throws MercaditoException {
		// TODO Auto-generated method stub
		return null;
	}

	
	

	
}
