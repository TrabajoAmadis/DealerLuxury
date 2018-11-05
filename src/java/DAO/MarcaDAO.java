/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Interface.CRUD;
import Models.Marca;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CandidoAcevedo
 */
public class MarcaDAO implements CRUD{
    Conexion con = new Conexion();
    Connection com;
    PreparedStatement ps;
    ResultSet rs;
    Marca m = new Marca();
    
    @Override
    public List listar() {
        ArrayList<Marca>list=new ArrayList();
        String sql = "select * from marcas";
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Marca marca = new Marca();
                marca.setIdMarca(rs.getInt("id_marca"));
                marca.setMarca(rs.getString("nombre"));
                list.add(marca);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Marca list(int id) {
        String sql = "select * from marcas where id_marca="+id;
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){                
                m.setIdMarca(rs.getInt("id_marca"));
                m.setMarca(rs.getString("nombre"));
                
            }
        } catch (Exception e) {
        }
        return m;
    }

    @Override
    public boolean agregar(Marca marca) {
        String sql = "insert into marcas values('"+marca.getMarca()+"')";
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean editar(Marca marca) {
        String sql = "update marcas set nombre='"+marca.getMarca()+"' where id_marca='"+marca.getIdMarca()+"'";
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from marcas where id_marca="+id;
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
