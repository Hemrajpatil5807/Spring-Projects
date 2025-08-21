package com.nt.entity;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionFactory {
	
private static Connection con = null;

    static {
    	
    	Properties properties = new Properties();
    	try {
    		InputStream input = ConnectionFactory.class.getClassLoader().getResourceAsStream("db.properties");
    	    if (input == null) {
    	        throw new FileNotFoundException("db.properties file not found in classpath");
    	    }
    	    properties.load(input);
    	    // Use properties to build DB connection
    	    String driverClassName = properties.getProperty("jdbc.driverClassName");
            String url = properties.getProperty("jdbc.url");
            String username = properties.getProperty("jdbc.username");
            String password = properties.getProperty("jdbc.password");
    
		     Class.forName(driverClassName);
		     
		      con = DriverManager.getConnection(url,username,password);	
    	    
    	} catch (IOException e) {
    	    e.printStackTrace();
    	} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

//	    try {
//		     Properties properties = new Properties();
//		
//     	     InputStream instream = new FileInputStream("src//db.properties");
//		
//		     properties.load(instream);
//		
//             String driverClassName = properties.getProperty("jdbc.driverClassName");
//             String url = properties.getProperty("jdbc.url");
//             String username = properties.getProperty("jdbc.username");
//             String password = properties.getProperty("jdbc.password");
//        
//		     Class.forName(driverClassName);
//		   
//		      con = DriverManager.getConnection(url,username,password);	
//	     }catch(Exception e) {
//		      e.printStackTrace();
//	     }
     }
	
	public static Connection getCon() {
		return con;
	}

	
}
