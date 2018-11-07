<%-- 
    Document   : editUsuario
    Created on : Nov 7, 2018, 6:02:53 PM
    Author     : CandidoAcevedo
--%>

<%@page import="Models.Usuario"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Editar Usuario!</h1>
        <%
            UsuarioDAO ud = new UsuarioDAO();
            int id = Integer.parseInt((String)request.getParameter("id"));
            Usuario usu = (Usuario)ud.list(id);
        %>
         <form name="form" action="UsuarioController">
            Id: <br>
            <input type="text" name="id" value="<%= usu.getIdUsuario() %>" /> <br>
            Nombre: <br>
            <input type="text" name="user" value="<%= usu.getUsuario() %>" />
            <br>
            Password:<br>
            <input type="text" name="pass" value="<%= usu.getPass() %>" />
            Tipo:<br>
            <input type="text" name="tipo" value="<%= usu.getTipo() %>" /> 
            <input type="submit" name="accion" value="Actualizar" />
        </form>
        
    </body>
</html>
