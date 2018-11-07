<%-- 
    Document   : listarCategoria
    Created on : Nov 6, 2018, 11:13:21 PM
    Author     : CandidoAcevedo
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.Categoria"%>
<%@page import="DAO.CategoriaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <h1>Listar Categoria</h1>
        <br>
        <a href="CategoriaController?accion=add" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Agregar</a>
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Agregar</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form name="form" action="CategoriaController">
                            Nombre: <br>
                            <input type="text" name="nombre" value="" class="form-control" id="exampleFormControlInput1" /> 
                            <br>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" name="accion" value="Agregar"  class="btn btn-primary">Save changes</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <div class="container">
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Categoria</th>
                        <th scope="col">Accion</th>                    
                    </tr>
                </thead>
                <%
                    CategoriaDAO cd = new CategoriaDAO();
                    List<Categoria> list = cd.listar();
                    Iterator<Categoria> iter = list.iterator();
                    Categoria categoria = null;
                    while (iter.hasNext()) {
                        categoria = iter.next();

                %>
                <tbody>
                    <tr>

                        <td><%= categoria.getIdCategoria()%></td>
                        <td><%= categoria.getCategoria()%></td>
                        <td>
                            <a href="CategoriaController?accion=editar&id=<%= categoria.getIdCategoria()%>" class="btn btn-warning">Editar</a>
                            <a href="CategoriaController?accion=eliminar&id=<%= categoria.getIdCategoria()%>" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>               

                    <%}%>
                </tbody>                
            </table>  
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
