<%-- 
    Document   : principal
    Created on : 07-ene-2017, 18:39:31
    Author     : Carlos J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,app.entidad.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hola mundo</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
   <nav class="navbar navbar-inverse" role="navigation">
  
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse"
            data-target=".navbar-ex1-collapse">
      <span class="sr-only">Desplegar navegación</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="principal.jsp">Sistema Electoral</a>
  </div>
 
  
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav">
        
      <li class="dropdown">
          <a href=""class="dropdown-toggle" data-toggle="dropdown">personeros<b class="caret"></b></a>
      <ul class="dropdown-menu">
          <li><a href="./ControladorEL?operacion=Personeros">Agregar Nuevo</a></li>
          <li><a href="./ControladorEL?operacion=ListarPersoneros">Listar persones</a></li>
          
        </ul>
      
      </li>
         
      <li class="dropdown">
          <a href="#"class="dropdown-toggle" data-toggle="dropdown">votos<b class="caret"></b></a>
          <ul class="dropdown-menu">
              <li><a href="./ControladorEL?operacion=VotosTotales">Ingresar Votos Totales</a></li>
              <li><a href="./ControladorVotos?operacion=VotosM">Ingresar Votos por region</a></li>
              <li><a href="./ControladorVotos?operacion=ListarVotos">Listar</a></li>
              
          </ul>
      
      </li>
      
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          Partidos <b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
          <li><a href="./ControladorEL?operacion=Partido">Ingresar Partido</a></li>
          <li><a href="./ControladorEL?operacion=ListarPartidos">Listar</a></li>
          
        </ul>
      </li>
    </ul>
 
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="index.html">Cerrar Sesion</a></li>
      
    </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="">Administrativa</a></li>
      
    </ul>
  </div>
</nav>
    <center> <h1>Bienvenido al sistema Electoral</h1></center>
    </br>
    <center>
        <div class="row">
            <div class="col-md-12">
                <a href="./ControladorEL?operacion=ListarPersoneros"><img class="img-thumbnail" border='2' src="imagenes/1.png" width="200" height="250"></a>
                <a href="./ControladorEL?operacion=Personeros"><img class="img-thumbnail" border='2' src="imagenes/2.png" width="200" height="250"></a>
                
            </div>
            
            
        </div>
        <div class="row">
            <div class="col-md-12">
                <a href="./ControladorVotos?operacion=VotosM"><img class="img-thumbnail" border='2' src="imagenes/3.png" width="200" height="250"></a>
                <a href="./ControladorEL?operacion=VotosTotales"><img class="img-thumbnail" border='2' src="imagenes/4.png" width="200" height="250"></a>
                <a href="./ControladorVotos?operacion=ListarVotos"> <img class="img-thumbnail" border='2' src="imagenes/5.png" width="200" height="250"></a>
                
            </div>           
            
        </div>
        <div class="row">
            <div class="col-md-12">
                <a href="./ControladorEL?operacion=Partido"><img class="img-thumbnail" border='2' src="imagenes/6.png" width="200" height="250"></a>
              <a href="./ControladorEL?operacion=ListarPartidos"> <img class="img-thumbnail" border='2' src="imagenes/7.png" width="200" height="250"></a>
                
            </div>
            
            
        </div>
    </center>
    
    
         <!-- jQuery Version 1.11.1 -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
