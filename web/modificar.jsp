<%-- 
    Document   : modificar
    Created on : 08-may-2017, 0:47:03
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
        <title>Modificar</title>
    </head>
    
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "");
            Statement s = conexion.createStatement();
            
            s.execute("SELECT * FROM screens WHERE screen_id = \"" + request.getParameter("Id") + "\"");
          
            
        %>
        
        <div style = "width: 45%">
            <form action="mod.jsp" method = "POST">
                Id <input type="hidden" name="Id" value="<%= request.getParameter("Id") %>" /> 
                Modelo <input type="text" name="modelo" value="<%= request.getParameter("modelo") %>" /> </br>
                Marca <input type="text" name="marca" value="<%= request.getParameter("marca") %>" /> </br>
                Precio<input type= "text"  name="precio" value="<%= request.getParameter("precio") %>"  /> </br>
                Descripcion <input type="text" name="descripcion" value= "<%= request.getParameter("descripcion") %>" /> </br>
                <input class ="btn btn-default" type="submit" value="Registrar"/> <br>
            </form>
        </div>
        <%
            conexion.close();
        %>
    </body>
</html>
