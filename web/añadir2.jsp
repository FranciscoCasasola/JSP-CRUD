<%-- 
    Document   : añadir2
    Created on : 07-may-2017, 23:07:28
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
        <title>Añadir</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" >
        <link rel="stylesheet" href="css/bootstrap.css" >
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "");
            Statement s = conexion.createStatement();
            

            String insercion= "INSERT INTO screens(screen_id, model, brand, price, description) VALUES ('"
					+ request.getParameter("id") + "', '"
					+ request.getParameter("modelo") + "', '"
					+ request.getParameter("marca") + "', '"
					+ Integer.valueOf(request.getParameter("precio")) + "' ,'"
					+ request.getParameter("descripcion") + "')";
            s.execute(insercion);
            
            s.close();
        %>
        
        
        <div class="alert alert-success" role="alert">Monitor añadido correctamente!</div>
        <div> <a class ="btn btn-default" href = "index.jsp"> Volver</a>
    </body>
</html>
