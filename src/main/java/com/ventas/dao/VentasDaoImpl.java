package com.ventas.dao;

import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;

import com.ventas.config.Conexion;
import com.ventas.entity.Item;
import com.ventas.excepciones.MercaditoException;

public class VentasDaoImpl implements VentasDao{

	private Conexion conexion = Conexion.getInstance();

	
	@Override
	public void registrarVentaItem(Item item, String nombreyApellido, String direccion, String factura,int pago)
			throws MercaditoException {
		 Statement st =null;
		 try{
			st = conexion.dameConnection().createStatement();
		    st.getConnection().setAutoCommit(false);
		    Date fecha  = Date.valueOf(LocalDate.now());
		    
			st.executeUpdate("INSERT INTO ventas(factura,producto,cantidad,importe,nombre,direccion,total,fecha,pago) "
					+ "VALUES("+factura+","+item.getProducto().getId()+","+item.getCantidad()+","+item.getTotal()+",'"+nombreyApellido+"','"+direccion+"',"+0+",'"+fecha.toString()+"','"+pago+"' )");
		   
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
