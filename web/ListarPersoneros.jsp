<%-- 
    Document   : ListarPersoneros
    Created on : 08-ene-2017, 11:07:00
    Author     : Carlos J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"  import="java.util.*,app.entidad.*"%>
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
     
    <center><h1><font color="black"> Listado de Personeros</h1></br></center>
    <div class="container">
        <table border="1" class="table table-hover" bordercolor="black">
            <tr>
                <td colspan="10"> <h4>LISTA DE PERSONEROS LEGAL TITULAR</h4></td>
                <td colspan="6"> <h4>LISTA DE PERSONEROS LEGAL AUXILIAR</h4></td>
                <td colspan="6"> <h4>LISTA DE PERSONEROS TECNICO TITULAR</h4></td>
            </tr>
            <tr>
           
                <td><b>Departamento</b></td>
                <td><b>Provincia</b></td>
                <td><b>Distrito</b></td>
                <td><b>Org Politica</b></td>
                <td><b>DNI</b></td>
                <td><b>Apellido Parterno</b></td>
                <td><b>Apellido Materno</b></td>
                <td><b>Nombres</b></td>
                <td><b>Sexo</b></td>
                <td><b>Fecha</b></td>
                
                <td><b>DNI</b></td>
                <td><b>Apellido Parterno</b></td>
                <td><b>Apellido Materno</b></td>
                <td><b>Nombres</b></td>
                <td><b>Sexo</b></td>
                <td><b>Fecha</b></td>
                
                <td><b>DNI</b></td>
                <td><b>Apellido Parterno</b></td>
                <td><b>Apellido Materno</b></td>
                <td><b>Nombres</b></td>
                <td><b>Sexo</b></td>
                <td><b>Fecha</b></td>
            </tr>
            <%
                ArrayList<Personeros> personeros = (ArrayList) request.getAttribute("personeros");
                if (personeros != null && personeros.isEmpty()==false) {
                    for (Personeros p : personeros) {
                        out.println("<tr> <td>" + p.getDepartamento()+ "</td>"
                                +"<td>" + p.getProvincia() + "</td>"
                                + "<td>" + p.getDistrito() + "</td>"
                                + "<td>" + p.getOrgPolitica() + "</td>"
                                + "<td>" + p.getDniLT() + "</td>"
                                + "<td>" + p.getApPaternoLT() + "</td>"
                                + "<td>" + p.getApMaternoLT() + "</td>"
                                + "<td>" + p.getNombresLT() + "</td>"
                                + "<td>" + p.getSexoLT() + "</td>"
                                + "<td>" + p.getFechaLT() + "</td>"
                                
                             
                                
                                + "<td>" + p.getDniLA() + "</td>"
                                + "<td>" + p.getApPaternoLA() + "</td>"
                                + "<td>" + p.getApMaternoLA() + "</td>"
                                + "<td>" + p.getNombresLA() + "</td>"
                                + "<td>" + p.getSexoLA() + "</td>"
                                + "<td>" + p.getFechaLA() + "</td>"
                                 + "<td>" + p.getDniTT() + "</td>"
                                + "<td>" + p.getApPaternoTT() + "</td>"
                                + "<td>" + p.getApMaternoTT() + "</td>"
                                + "<td>" + p.getNombresTT() + "</td>"
                                + "<td>" + p.getSexoTT() + "</td>"                                                           
                                + "<td> " + p.getFechaTT()+ " </td> </tr>");
                      
                    }
                } else {
                    out.println("No hay datos de personeros");
                }
            %>
        </table></div>
    <center>
        <button type="submit" class="btn btn-primary" onclick="Funcion2()">Nuevo Registro</button>
       <button type="submit" class="btn btn-default" onclick="Funcion()">Exportar a Excel</button>
        
        <script>
            function Funcion(){
                location.href='./ControladorEL?operacion=ExportarExcel';
             
                 }         
        </script>
        <script>
            function Funcion2(){
                location.href='./ControladorEL?operacion=Personeros';
             
                 }         
        </script>
             
    </center>
    <!-- jQuery Version 1.11.1 -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
