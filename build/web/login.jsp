<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html lang="en">
<head>
  
  <title>Welcome</title>
</head>

<body>
      <sql:setDataSource 
		var="usr"
			url="jdbc:mysql://localhost:3306/electoral"
			driver="com.mysql.jdbc.Driver"
			user="root" password="1234" 
		/>
		<sql:query dataSource="${usr}" var="result1" >
				select * from personerose where dniLT=? OR dniLA=? OR dniTT=?
                                
                              
				<sql:param value="${param.uname}"/>
                                <sql:param value="${param.uname}"/>
                                <sql:param value="${param.uname}"/>
                                 
		</sql:query>

		<c:forEach var="row1" items="${result1.rows}">
			<c:set var="flag1" scope="application" value="1"/>
		</c:forEach>

		<sql:query dataSource="${usr}" var="result2" >
			select * from personerose where dniLT=? and passLT=? OR dniLA=? and passLA=? OR dniTT=? and passTT=?
                        
			<sql:param value="${param.uname}"/>
			<sql:param value="${param.passwd}"/>
                        <sql:param value="${param.uname}"/>
			<sql:param value="${param.passwd}"/>
                        <sql:param value="${param.uname}"/>
			<sql:param value="${param.passwd}"/>
                        
		</sql:query>

		<c:forEach var="row2" items="${result2.rows}">
		<c:set var="flag2" scope="application" value="1"/>
		</c:forEach>

			
			<c:choose>
			<c:when test="${flag2 eq 1}">
			<c:forEach var="row2" items="${result2.rows}">
		    <c:set var="flag2" scope="application" value="1"/>
			
				<%  response.sendRedirect("principal.jsp");%>
			
		    </c:forEach>
			    <c:set var="flag1" scope="application" value="0"/>
				<c:set var="flag2" scope="application" value="0"/>
			
			</c:when>
			
			<c:when test="${flag1 eq 0}">
			
				<h1>
					El Usuario no esta Registrado:::...
				</h1>
                            <a href="index.html" >Regresar</a>
			
			
				<c:set var="user_flag" scope="application" value="0"/>
				<c:set var="flag" scope="application" value="0"/>
			</c:when>
			
			<c:otherwise>
			
				<h1>
					Contraseña Incorrecta::.
				</h1>
                            <a href="index.html" >Regresar</a>
			
				<c:set var="user_flag" scope="application" value="0"/>
				<c:set var="flag" scope="application" value="0"/>
			</c:otherwise>
			</c:choose>
		
</body>
</html>