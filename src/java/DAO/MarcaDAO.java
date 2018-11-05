/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Models.Marca;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author CandidoAcevedo
 */
public class MarcaDAO {
    
    //Metodo para registrar una marca
    public static boolean registrar(Marca marca){
        try {
            String sql = "insert into marcas(nombre) values(?)";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, marca.getMarca());
            if(st.executeUpdate() > 0){
               return true; 
            }else{
                return false;
            }          
            
        } catch (SQLException ex) {
            return false;
        }
    }
    
    //Metodo para obtener todas las marcas
    public static ArrayList<Marca> listarMarca(){
        try {
            String sql = "select * from marcas";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet resultado = st.executeQuery();
            ArrayList<Marca> lista = null;
            Marca marca;
            while(resultado.next()){
                marca = new Marca();
                marca.setIdMarca(resultado.getInt("id_marca"));
                marca.setMarca(resultado.getString("nombre"));
                lista.add(marca);
            }
            con.close();
            st.close();
            resultado.close();
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
    //Metodo para buscar las marcas por nombres
    public Marca buscar(String nombre){
        Marca mar = null;
        try {
            String sql = "select * from marcas where nombre = ?";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, nombre);            
            ResultSet resultado = st.executeQuery();
            while(resultado.next()){
                mar = new Marca();
                mar.setIdMarca(resultado.getInt("id_marca"));
                mar.setMarca(resultado.getString("nombre"));
            }
            st.close();
            con.close();
            resultado.close();
        } catch (SQLException ex) {
            
        }
        return null;
    }
    
    //Metodo para actualizar las marcas
    public static boolean actualizar(Marca marca){
        boolean update = false;
        try {
            String sql = "update marcas set nombre=?";
            Connection con = Conexion.conectar();
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, marca.getMarca());
            update = st.executeUpdate()>0;
            st.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(MarcaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return update;
    }
    
    //Metodo para eliminar una marca
    public static boolean eliminar(Marca marca){
        boolean delete = false;
        try {            
            String sql = "delete from marcas where id=?";
            Connection con = Conexion.conectar();            
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, marca.getIdMarca());
            delete = st.executeUpdate()>0;
            con.close();
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(MarcaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return delete;
    }
}