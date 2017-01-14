<%-- 
    Document   : Respuesta
    Created on : 08-ene-2017, 13:46:09
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
        <div id="contenido">
    <center>  <h1>CONSTANCIA DE REGISTRO DE PERSONEROS</h1></center>
    <center><h5>Constancia generada el dia <%=new java.text.SimpleDateFormat("dd/MM/yyyy").format( new java.util.Date())%> a horas <%=new java.text.SimpleDateFormat("HH:mm:ss").format( new java.util.Date())%></h5></center>
    <p> Los personeros han sido registrados exitosamente</p>
    
            <%
                String departamento=request.getParameter("txtDepartamento");
                 String provincia=request.getParameter("txtProvincia");
                  String distrito=request.getParameter("txtDistrito");
                   String orgPolitica=request.getParameter("txtOrgPolitica");
                   
                   String dniLT=request.getParameter("txtdniLT");
                     String apPaternoLT=request.getParameter("txtapellidopLT");
                    String apMaternoLT=request.getParameter("txtapellidomLT");
                    String nombresLT=request.getParameter("txtnombresLT");
                    String sexoLT=request.getParameter("txtsexoLT");
                    String fechaLT=request.getParameter("txtfechaLT");
                    
                     String dniLA=request.getParameter("txtdniLA");
                     String apPaternoLA=request.getParameter("txtapellidopLA");
                    String apMaternoLA=request.getParameter("txtapellidomLA");
                    String nombresLA=request.getParameter("txtnombresLA");
                    String sexoLA=request.getParameter("txtsexoLA");
                    String fechaLA=request.getParameter("txtfechaLA");
                    
                     String dniTT=request.getParameter("txtdniTT");
                     String apPaternoTT=request.getParameter("txtapellidopTT");
                    String apMaternoTT=request.getParameter("txtapellidomTT");
                    String nombresTT=request.getParameter("txtnombresTT");
                    String sexoTT=request.getParameter("txtsexoTT");
                    String fechaTT=request.getParameter("txtfechaTT");
                    
                    
                  
                     out.println("Organizacion Politica      : <b>" +orgPolitica +"</b></br>");
                     out.println("Departamento               : <b>" +departamento+"</b></br>" );
                     out.println("Provincia                  : <b>" +provincia+"</b></br>");
                     out.println("Distrito                   : <b>" +distrito+"</b></br>");
                     out.println("</br>");
                 
                     out.println("<h6>Informacion sobre los personeros</h6>");                     
                     out.println("<h3>PERSONERO LEGAL TITULAR</h3> </br> ");
                    
                     out.println(" Apellidos y Nombres         <b>"+apPaternoLT+" "+apMaternoLT+" "+nombresLT+"</b></br>" );
                     out.println("Documento de identidad       <b>"+dniLT+"</b></br>");
                     out.println("Sexo                         <b>"+sexoLT+"</b></br>");
                     out.println("Fecha de registro            <b>"+fechaLT+"</b></br>" );
                   
                     
                     out.println("<h3>PERSONERO LEGAL ALTERNO</h3> </br> ");
                     out.println(" Apellidos y Nombres         <b>"+apPaternoLA+" "+apMaternoLA+" "+nombresLA+"</b></br>" );
                     out.println("Documento de identidad       <b>"+dniLA+"</b></br>");
                     out.println("Sexo                         <b>"+sexoLA+"</b></br>");
                     out.println("Fecha de registro            <b>"+fechaLA+"</b></br>" );
                     
                     out.println("<h3>PERSONERO TECNICO TITULAR</h3> </br> ");
                     out.println(" Apellidos y Nombres         <b>"+apPaternoTT+" "+apMaternoTT+" "+nombresTT+"</b></br>" );
                     out.println("Documento de identidad       <b>"+dniTT+"</b></br>");
                     out.println("Sexo                         <b>"+sexoTT+"</b></br>");
                     out.println("Fecha de registro           <b>"+fechaTT+"</b></br>" );
                     
             
            %>
             </div>   
        
         <a href="./ControladorEL?operacion=Menu">ir al menu</a>
         
       
 <script language="Javascript">
  function Imprimir_Contenido(nombre)
  {
  var ficha = document.getElementById(nombre);
  var Ventana_Impresion = window.open(' ', 'popimpr');
  Ventana_Impresion.document.write( ficha.innerHTML );
  Ventana_Impresion.document.close();
  Ventana_Impresion.print( );
  Ventana_Impresion.close();
  } 
</script>

               
         <input type="button" value="Exportar a Documento" name="ExportarDoc" onclick="javascript:Imprimir_Contenido('contenido')" />
    </body>
</html>
