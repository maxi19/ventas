package com.ventas.dao.venta;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ventas.config.Conexion;
import com.ventas.entity.Contacto;
import com.ventas.entity.Item;
import com.ventas.entity.Marca;
import com.ventas.entity.Producto;
import com.ventas.entity.Venta;
import com.ventas.excepciones.MercaditoException;
import com.ventas.service.VentaBuilder;

public class VentasDaoImpl implements VentasDao{

	private static final String queryList = "SELECT identificador, monto,email, factura,direccion, estado, telefono, fecha FROM pedido";
	private Conexion conexion = Conexion.getInstance();

	
	@Override
	public String obtenerFactura() throws MercaditoException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void registrarTransaccion(List<Item> items, VentaBuilder ventaBuilder, Contacto contacto) throws MercaditoException {
		ventaBuilder.generarStatement();
		ventaBuilder.obtenerProducto(items);
		ventaBuilder.descontarStock();
		ventaBuilder.registrarVenta(contacto.getNombre() + " " + contacto.getApellido(), contacto.getDireccion(), "1");
	}

	@Override
	public List<Venta> bustarPorFiltro(Filter filter) throws Exception {
		 ResultSet rs = null;
		 List<Venta> ventas = null;
		 Venta venta = null;
		 PreparedStatement st = null;
		 try{
			st = conexion.dameConnection().prepareStatement(getFIlterQuery(filter));
			rs = st.executeQuery();
			ventas = new ArrayList<Venta>();
			 while (rs.next()) {
				 venta = new Venta();
				 venta.setDireccion(rs.getString(5));
				 venta.setMonto(rs.getInt(2));
				 venta.setEstado(rs.getString(6));
				 venta.setIdentificador(rs.getString(1));
				 venta.setFecha(rs.getString(8));
				 venta.setTelefono(rs.getString(7));
				 ventas.add(venta);
			}
				
		 }catch (Exception e) {
				throw new MercaditoException("Hubo un error al realizar la consulta", e);
		}finally {
			try {
				if(st != null)st.close();
				if(rs != null)rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		 
		return ventas;
	}
	
	private String getFIlterQuery( Filter filter) {
		if (filter.getFilterField().equals("")) {
			return queryList;
		}
		StringBuilder sb = new StringBuilder();
		sb.append(queryList)
		.append(" ")
		.append("WHERE")
		.append(" ")
		.append(filter.getFilterField())
		.append("=")
		.append(filter.getFilterValue());
		return sb.toString();
	}
	
	

}
