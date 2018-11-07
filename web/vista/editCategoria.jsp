<%-- 
    Document   : editCategoria
    Created on : Nov 6, 2018, 11:14:08 PM
    Author     : CandidoAcevedo
--%>

<%@page import="Models.Categoria"%>
<%@page import="DAO.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar</h1>
        <%
            CategoriaDAO cd = new CategoriaDAO();
            int id = Integer.parseInt((String) request.getParameter("id"));
            Categoria categoria =(Categoria)cd.list(id);
        %>
                <form name="form" action="CategoriaController">
            Id: <br>
            <input type="text" name="id" value="<%= categoria.getIdCategoria() %>"/> <br>
            Nombre: <br>
            <input type="text" name="nombre" value="<%= categoria.getCategoria() %>" />             
            <input type="submit" name="accion" value="Actualizar" />
        </form>
    </body>
</html>
