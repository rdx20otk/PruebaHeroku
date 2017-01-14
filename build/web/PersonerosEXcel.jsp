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
      
    </head>
    <body>
      <%
            response.setHeader("Content-Disposition", "attachment;filename=\"¨Personeros.xls\"");
        %>
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
   
    
    </body>
</html>
