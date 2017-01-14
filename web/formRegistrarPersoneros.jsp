<%-- 
    Document   : formRegistrarPersoneros
    Created on : 08-ene-2017, 9:31:39
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
    <Center> <h1>Registro de Personeros</h1> </center>
    <form action="ControladorEL">
        <center>        
        <div>
            <table>
                
                <tr>
                    <td><input type="text" name="txtDepartamento" class="form-control" placeholder="Departamento" required autofocus/></td>
                    <td><input type="text" name="txtProvincia" class="form-control" placeholder="Provincia" required autofocus/></td>
                    <td><input type="text" name="txtDistrito" class="form-control" placeholder="Distrito" required autofocus/></td>
                </tr>
                <tr>
                    <td colspan="3"><input type="text" name="txtOrgPolitica" class="form-control" placeholder="Organizacion Politica" required autofocus/></td>
                </tr>
                <tr>
                    <td colspan="3"><b>DATOS DEL PERSONERO LEGAL TITULAR</b><br/></td>
                </tr><br/>
                <tr>
                    <td>DNI</td>
                    <td><input type="text" name="txtdniLT" class="form-control" required autofocus/></td>
                </tr>
                <tr>
                    <td>Apellido Paterno</td>
                    <td><input type="text" name="txtapellidopLT" class="form-control" required autofocus/></td>
                    <td>Apellido Materno</td>
                    <td><input type="text" name="txtapellidomLT"  class="form-control" required autofocus/></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="txtnombresLT"  class="form-control" required autofocus/></td>
                    <td> Sexo</td>
                    <td><input type="text" name="txtsexoLT"  class="form-control" required autofocus/></td>
                    <td> Contraseña</td>
                    <td><input type="text" name="txtpassLT"  class="form-control" required autofocus/></td>
                </tr>
                <tr>
                    <td>Fecha Registro</td>
                    <td><input type="text" name="txtfechaLT" class="form-control" required autofocus/></td>
                </tr>
              <!--DATOS DEL PERSONERO ALTERNO-->
              <tr>
                  <td colspan="3"><b>DATOS DEL PERSONERO LEGAL ALTERNO</b></td>
                </tr>
                <tr>
                    <td>DNI</td>
                    <td><input type="text" name="txtdniLA" class="form-control"/></td>
                </tr>
                <tr>
                    <td>Apellido Paterno</td>
                    <td><input type="text" name="txtapellidopLA" class="form-control"/></td>
                    <td>Apellido Materno</td>
                    <td><input type="text" name="txtapellidomLA" class="form-control"/></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="txtnombresLA" class="form-control" /></td>
                    <td> Sexo</td>
                    <td><input type="text" name="txtsexoLA" class="form-control" /></td>
                    <td> Contraseña</td>
                    <td><input type="text" name="txtpassLA"  class="form-control"/></td>
                </tr>
                <tr>
                    <td>Fecha Registro</td>
                    <td><input type="text" name="txtfechaLA" class="form-control"/></td>
                </tr>
                
                <!--DATOS DEL PERSONERO TECNICO TITULAR-->
                <tr>
                    <td colspan="3"><b>DATOS DEL PERSONERO TECNICO TITULAR</b></td>
                </tr>
                <tr>
                    <td>DNI</td>
                    <td><input type="text" name="txtdniTT" class="form-control"/></td>
                </tr>
                <tr>
                    <td>Apellido Paterno</td>
                    <td><input type="text" name="txtapellidopTT" class="form-control" /></td>
                    <td>Apellido Materno</td>
                    <td><input type="text" name="txtapellidomTT" class="form-control"/></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="txtnombresTT" class="form-control"/></td>
                    <td> Sexo</td>
                    <td><input type="text" name="txtsexoTT" class="form-control" /></td>
                    <td> Contraseña</td>
                    <td><input type="text" name="txtpassTT"  class="form-control" /></td>
                </tr>
                <tr>
                    <td>Fecha Registro</td>
                    <td><input type="text" name="txtfechaTT" class="form-control" /></td>
                </tr>
                <tr>
                    <td><button type="submit" class=" btn btn-primary" name="operacion" value="RegistrarPersonero"> Registrar</button></td>
                </tr>
            </table>
            
        </div>
        </center>
        </form>
       
       
    

        <!-- jQuery Version 1.11.1 -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
