<%-- 
    Document   : contacto
    Created on : Nov 9, 2018, 3:34:04 PM
    Author     : kelvi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Autos Dealer Website</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content=""> 
      
        <!-- Bootstrap core JavaScript -->
        <script src="jquery/jquery.min.js"></script>
        <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
        
        <!-- Bootstrap core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="css/menustyle.css" rel="stylesheet">
    </head>
    <body>
        <!-- Menu -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
          <div class="container">
            <a class="navbar-brand" href="#">
              <img src="img/logo.png" width="160" height="35" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                  <a class="nav-link" href="index.jsp">Inicio</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="vehiculo.jsp">Vehículo</a>
                </li>  
                <li class="nav-item active">
                  <a class="nav-link" href="contacto.jsp">Contactos</a>
                </li>
                
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                     Inicio de Sesión
                </button>
                
              </ul>
            </div>
          </div>
        </nav>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Inicio de Sesión</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <label>Correo Electrónico</label>
                        <input type="text" name="email" class="form-control input-sm">
                        <label>Contraseña</label>
                        <input type="password" name="password" id="password" class="form-control" data-toggle="password">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Iniciar de Sesión</button>
                    </div>
                </div>
            </div>
        </div> 
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">
                        <form class="form-horizontal" method="post">
                            <fieldset>
                                <legend class="text-center header">Contactanos</legend>

                                <div class="form-group">
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                                    <div class="col-md-8">
                                        <input id="nombre" name="name" type="text" placeholder="Nombre completo" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                                    <div class="col-md-8">
                                        <input id="apellido" name="name" type="text" placeholder="Apellido" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <span class="col-md-1 col-md-offset-2 text-center">
                                        <i class="fa fa-envelope-o bigicon"></i>
                                    </span>
                                    <div class="col-md-8">
                                        <input id="correo" name="email" type="text" placeholder="Correo Electronico" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                                    <div class="col-md-8">
                                        <input id="telefono" name="phone" type="text" placeholder="Telefono" class="form-control">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                                    <div class="col-md-8">
                                        <textarea class="form-control" id="mensaje" name="message" placeholder="Ingrese su mensaje para nosotros aquí. Nos pondremos en contacto con usted dentro de 2 días hábiles." rows="7"></textarea>
                                    </div>
                                </div>

                                <div class="form-group1">
                                    <div class="col-md-12 text-center">
                                        <button type="enviar" class="btn btn-primary btn-lg">Enviar</button>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    
    <!-- Footer -->
    <footer class="page-footer font-small mdb-color lighten-3 pt-4">
        <section id="lab_social_icon_footer">
            <!-- Iconos y columnas -->
            <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
            <div class="container text-center text-md-left">   
                <!--Columnas-->
            <div class="row">
                <!-- Columna Nosotros -->
                <div class="col-md-2 col-lg-2 mx-auto my-md-4 my-0 mt-4 mb-1">
                  <h5 class="font-weight-bold text-uppercase mb-4">Nosotros</h5>
                  <p> Car Dealer Website, su tienda de confianza en R.D.</p>
                </div>
                <!-- Columna Contacto -->
                <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">
                    
                  <!-- Detalles Contacto -->
                  <h5 class="font-weight-bold text-uppercase mb-4">Contacto</h5>
                  <ul class="list-unstyled">
                    <li>
                      <p><i class="fa fa-home mr-3"></i> Santo Domingo, 10012, R.D.</p>
                    </li>
                    <li>
                      <p><i class="fa fa-envelope mr-3"></i> CDWinfo@hotmail.com</p>
                    </li>
                    <li>
                      <p><i class="fa fa-phone mr-3"></i> + 01 (849) 567-8888</p>
                    </li>
                    <li>
                      <p><i class="fa fa-print mr-3"></i> + 01 (809) 577-8989</p>
                    </li>
                  </ul>
                </div>
                
                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 mr-auto my-md-4 my-0 mt-4 mb-1">
                  <!-- Content -->
                  <h5 class="font-weight-bold text-uppercase mb-4">Siguenos:</h5>
                  <a href="https://www.facebook.com"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
                  <a href="https://twitter.com"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
                  <a href="https://plus.google.com"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
                  <a href="mailto:#"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
                </div>
            </div>
                <div class="footer-copyright text-center py-3">
                    <p>ASESORÍA EXPERTA <br>
                        Contamos con asesores expertos que te ayudarán a elegir la mejor opción para ti.
                        <br></p>
                    © 2018 Copyright: Car Dealer Website.</div>
            </div>
        </section>
    </footer>
</html>
