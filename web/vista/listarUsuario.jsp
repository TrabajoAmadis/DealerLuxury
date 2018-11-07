<%-- 
    Document   : listarUsuario
    Created on : Nov 7, 2018, 6:02:16 PM
    Author     : CandidoAcevedo
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Models.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="Models.Usuario"%>
<%@page import="DAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    </head>
    <body>
        <h1>Hello World!</h1>
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
                        <form name="form" action="UsuarioController">
                            Nombre: <br>
                            <input type="text" name="user" value="" class="form-control" id="exampleFormControlInput1" /> 
                            <br>
                            Contraseña <br>
                            <input type="password" name="pass" value="" class="form-control" id="exampleFormControlInput1" /> 
                            <br>                           

                            <label for="inputState">Tipo</label>
                            <select name="tipo" id="inputState"  class="form-control">                                
                                <option selected value="admin">Admin</option>
                                <option value="empleado">Empleado</option>
                            </select> 
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
                        <th scope="col">Usuario</th>
                        <th scope="col">Contraseña</th>
                        <th scope="col">Tipo</th>
                        <th scope="col">Accion</th>                    
                    </tr>
                </thead>
                <%
                    UsuarioDAO cd = new UsuarioDAO();
                    List<Usuario> list = cd.listar();
                    Iterator<Usuario> iter = list.iterator();
                    Usuario usuario = null;
                    while (iter.hasNext()) {
                        usuario = iter.next();

                %>
                <tbody>
                    <tr>

                        <td><%= usuario.getIdUsuario()%></td>
                        <td><%= usuario.getUsuario()%></td>
                        <td><%= usuario.getPass()%></td>
                        <td><%= usuario.getTipo()%></td>
                        <td>
                            <a href="UsuarioController?accion=editar&id=<%= usuario.getIdUsuario()%>" class="btn btn-warning">Editar</a>
                            <a href="UsuarioController?accion=eliminar&id=<%= usuario.getIdUsuario()%>" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>               

                    <%}%>
                </tbody>                
            </table>  
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    </body>
</html>
