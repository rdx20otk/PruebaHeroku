<%-- 
    Document   : formVotosTotales
    Created on : 12-ene-2017, 0:43:12
    Author     : Carlos J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    <center> <h1>Ingresar Votos Totales </h1></center></br>
    <form action="ControladorVotos">
        <center>
            <table>
                <tr>
                    <td><input type="text" name="txtDep" class="form-control" placeholder="Departamento" required autofocus/></td>
                    <td><input type="text" name="txtPro" class="form-control" placeholder="Provincia" required autofocus/></td>
                    <td><input type="text" name="txtDist" class="form-control" placeholder="Distrito" required autofocus/></td>
                </tr>
                <tr>
                    <td></br>Votos Totales</td>
                    <td></br><input type="text" name="txtVT" class="form-control" required autofocus/></br></td>
                </tr>
                <tr>
                    <td>Votos Nulos</td>
                    <td><input type="text" name="txtVN" class="form-control" required autofocus/></br></td>
                </tr>
                <tr>
                    <td>Votos Blanco</td>
                    <td><input type="text" name="txtVB" class="form-control" required autofocus/></br></td>
                </tr>
                 <tr>
                    <td><button type="submit" class=" btn btn-primary" name="operacion" value="GuardarVotosT" onclick="alert('¿Seguro que desea guardar este dato?')">Guardar</button></td>
                    <td><button type="submit" class=" btn btn-danger" name="operacion" value="Cancelar"> Cancelar</button></td>
                </tr>
                
            </table>
        </center>
    </form>
  <!-- jQuery Version 1.11.1 -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
