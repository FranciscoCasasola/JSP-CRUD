<%-- 
    Document   : borrar
    Created on : 08-may-2017, 1:43:32
    Author     : PcCom
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <link rel="stylesheet" href="css/bootstrap.css" >
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "");
            Statement s = conexion.createStatement();
            
            s.execute ("DELETE FROM screens WHERE screen_id=" + request.getParameter("Id"));
            
        %>
        
        <div class="alert alert-warning" role="alert">Monitor añadido correctamente!</div>
        <div>
            <a href = "index.jsp"<h2>Se ha borrado Correctamente!</h2></a>
        </div>
    </body>
</html>
