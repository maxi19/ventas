package com.ventas.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Item;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

public class VentasDaoImpl implements VentasDao{

	private Conexion conexion = Conexion.getInstance();

	
	@Override
	public void registrarVentaItem(Item item, String nombreyApellido, String direccion, String factura)
			throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
		    st.getConnection().setAutoCommit(false);
			st.executeUpdate("INSERT INTO ventas(factura,producto,cantidad,importe,nombre,direccion,total,fecha,pago) "
					+ "VALUES("+factura+","+item.getProducto().getId()+","+item.getCantidad()+","+item.getTotal()+",'"+nombreyApellido+"','"+direccion+"',"+0+",'','' )");
		    st.getConnection().commit();
		 }catch (SQLException e) {
			try {
				st.getConnection().rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
		try {
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
	}


	@Override
	public String obtenerFactura() throws MercaditoException {
		// TODO Auto-generated method stub
		return null;
	}

}
