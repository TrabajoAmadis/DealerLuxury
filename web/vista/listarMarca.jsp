<%-- 
    Document   : listarMarca
    Created on : Nov 4, 2018, 10:18:15 PM
    Author     : CandidoAcevedo
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Marca"%>
<%@page import="DAO.MarcaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Personas</h1>
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Marca</th>
                    </tr>
                </thead>
                <%
                    MarcaDAO md = new MarcaDAO();
                    List<Marca>list=md.listarMarca();
                    Iterator<Marca>iter=list.iterator();
                    Marca marca=null;
                    while(iter.hasNext()){
                        marca=iter.next();
                    
                %>

                <tbody>
                    <tr>
                        <td><%=marca.getIdMarca()%></td>
                        <td><%= marca.getMarca() %></td>
                        <td>
                            <a>editar</a>
                            <a>eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>               
            </table>
        </div>
    </body>
</html>
