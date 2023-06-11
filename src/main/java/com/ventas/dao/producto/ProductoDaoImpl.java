package com.ventas.dao.producto;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.PreparableStatement;
import com.ventas.config.Conexion;
import com.ventas.entity.Categoria;
import com.ventas.entity.Item;
import com.ventas.entity.Marca;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;




public class ProductoDaoImpl implements ProductoDao {

	private Conexion conexion = Conexion.getInstance();
	private static final String queryList = "SELECT id, id_marca, titulo, nombre, descripcion, id_categoria, stock, precio, origen, portada FROM productos";
	private static final String queryGetOne = "SELECT id, id_marca, titulo, nombre, descripcion, id_categoria, stock, precio, origen, portada FROM productos WHERE id = ?";
	private static final String queryDelete = "DELETE from productos WHERE id=?";
	private static final String queryEdit = "UPDATE productos SET stock = ? WHERE id= ?";
	private static final String queryInsert = "INSERT INTO productos(id_marca,titulo,nombre,descripcion,id_categoria,stock,precio,origen,portada) VALUES (?,?,?,?,?,?,?,?,?)";
	
	private static final String queryEditFlag = "UPDATE productos SET portada = ?  WHERE id = ? ";
	
	
	@Override
	public void add(Producto t) throws MercaditoException {

		PreparedStatement preparedStatement =null;

		 try{
			preparedStatement = conexion.dameConnection().prepareStatement(queryInsert);
			preparedStatement.setInt(1, t.getMarca().getId());
			preparedStatement.setString(2, t.getTitulo());
			preparedStatement.setString(3, t.getNombre());
			preparedStatement.setString(4, t.getDescripcion());
			preparedStatement.setInt(5, t.getCategoria().getId());
			preparedStatement.setInt(6, t.getStock());
			preparedStatement.setInt(7, t.getPrecio());
			preparedStatement.setString(8, t.getOrigen());
			preparedStatement.setBoolean(9, false);
			preparedStatement.executeUpdate();
			
		 }catch (Exception e) {
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


	@Override
	public void delete(Integer i) throws MercaditoException {
		PreparedStatement st = null;
		try{
			st = conexion.dameConnection().prepareStatement(queryDelete);
			st.setInt(1, i);
			st.executeUpdate();			
		 }catch (SQLException ex) {
			 throw new MercaditoException("Error en consulta tabla productos : producto id -> "+ i,ex) ;
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
	public void edit(Producto t) throws MercaditoException {
	/*	Statement st =null;
		 try{
			st = conexion.dameConnection().prepareStatement(queryEdit);
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
		*/
	}


	@Override
	public List<Producto> list() throws MercaditoException {
		 ResultSet rs = null;
		 List<Producto> productos = null;
		 Producto producto = null;
		 PreparedStatement st = null;
		 try{
			st = conexion.dameConnection().prepareStatement(queryList);
			rs = st.executeQuery();
			productos = new ArrayList<Producto>();
			 while (rs.next()) {
				 producto = new Producto();
				 producto.setId(rs.getInt(1));
				 producto.setMarca(new Marca(rs.getInt(2)));
				 producto.setTitulo(rs.getString(3));
				 producto.setNombre(rs.getString(4));
				 producto.setDescripcion(rs.getString(5));
				 producto.setPrecio(rs.getInt(8));
				 producto.setStock(rs.getInt(7));
				 producto.setOrigen(rs.getString(9));
				 producto.setPortada(rs.getBoolean(10));
				 productos.add(producto);
			}
				
		 }catch (Exception e) {
				throw new MercaditoException("Hubo un error al realizar la consulta", e);
		}finally {
			try {
				st.close();
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		 
		return productos;
	}


	@Override
	public Producto getOne(Integer i) throws MercaditoException {
		 ResultSet rs = null;
		 Producto productoResponse = null;
		 PreparedStatement preparedStatement = null;
		 try{
			 preparedStatement = conexion.dameConnection().prepareStatement(queryGetOne);
			 preparedStatement.setInt(1, i);
			 rs = preparedStatement.executeQuery();
			 if (rs.next()) {
				 productoResponse = new Producto();
				 productoResponse.setId(rs.getInt(1));
				 productoResponse.setDescripcion(rs.getString(3));
				 productoResponse.setPrecio(rs.getInt(8));
				 productoResponse.setStock(rs.getInt(7));
				 productoResponse.setMarca(null);
				 productoResponse.setNombre(rs.getString(3));
				 productoResponse.setPortada(rs.getBoolean(10)); 
			} 
		 } catch (SQLException e) {
				throw new MercaditoException("Hubo un error al realizar la consulta", e);
		 }finally {
			 try {
				preparedStatement.close();
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
		}
		return productoResponse;
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


	@Override
	public void cambiarFlag(int idProducto, boolean flag ) throws MercaditoException {
	
		PreparedStatement st =null;
		 try{
			st = conexion.dameConnection().prepareStatement(queryEditFlag);
			st.setBoolean(1, flag);
			st.setInt(2, idProducto);
			st.executeUpdate();				
		 }catch (SQLException ex) {
			 throw new  MercaditoException("Error en consulta tabla productos : producto id",ex) ;
		 } finally {
				finalizarConexion(st);
		}
		
		
		
	}



	private void finalizarConexion(PreparedStatement st) {
		try {
			st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

	
	
}
