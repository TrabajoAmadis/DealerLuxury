/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Interface.CRUDCategoria;
import Models.Categoria;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CandidoAcevedo
 */
public class CategoriaDAO implements CRUDCategoria {
    Conexion con = new Conexion();
    Connection com;
    PreparedStatement ps;
    ResultSet rs;
    Categoria c = new Categoria();

    @Override
    public List listar() {
        ArrayList<Categoria>list= new ArrayList();
        String sql = "select * from categoria";
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Categoria cat = new Categoria();
                cat.setIdCategoria(rs.getInt("id_categoria"));
                cat.setCategoria(rs.getString("nombre"));
                list.add(cat);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Categoria list(int id) {
        String sql = "select * from categoria where id_categoria="+id;
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                c.setIdCategoria(rs.getInt("id_categoria"));
                c.setCategoria(rs.getString("nombre"));
            }
        } catch (Exception e) {
        }
        return c;
    }

    @Override
    public boolean agregar(Categoria categoria) {
        String sql = "insert into categoria values('"+categoria.getCategoria() +"')";
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean editar(Categoria categoria) {
        String sql = "update categoria set nombre='"+categoria.getCategoria()+"' where id_categoria='"+categoria.getIdCategoria()+"'";
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
        String sql = "delete from categoria where id_categoria="+id;
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
