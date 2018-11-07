/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.UsuarioDAO;
import Models.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CandidoAcevedo
 */
public class UsuarioController extends HttpServlet {
       String listar = "vista/listarUsuario.jsp";
       String add= "vista/listarUsuario.jsp";
       String edit = "vista/editUsuario.jsp";
       Usuario usu = new Usuario();
       UsuarioDAO ud = new UsuarioDAO();
   

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action = request.getParameter("accion");
        if(action.equalsIgnoreCase("list")){
            acceso=listar;
        }else if(action.equals("add")){
            acceso=add;
        }else if(action.equalsIgnoreCase("Agregar")){
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            String tipo = request.getParameter("tipo");
            usu.setUsuario(user);
            usu.setPass(pass);
            usu.setTipo(tipo);
            ud.agregar(usu);
            acceso=listar;
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id", request.getParameter("idUsuario"));
            acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            int id = Integer.parseInt(request.getParameter("id"));
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            String tipo = request.getParameter("tipo");
            usu.setIdUsuario(id);
            usu.setUsuario(user);
            usu.setPass(pass);
            usu.setTipo(tipo);
            ud.editar(usu);
            acceso=listar;
        }else if(action.equalsIgnoreCase("eliminar")){
            int id = Integer.parseInt(request.getParameter("id"));
            usu.setIdUsuario(id);
            ud.eliminar(id);
            acceso=listar;
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
