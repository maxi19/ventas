package com.ventas.config;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Date;
import java.util.Properties;


public class Conexion {

	private static Conexion instance = Conexion.getInstance();
	 
	private Connection conn;
	
	private Conexion() {}
	
	public Connection dameConnection() {
		
		try {
			
			Properties properties = getProperties();
			
			String url = "jdbc:mysql://" +properties.getProperty("database.host")+":"+properties.getProperty("database.port")+"";
			Class.forName(properties.getProperty("database.driver"));
			conn = DriverManager.getConnection(url+"/"+ properties.getProperty("database.name")+properties.getProperty("database.timezone"), 
					properties.getProperty("database.user"), properties.getProperty("database.password"));
			if (!conn.isClosed()) {
				
				//log.info("conectado a la base de datos");
			}	
			return conn;
		} catch (ClassNotFoundException e) {
			//log.error("Error de acceso al driver" + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			//log.error("Error de SQL" + e.getMessage());
		} catch (IOException e) {
			
		}
		return null;
	}
	
	
	private Properties getProperties() throws IOException {
		
	    InputStream inputStream;
	    
		 Properties prop = new Properties();
         String propFileName = "environment.properties";
         inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);
		
         if (inputStream != null) {
             prop.load(inputStream);
         } else {
             throw new FileNotFoundException("property file '" + propFileName + "' not found in the classpath");
         }
		
         inputStream.close();
         
         return prop;
	}
	
	
	 public static Conexion getInstance() {
	       if (instance == null) {
	    	   instance = new Conexion();
	       }
	       return instance;
	   }
}
