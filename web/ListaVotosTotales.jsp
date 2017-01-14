<%-- 
    Document   : ListaVotosTotales
    Created on : 12-ene-2017, 19:52:02
    Author     : Carlos J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,app.entidad.*"%>
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
        
        <center><h1><font color="black"> Listado de Votos Totales</h1></center>
    <div class="container">
        <button type="text" class="btn btn-primary" onclick="FuncionVT()"> Nuevo</button>
        
        </br><table border="0" class="table table-hover" bordercolor="black">
            <tr>
                </br><td><b>Departamento</b></td>
                <td><b>Provincia</b></td>
                <td><b>Distrito</b></td>
                <td><b>Total de Votos</b></td>
                <td><b>Votos Nulos</b></td>
                <td><b>Votos en Blanco</b></td>
            </tr>
            <%
                ArrayList<VotosTotales> votos = (ArrayList) request.getAttribute("votos");
                if (votos != null && votos.isEmpty()==false) {
                    for (VotosTotales p : votos) {
                        out.println("<tr> <td>" + p.getDepartamento()+ "</td>"
                                +"<td>" + p.getProvincia() + "</td>"
                                + "<td>" + p.getDistrito() + "</td>"
                        + "<td>" + p.getVotosTotales() + "</td>"
                        + "<td>" + p.getVotosNulos() + "</td>"
                        + "<td>" + p.getVotosBlanco() + "</td>");
                    }
                } else {
                    out.println("No hay datos de Votos");
                }
            %>
        </table></div>
    <center>
        <script>
            function FuncionVT(){
                location.href='./ControladorEL?operacion=VotosTotales';
             
                 }         
        </script>
        <!-- jQuery Version 1.11.1 -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
