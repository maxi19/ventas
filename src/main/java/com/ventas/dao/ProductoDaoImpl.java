package com.ventas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Item;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;




public class ProductoDaoImpl implements ProductoDao {

	
	private Conexion conexion = Conexion.getInstance();
	

	public void quitarStock(int cantidad, int id) throws  MercaditoException {

		 Producto productoAmodificar = obtenerProducto(id);
		 int rows = 0;
		 Statement st = null;
		 if (cantidad > productoAmodificar.getStock() ) {
			throw new MercaditoException("la cantidad supera a la que tenemos en stock");
		 }
		 
		 try {
			 st =conexion.dameConnection().createStatement();
			 int cantidadActual = productoAmodificar.getStock() - cantidad;
			 rows = st.executeUpdate ("update productos set stock="+ cantidadActual +" where id =" + id);	      
		} catch (SQLException e) {
			throw new MercaditoException("Hubo un error al realizar la consulta");
		}finally{
			 cerrarStatement(st);    
		}
			
	}


	private void cerrarStatement(Statement st) {
		try {
			st.close ();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public Producto obtenerProducto(int id) throws MercaditoException {
		 Statement st = null;
		 ResultSet rs = null;
		 Producto productoResponse = null;
		 try{
			 st=conexion.dameConnection().createStatement();
			  rs = st.executeQuery ("select * from productos where Id =" + id);	 
			 if (rs.next()) {
				 productoResponse = new Producto();
				 productoResponse.setId(rs.getInt(1));
				 productoResponse.setDescripcion(rs.getString(3));
				 productoResponse.setPrecio(rs.getInt(8));
				 productoResponse.setStock(rs.getInt(7));
				 productoResponse.setMarca(rs.getString(2));
				 productoResponse.setNombre(rs.getString(3));
			} 
		 } catch (SQLException e) {
				throw new MercaditoException("Hubo un error al realizar la consulta");
		 }finally {
			finalizarConexion(st, rs); 
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
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
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
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
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
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
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
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
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
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
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
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
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
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
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
				 producto.setPrecio(rs.getInt(8));
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
				 producto.setPrecio(rs.getInt(8));
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
				 producto.setPrecio(rs.getInt(8));
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
				 producto.setPrecio(rs.getInt(8));
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

	public Producto obtenerProcucto(int idProducto) throws MercaditoException {
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
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 producto.setStock(rs.getInt(7));
				 return producto;
			}
			
		 }catch (SQLException ex) {
			 System.out.println("Error en consulta tabla productos : producto id -> "+ idProducto);

		 }finally {
			finalizarConexion(st, rs);
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
	
	
	public List<Producto> listarProductosPorCriterio( String marca, String tipo ) throws SQLException {
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
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
		}
		 
		return productos;
	}


	
	public List<Producto> listarProductosPorTipo() throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos order by tipo");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 producto.setStock(rs.getInt(7));
				 producto.setVisiblePortada(rs.getBoolean(10));
				 productos.add(producto); 	
			}
				
		 }catch (SQLException e) {
			 throw new MercaditoException("");
		}finally {
			finalizarConexion(st, rs);
		}
		 
		return productos;
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


	@Override
	public void agregarProducto(Producto producto) throws MercaditoException {

		 Statement st =null;
		 ResultSet rs = null;

		 try{
			st = conexion.dameConnection().createStatement();
		    st.getConnection().setAutoCommit(false);
			st.executeUpdate("INSERT INTO productos(marca,nombre,tipo,cantidad,stock,precio) "
					+ "VALUES('"+producto.getMarca()+"','"+producto.getDescripcion()+"',"+producto.getTipo()+",0,"+producto.getStock()+","+producto.getPrecio()+")");
		    st.getConnection().commit();
		 }catch (Exception e) {
			try {
				st.getConnection().rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			cerrarStatement(st);
		}
		
		
	}


	@Override
	public List<String> listarMarcas() throws MercaditoException {
	
		 Statement st =null;
		 ResultSet rs = null;
		 List<String> marcas = null;

		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery("INSERT DISTINCT marca from productos");
			marcas= new ArrayList<String>();
			while (rs.next()) {
				marcas.add(rs.getString(1));
			}
		 }catch (SQLException e) {
			throw new MercaditoException("Error al obtener las marcas");
		}finally {
			finalizarConexion(st, rs);
		}
		return marcas;
	}


	@Override
	public List<Producto> listarProductosPorTipo(int categoria) throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select id, marca, nombre, descripcion, tipo, cantidad, stock, "
					+ "precio,categoria from productos where categoria = '"+categoria+"' order by marca");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (SQLException e) {
		 System.out.println(e.getMessage());
		 }finally {
			finalizarConexion(st, rs);
		}
		 
		return productos;
	}


	@Override
	public List<Producto> buscarProductoPorLetra(String buscar) throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select Id, nombre from productos where nombre like '"+buscar+"%' limit 10");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setNombre(rs.getString(2));
				 productos.add(producto);
			}
				
		 }catch (SQLException e) {
		 System.out.println(e.getMessage());
		 }finally {
			finalizarConexion(st, rs);
		}
		 
		return productos;
	}


	@Override
	public List<Producto> listarProductosPortada() throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos where portada = 1");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto(rs.getInt(1), rs.getString(3),rs.getString(4),rs.getInt(7), rs.getInt(8),rs.getInt(9));
				 productos.add(producto);
			}
				
		 }catch (SQLException e) {
		 System.out.println(e.getMessage());
		 }finally {
			finalizarConexion(st, rs);
		}
		 
		return productos;
	}


	
	
}
