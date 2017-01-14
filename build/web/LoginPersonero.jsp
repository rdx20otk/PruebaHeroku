<%-- 
    Document   : LoginPersonero
    Created on : 13-ene-2017, 4:04:57
    Author     : Carlos J
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<meta charset="utf-8" />
        
    <link href="css/bootstrap.min.css" rel="stylesheet">
      <!--  <script type="text/javascript" src="bootstrap\js\bootstrap.js"></script>  
        <script type="text/javascript" src="bootstrap\js\funcoes.js"></script>  
        <script type="text/javascript" src="bootstrap\js\jquery.js"></script>  -->
    <style>
    #Dprincipal{
        width: 300px;
        height: 500px;
        margin-top: 50px;
        border-radius: 10px;
     
    }
    #Fprincipal{
     margin-top:30px;
    }

    </style>
</head>

<body style="background-color:#0B0B61">

    <div class="container" style="background-color:white" id="Dprincipal">
        <center><img class="img-thumbnail" src="imagenes/pers.png" width="200" height="200"/></center>
        <div>
            <form class="form-signin" id="Fprincipal" action="login.jsp" method="post">
                <h4 style="color:cornflowerblue">Ingresar al sistema</h4>
               <input type="text" class="form-control" placeholder="DNI" name="uname" required autofocus />
                <input type="password" class="form-control" placeholder="Contraseña" name="passwd" required/>
                <br />
                <button type="submit" class="btn btn-lg btn-primary btn-block">Ingresar</button>

            </form>
            <br />
            <div>
               <center><label>Olvido su contraseña</label></center> 
            </div>
        </div>
        </div>

  
   
</body>
</html>
