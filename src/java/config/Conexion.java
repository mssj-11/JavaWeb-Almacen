package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author HP-MSS
 */
public class Conexion {
    
    public Connection getConexion(){
        
        try {
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaweb-almacen", "root", "");
            return conexion;
        } catch (SQLException e) {
            System.out.println("Error: "+e.toString());
            return null;
        }
        
    }
    
}