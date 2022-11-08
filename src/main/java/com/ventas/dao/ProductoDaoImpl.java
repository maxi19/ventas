package com.ventas.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Item;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;




public class ProductoDaoImpl implements ProductoDao {

	
private Conexion conexion = Conexion.getInstance();
	
	private Statement stmt = null;
	
	private ResultSet rs = null;
	
	
	private Connection con;


	public void quitarStock(int cantidad, int id) throws SQLException, MercaditoException {

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


	public Producto obtenerProducto(int id) throws SQLException {
		 Statement st =conexion.dameConnection().createStatement();
		 Producto productoResponse = null;
		 try{
			 ResultSet rs = st.executeQuery ("select * from procuctos where id =" + id);	 
			 if (rs.next()) {
				 productoResponse = new Producto();
				 productoResponse.setId(rs.getInt(1));
				 productoResponse.setDescripcion(rs.getString(2));
				 productoResponse.setPrecio(rs.getInt(5));
			}
		 }finally {
			 rs.close();
			 st.close ();    
		     con.close ();	
		}
		return productoResponse;
	}


	public List<Producto> listarProductosAlmacenamiento() throws SQLException {
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
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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


	public List<Producto> listarProductosAlmacenamientoTeam() throws SQLException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'Team'and tipo = 'almacenamiento'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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


	public List<Producto> listarProductosAlmacenamientoHyP() throws SQLException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'Hikvision y PNY'and tipo = 'almacenamiento'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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


	public List<Producto> listarProductosprocesadorAMD() throws SQLException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'AMD'and tipo = 'Microprocesador'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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


	public List<Producto> listarProductosprocesadorINTEL() throws SQLException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'INTEL'and tipo = 'Microprocesador'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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


	public List<Producto> listarProductoscoolerIDCooling() throws SQLException {
		Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'ID-Cooling'and tipo = 'Cooler'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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


	public List<Producto> listarProductoscoolerMH() throws SQLException {
		Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'Master Hype'and tipo = 'Cooler'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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


	public List<Producto> listarProductoscoolerDeepcool() throws SQLException {
		Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'Deepcool'and tipo = 'Cooler'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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
	public List<Producto> listarProductosMemoriaGeil() throws SQLException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'Geil'and tipo = 'Memoria'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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
	public List<Producto> listarProductosMemoriaPatriot() throws SQLException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'Patriot'and tipo = 'Memoria'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));;
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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
	public List<Producto> listarProductosMemoriaAdata() throws SQLException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where marca = 'Adata'and tipo = 'Memoria'");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
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


	public void registrarVentaItem(Item item, String nombreyApellido, String direccion, String factura) throws SQLException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
		    st.getConnection().setAutoCommit(false);
			st.executeUpdate("INSERT INTO ventas(factura,producto,cantidad,importe,nombre,direccion,total,fecha,pago) "
					+ "VALUES("+factura+","+item.getProducto().getId()+","+item.getCantidad()+","+item.getTotal()+","+nombreyApellido+","+direccion+","+0+",'','' )");
		    st.getConnection().commit();
		 }catch (Exception e) {
			st.getConnection().rollback();
		}finally {
			st.close();
			rs.close();
		}
		
		
	}


	public Producto obtenerProcucto(int idProducto) throws SQLException {
		 Statement st =null;
		 ResultSet rs = null;
		 Producto producto;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery("SELECT  * from productos WHERE id = '"+idProducto+"'");			
			if (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(5));
				 producto.setMarca(rs.getString(2));
				 return producto;
			}
			
		 }catch (SQLException ex) {
			 System.out.println("Error en consulta tabla productos : producto id -> "+ idProducto);

		 }finally {
				st.close();
				rs.close();
		}
		return null;
	}
	
	public void	modificarStock (Producto producto, int cantidad) throws MercaditoException{
		Statement st =null;
		 try{
			st = conexion.dameConnection().createStatement();
			st.executeQuery("UPDATE productos SET stock ="+ cantidad +" WHERE id=" + producto.getId() );			
			
			
		 }catch (SQLException ex) {
			 System.out.println("Error en consulta tabla productos : producto id -> "+ producto.getId());
			 throw new  MercaditoException("Error en consulta tabla productos : producto id -> " + producto.getId()) ;
		 } finally {
				try {
					st.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
	}


	
	
}
