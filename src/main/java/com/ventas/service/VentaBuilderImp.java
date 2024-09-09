package com.ventas.service;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.List;

//import org.apache.log4j.Logger;

import com.ventas.config.Conexion;
import com.ventas.entity.Item;
import com.ventas.entity.Producto;
import com.ventas.excepciones.MercaditoException;

import utils.EstadoPedido;
import utils.RamdomUtils;


public class VentaBuilderImp implements VentaBuilder {

	private Conexion conexion = null;
	private Statement st = null;
	private ResultSet rs = null;
	private List<Item> items;
	
	//private static Logger logger = Logger.getLogger(VentaBuilderImp.class.getName());

	@Override
	public void generarStatement() throws MercaditoException{
		this.conexion= Conexion.getInstance();
		try {
			this.st =conexion.dameConnection().createStatement();
			st.getConnection().setAutoCommit(false);
		} catch (SQLException e) {
			//logger.error(e);
			finalizarConexion(st);
			new MercaditoException("error en la creacion de la conexion", e);
		}
	}
	
	@Override
	public void obtenerProducto(List<Item> items) throws MercaditoException {
		this.items = items;
		items.forEach((Item item) ->{
				try {
					seleccionarUnProducto(item);
				} catch (MercaditoException e) {
					//logger.error(e);
			        throw new RuntimeException("Error runtime en iteracion",e);
				}
			
		});
	
	}
	
	private void seleccionarUnProducto(Item item) throws MercaditoException{
		try{
			rs = st.executeQuery("SELECT  * from productos WHERE id = '"+item.getProducto().getId()+"'");			
			if (rs.next()) {
				 Producto productoObtenido = new Producto();
				 productoObtenido.setId(rs.getInt(1));
				 productoObtenido.setDescripcion(rs.getString(3));
				 productoObtenido.setPrecio(rs.getInt(8));
				 //producto.setMarca(marcasDao.obtenerMarca(rs.getInt(8)));
				 productoObtenido.setStock(rs.getInt(7));
				 item.setProducto(productoObtenido);
			}		
		 }catch (SQLException ex) {
			//logger.error("Error al obtener el producto " ,ex);
			rollBack();
			finalizarConexion(st, rs);
			throw new MercaditoException("error en proceso obtener producto");
		 }	
	}

	@Override
	public void descontarStock() throws MercaditoException {
		items.forEach((Item item) ->{
			try {
				descontarUnProducto(item.getProducto(), item);
			} catch (MercaditoException e) {
		        throw new RuntimeException("Error runtime en iteracion",e);
			}
		});
		
		
	}

	private void descontarUnProducto(Producto producto, Item item) throws MercaditoException{
		 try{
				if (producto.getStock() < item.getCantidad()) {
					throw new MercaditoException("no es posible realizar la transaccion por que el stock disponible es menor");
				}
				int nuevoStock = producto.getStock() - item.getCantidad();
				st.executeUpdate("UPDATE productos SET stock ="+ nuevoStock +" WHERE id=" + producto.getId() );					
			 }catch (SQLException ex) {
				// logger.error("Error en consulta tabla productos : producto id -> "+ producto.getId());
				 rollBack();
			 }catch (MercaditoException e) {
				 rollBack();
				 finalizarConexion(st);
				throw new MercaditoException("error en proceso descontar Stock", e);
			 }
	}
	
	@Override
	public void registrarVenta(String nombreYApellido, String direccion, String pago ) throws MercaditoException {
		int factura = 1;
		 String identificador = RamdomUtils.generarCodigo();
		 Date fecha  = Date.valueOf(LocalDate.now());
		 try{
			 int monto = 0;
			 for (Item item : items) {
					registrarUnaVenta(item, nombreYApellido, direccion, pago, factura, identificador, fecha);	
					 monto += item.getTotal();	
			 }		 
				st.executeUpdate("INSERT INTO pedido(factura,identificador,fecha,estado,monto,email,telefono,direccion,cp) "
						+ "VALUES ('00000001-0000001','"+identificador+"','"+fecha+"','"+EstadoPedido.PENDIENTE_ENTREGA+"', "+monto+", 'ninguno' ,'ninguno' ,'ninguno','ninguno')");

		   	st.getConnection().commit();
		 }catch (SQLException e) {
			 rollBack();
			throw new MercaditoException("error en proceso registrar venta", e);
		}finally {
			finalizarConexion(st, rs);
		}	
		
	}

	private void registrarUnaVenta(Item item, String nombreYApellido, String direccion, String pago, int factura , String identificador,  Date fecha) throws SQLException {
		
				st.executeUpdate("INSERT INTO ventas(factura,producto,cantidad,importe,nombre,direccion,total,fecha,pago,identificador) "
					+ "VALUES("+factura+","+item.getProducto().getId()+","+item.getCantidad()+","+item.getTotal()+",'"+nombreYApellido+"','"+direccion+"',"+0+",'"+fecha.toString()+"','"+pago+"','"+identificador+"' )");
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
	
	private void finalizarConexion(Statement st) {
		try {
			st.close();
			//logger.info("se cierra la conexion");
		} catch (SQLException e) {
			
		}
	}
	
	private void rollBack() {
		try {
			//logger.info("se efectua rollback");
			st.getConnection().rollback();
		} catch (SQLException e) {
			
		}
	}

}
