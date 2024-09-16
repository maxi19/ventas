package com.ventas.dao.roles;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ventas.config.Conexion;
import com.ventas.entity.Role;
import com.ventas.excepciones.MercaditoException;

public class RolesDaoImp implements RolesDao {

	private Conexion conexion = Conexion.getInstance();
	
	private static final String queryInsert ="Insert into roles nombre values(?)";

	
	@Override
	public void add(Role role) throws MercaditoException {
		PreparedStatement preparedStatement =null;
		 try{
			preparedStatement = conexion.dameConnection().prepareStatement(queryInsert);
			preparedStatement.setString(1,role.getNombre());			
			preparedStatement.execute();
		 }catch (Exception e) {
			 	//log.error(e.getMessage());
				throw new MercaditoException("Hubo un error al insertar un producto", e);
		}finally {
			try {
				preparedStatement.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	
	
}
