/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DAO.CategoriaDAO;
import Models.Categoria;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CandidoAcevedo
 */
@WebServlet(name = "CategoriaController", urlPatterns = {"/CategoriaController"})
public class CategoriaController extends HttpServlet {

    String listar = "vista/listarCategoria.jsp";
    String add = "vista/listarCategoria.jsp";
    String edit = "vista/editCategoria.jsp";
    Categoria categoria = new Categoria();
    CategoriaDAO cd = new CategoriaDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("lista")) {
            acceso = listar;
        } else if(action.equalsIgnoreCase ("add")){
            acceso = add;
        }else if(action.equalsIgnoreCase ("Agregar")){
            String nombre = request.getParameter("nombre");
            categoria.setCategoria(nombre);
            cd.agregar(categoria);
            acceso = listar;
        }else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("id", request.getParameter("idCategoria"));
            acceso=edit;
        }else if(action.equalsIgnoreCase("Actualizar")){
            int id = Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("nombre");
            categoria.setIdCategoria(id);
            categoria.setCategoria(nombre);
            cd.editar(categoria);
            acceso=listar;
        }else if(action.equalsIgnoreCase("eliminar")){
            int id = Integer.parseInt(request.getParameter("id"));
            categoria.setIdCategoria(id);
            cd.eliminar(id);
            acceso=listar;
        }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
