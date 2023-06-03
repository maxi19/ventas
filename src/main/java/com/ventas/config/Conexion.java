package com.ventas.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.*;

public class Conexion {

	
	private static final String HOST = "localhost";
	private static final String URL = "jdbc:mysql://"+HOST+":3306";
	private static final String DBNAME = "mercado";
	
	
	private static final String TIMEZONE = "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	private static final String DRIVER = "com.mysql.jdbc.Driver";
				
	private static final String USUARIO = "root";
	private static final String PASSWORD = "admin";
	
	final static Logger logger = Logger.getLogger(Conexion.class);

	private static Conexion instance = Conexion.getInstance();
	 
	private Connection conn;
	
	private Conexion() {}
	
	public Connection dameConnection() {
		
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL+"/"+ DBNAME+TIMEZONE, USUARIO, PASSWORD);
			if (!conn.isClosed()) {
				logger.info("conectado a la base de datos");
			}	
			return conn;
		} catch (ClassNotFoundException e) {
			logger.error("Error al intentar conectar a la base");
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	 public static Conexion getInstance() {
	       if (instance == null) {
	    	   instance = new Conexion();
	       }
	       return instance;
	   }
}
