package com.ventas.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;




public class ProductoDaoImpl implements ProductoDao {

	
private Conexion conexion = Conexion.getInstance();
	
	private Statement stmt = null;
	
	private ResultSet rs = null;
	
	
	private Connection con;
	
	
	
	@Override
	public void quitarStock(int cantidad, int id) throws SQLException, MercaditoException{
		
		 Producto productoAmodificar = obtenerProducto(id);
		 Statement st = null;
		 if (cantidad > productoAmodificar.getStock() ) {
			throw new MercaditoException("la cantidad supera a la que tenemos en stock");
		 }
		 
		 try {
			 st =conexion.dameConnection().createStatement();
			 int cantidadActual = productoAmodificar.getStock() - cantidad;
			 int rows = st.executeUpdate ("update producto set stock "+ cantidadActual +" where id =" + id);	      
		} catch (Exception e) {
			throw new MercaditoException("Hubo un error al realizar la consulta");
		}finally{
			 rs.close();
			 st.close ();    
		     con.close ();
		}
			
	}
	
	@Override
	public Producto obtenerProducto( int id) throws SQLException{
		
		 Statement st =conexion.dameConnection().createStatement();
		 Producto productoResponse = null;
		 try{
			 ResultSet rs = st.executeQuery ("select * from procuctos where id =" + id);	 
			 if (rs.next()) {
				 productoResponse = new Producto();
				 productoResponse.setId(rs.getInt(1));
				 productoResponse.setDescripcion(rs.getString(2));
				 productoResponse.setPrecio(rs.getInt(3));
			}
		 }finally {
			 rs.close();
			 st.close ();    
		     con.close ();	
		}
		return productoResponse;
		 
	}
	
	
	@Override
	public List<Producto> listarProductosAlmacenamiento() throws SQLException{
		
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'Western Digital'and tipo = 'almacenamiento'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(4));
				 producto.setDescripcion(rs.getString(2));
				 producto.setPrecio(rs.getInt(1));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			st.close();
			rs.close();
		}
		 
		return productos;
		
	}
	
	
	
}
