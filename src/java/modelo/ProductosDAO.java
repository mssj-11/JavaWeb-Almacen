package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP - MSS
 */

public class ProductosDAO {
    
    Connection conexion;
    
    public ProductosDAO() throws ClassNotFoundException{//Por si hay ERROR de conexion: throws ClassNotFoundException
        Conexion con = new Conexion();
        conexion = con.getConexion();
    }
    
    
    
    //  Listar
    public List<Productos> listarProductos(){
        
        PreparedStatement ps;
        ResultSet rs;
        
        List<Productos> lista = new ArrayList<>();
        
        try {
            String sql = "SELECT * FROM productos";
            ps = conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String codigo = rs.getString("codigo");
                String nombre = rs.getString("nombre");
                Double precio = rs.getDouble("precio");
                int existencia = rs.getInt("existencia");
                //  Extrayendo
                Productos producto = new Productos(id, codigo, nombre, precio, existencia);
                lista.add(producto);// Agregando
            }
            return lista;
        } catch (SQLException e) {
            System.out.println("Error: "+e.toString());
            return null;
        }
        
    }
    
    
    //  Mostrar
    public Productos mostrarProductos(int _id){
        
        PreparedStatement ps;
        ResultSet rs;
        Productos producto = null;
        
        try {
            String sql = "SELECT * FROM productos WHERE id=?";
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, _id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String codigo = rs.getString("codigo");
                String nombre = rs.getString("nombre");
                Double precio = rs.getDouble("precio");
                int existencia = rs.getInt("existencia");
                //  Extrayendo
                producto = new Productos(id, codigo, nombre, precio, existencia);
            }
            return producto;
        } catch (SQLException e) {
            System.out.println("Error: "+e.toString());
            return null;
        }
        
    }
    
    
    //  Insertar
    public boolean insertarProducto(Productos producto){
        
        PreparedStatement ps;
        
        try {
            String sql = "INSERT INTO productos (codigo, nombre, precio, existencia) VALUES (?,?,?,?)";
            ps = conexion.prepareStatement(sql);
            ps.setString(1, producto.getCodigo());
            ps.setString(2, producto.getNombre());
            ps.setDouble(3, producto.getPrecio());
            ps.setInt(4, producto.getExistencia());
            ps.execute();
            
            return true;
        } catch (SQLException e) {
            System.out.println("Error: "+e.toString());
            return false;
        }
        
    }
    
    
    //  Actualizar
    public boolean actualizarProducto(Productos producto){
        
        PreparedStatement ps;
        
        try {
            String sql = "UPDATE productos SET codigo=?, nombre=?, precio=?, existencia=? WHERE id=?";
            ps = conexion.prepareStatement(sql);
            ps.setString(1, producto.getCodigo());
            ps.setString(2, producto.getNombre());
            ps.setDouble(3, producto.getPrecio());
            ps.setInt(4, producto.getExistencia());
            ps.setInt(5, producto.getId());
            ps.execute();
            
            return true;
        } catch (SQLException e) {
            System.out.println("Error: "+e.toString());
            return false;
        }
        
    }
    
    
    //  Eliminar
    public boolean eliminarProducto(int _id){
        
        PreparedStatement ps;
        
        try {
            String sql = "DELETE FROM productos WHERE id=?";
            ps = conexion.prepareStatement(sql);
            ps.setInt(1, _id);
            ps.execute();
            
            return true;
        } catch (SQLException e) {
            System.out.println("Error: "+e.toString());
            return false;
        }
        
    }
    
    
    
    
    
}