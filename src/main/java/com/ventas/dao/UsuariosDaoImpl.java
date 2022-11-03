package com.ventas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.ventas.config.Conexion;
import com.ventas.entity.Usuario;
import com.ventas.excepciones.MercaditoException;

public class UsuariosDaoImpl implements UsuariosDao {

	private Statement stmt = null;
	
	private ResultSet rs = null;
	
	private Conexion conexion = Conexion.getInstance();

	
	public boolean verificarUsuario(String usuario) throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery("SELECT  * from usuarios WHERE usuario = '"+usuario+"'");			
			if (rs.next()) {
			return true;
			}
			
		 }catch (SQLException ex) {
			 System.out.println("Error en consulta tabla usuarios : usuario -> "+usuario );
			 throw new MercaditoException(ex.getMessage());
		 }finally {
			finalizarConexion(st, rs);
		}
		return false;
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

	public Usuario obtenerUsuario(String usuario) throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 String user ;
		 String password ;
		 
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("SELECT usuario , password from usuarios where usuario = '"+usuario+"'");			
			if (rs.next()) {
				 user =rs.getString(1);
				 password =rs.getString(2);
				 Usuario usr =  new Usuario(user, password);
				 return usr;
			}
			
		 }catch (SQLException ex) {
			 System.out.println("Error en consulta tabla usuarios : usuario -> "+usuario );
			 throw new MercaditoException(ex.getMessage());
		}finally {
			finalizarConexion(st, rs);
		}
		 return null;
	}

	
	

	
}
