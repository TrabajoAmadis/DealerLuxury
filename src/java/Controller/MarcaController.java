/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.MarcaDAO;
import Models.Marca;
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
public class MarcaController extends HttpServlet {
    String listar="vista/listarMarca.jsp";
    String add="vista/addMarca.jsp";
    String edit="vista/editMarca.jsp";
    Marca marca = new Marca();
    MarcaDAO md = new MarcaDAO();

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       String acceso="";
       String action=request.getParameter("accion");
       if(action.equalsIgnoreCase("listar")){
            acceso=listar;
       }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }else if(action.equalsIgnoreCase("Agregar")){
            String nombre = request.getParameter("nombre");
            marca.setMarca(nombre);
            md.agregar(marca);
            acceso=listar;
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id", request.getParameter("idMarca"));
            acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            int id = Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("nombre");
            marca.setIdMarca(id);
            marca.setMarca(nombre);
            md.editar(marca);
            acceso=listar;
            
        }else if(action.equalsIgnoreCase("eliminar")){
           int id = Integer.parseInt(request.getParameter("id"));
           marca.setIdMarca(id);
           md.eliminar(id);
           acceso=listar;
        }
       RequestDispatcher vista= request.getRequestDispatcher(acceso);
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
