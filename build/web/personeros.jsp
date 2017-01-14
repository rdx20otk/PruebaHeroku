<%-- 
    Document   : personeros
    Created on : 07-ene-2017, 22:37:22
    Author     : Carlos J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     
        <cener><h1>Nuevo DATO DE PRUEBA</h1></centro>
        <div class="container"><table class="table table-hover">
            <form action="ControladorEL">
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="txtNombre"/></td>
                </tr>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="txtDescripcion"/></td>
                </tr>
                
                <tr>
                    <td><input type="submit" class=" btn btn-primary" name="operacion" value="Registrar"/></td>
                    <td><input type="submit" class="btn btn-primary" name="operacion" value="Cancelar"/></td>
                </tr>
                </form>
    </table></div>
        <a href="./ControladorEL?operacion=Menu">ir al menu</a>
    </body>
</html>
