package com.ventas.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Categoria;
import com.ventas.entity.Item;
import com.ventas.entity.Marca;
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

	public MarcasDao marcasDao = new MarcasDaoImpl();
	
	public CategoriaDao categoriaDao = new CategoriaDaoImpl();

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
				 productoResponse.setMarca(null);
				 productoResponse.setNombre(rs.getString(3));
			} 
		 } catch (SQLException e) {
				throw new MercaditoException("Hubo un error al realizar la consulta");
		 }finally {
			finalizarConexion(st, rs); 
		}
		return productoResponse;
	}

		public Producto obtenerProcucto(int idProducto) throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery("SELECT  * from productos WHERE id = '"+idProducto+"'");			
			if (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(marcasDao.obtenerMarca(rs.getInt(8)));
				 producto.setStock(rs.getInt(7));
			}
			
		 }catch (SQLException ex) {
			 throw new MercaditoException("Error en consulta tabla productos : producto id -> "+ idProducto);
		 }finally {
			finalizarConexion(st, rs);
		}
		return producto;
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
				 producto.setMarca(null);
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
			// TODO: handle exception
		}finally {
			finalizarConexion(st, rs);
		}
		 
		return productos;
	}


	
	public List<Producto> listarProductosPorCategoria() throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			rs = st.executeQuery ("select * from productos");
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setMarca(marcasDao.obtenerMarca(rs.getInt(2)));
				 producto.setTitulo(rs.getString(3));
				 producto.setNombre(rs.getString(4));
				 producto.setDescripcion(rs.getString(5));
				 producto.setCategoria(categoriaDao.obtenerCategoria(rs.getInt(6)));
				 producto.setStock(rs.getInt(7));
				 producto.setPrecio(rs.getInt(8));
				 producto.setOrigen(rs.getString(9));
				 producto.setPortada(rs.getBoolean(10));
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
		
			st.executeUpdate("INSERT INTO productos("
					+ "id_marca,titulo,nombre,descripcion,id_categoria,stock,precio,origen,portada) "
					+ "VALUES('"+producto.getMarca().getId()+"','"+producto.getTitulo()+"','"+producto.getNombre()+"','"+producto.getDescripcion()+"','"+producto.getCategoria().getId()+"', '"+producto.getStock()+"','"+producto.getPrecio()+"','"+producto.getOrigen()+"',"+true+")");
		    st.getConnection().commit();
		 }catch (Exception e) {
			try {
				st.getConnection().rollback();
			} catch (SQLException e1) {
				
			}
		}finally {
			cerrarStatement(st);
		}
		
		
	}





	@Override
	public List<Producto> listarProductosPorCategoria(int categoria) throws MercaditoException {
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
				 producto.setMarca(null);
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
				 producto = new Producto(rs.getInt(1), marcasDao.obtenerMarca(rs.getInt(2)),rs.getString(3),rs.getString(4),rs.getString(5),categoriaDao.obtenerCategoria(rs.getInt(6)),rs.getInt(7), rs.getInt(8),rs.getString(3));
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
	public void eliminarProducto(String idProducto) throws MercaditoException {
		
		Statement st =null;
		 try{
			st = conexion.dameConnection().createStatement();
			st.executeUpdate("DELETE from productos WHERE id=" + Integer.parseInt(idProducto) );			
			
		 }catch (SQLException ex) {
			 System.out.println("Error en el borrado : producto id -> "+ idProducto);
			 throw new  MercaditoException("Error en consulta tabla productos : producto id -> " + idProducto) ;
		 } finally {
				try {
					st.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		
	}


	@Override
	public List<Producto> obtenerProductos(int idCategoria) throws MercaditoException {
		 Statement st =null;
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 try{
			st = conexion.dameConnection().createStatement();
			if (idCategoria!=0) {
				rs = st.executeQuery ("select * from productos where id_categoria = "+idCategoria);
			}else {
				rs = st.executeQuery ("select * from productos");				
			}
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto(rs.getInt(1), marcasDao.obtenerMarca(rs.getInt(2)),rs.getString(3),rs.getString(4),rs.getString(5),categoriaDao.obtenerCategoria(rs.getInt(7)),rs.getInt(7), rs.getInt(8),rs.getString(3));
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
	public void add(Producto t) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void delete(Integer i) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void edit(Producto t) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public List<Producto> list() throws MercaditoException {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void getOne(Integer i) throws MercaditoException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public Producto obtenerProductoTransaccion(int idProducto, Statement st) throws MercaditoException {
		ResultSet rs;
		Producto producto =  null;
		try {
			rs = st.executeQuery("SELECT  * from productos WHERE id = '"+idProducto+"'");
			if (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setDescripcion(rs.getString(3));
				 producto.setPrecio(rs.getInt(8));
				 producto.setMarca(marcasDao.obtenerMarca(rs.getInt(8)));
				 producto.setStock(rs.getInt(7));
			}
			
		} catch (SQLException e) {
			try {
				st.getConnection().rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}			

		return producto;
	}





	
	
}
