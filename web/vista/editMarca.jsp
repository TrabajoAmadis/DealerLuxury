<%-- 
    Document   : editMarca
    Created on : Nov 4, 2018, 10:17:47 PM
    Author     : CandidoAcevedo
--%>

<%@page import="Models.Marca"%>
<%@page import="DAO.MarcaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar</title>
    </head>
    <body>
        <%
            MarcaDAO md = new MarcaDAO();
            int id=Integer.parseInt((String)request.getParameter("id"));
            Marca marca=(Marca)md.list(id);
        %>
        <h1>Modificar Marca</h1>
        <form name="form" action="MarcaController">
            Id: <br>
            <input type="text" name="id" value="<%= marca.getIdMarca() %>"/> <br>
            Nombre: <br>
            <input type="text" name="nombre" value="<%= marca.getMarca() %>" />             
            <input type="submit" name="accion" value="Actualizar" />
        </form>
    </body>
</html>
