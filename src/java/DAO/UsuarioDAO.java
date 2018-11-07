/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Interface.CRUDUsuario;
import Models.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author CandidoAcevedo
 */
public class UsuarioDAO implements CRUDUsuario {
     Conexion con = new Conexion();
    Connection com;
    PreparedStatement ps;
    ResultSet rs;
    Usuario u = new Usuario();

    @Override
    public List listar() {
        ArrayList<Usuario>list = new ArrayList();
        String sql = "select * from usuario";
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Usuario usu = new Usuario();
                usu.setIdUsuario(rs.getInt("id_usuario"));
                usu.setUsuario(rs.getString("usuario"));
                usu.setPass(rs.getString("contrasena"));
                usu.setTipo(rs.getString("tipo"));
                list.add(usu);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Usuario list(int id) {
        String sql = "select * from usuario where id_usuario="+id;
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                u.setIdUsuario(rs.getInt("id_usuario"));
                u.setUsuario(rs.getString("usuario"));
                u.setPass(rs.getString("contrasena"));
                u.setTipo(rs.getString("tipo"));
            }
        } catch (Exception e) {
        }
        return u;
    }

    @Override
    public boolean agregar(Usuario user) {
        String sql = "insert into usuario values('"+user.getUsuario()+"', '"+user.getPass()+"', '"+user.getTipo()+"')";
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean editar(Usuario user) {
        String sql = "update usuario set usuario='"+user.getUsuario()+"', contrasena='"+user.getPass()+"', tipo='"+user.getTipo()+"' where id_usuario='"+user.getIdUsuario()+"'";
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
        String sql = "delete from usuario where id_usuario ="+id;
        try {
            com=con.conectar();
            ps=com.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}
