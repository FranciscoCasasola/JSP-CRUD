<%-- 
    Document   : index.jsp
    Created on : 07-may-2017, 22:54:43
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
        <title>Screens</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
        
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "");
            Statement s = conexion.createStatement();
            
            ResultSet lista = s.executeQuery ("SELECT * FROM screens");
            
        %>
        
        <div>
            <h3>
            <a class= "btn-primary" href = "añadir.jsp"> Añadir Monitor</a>
            </h3>
        </div>
        
        
         <div>
            
            <h1>Lista de Monitores</h1>
            
            
            <table class="table table-striped" style = "width: 75%">
                
                <th>Id</th>
                <th>Modelo</th>
                <th>Marca</th>
                <th>Precio</th>
                <th>Descripción</th>
                <th></th>
                <th></th>
                
                <%
                    while (lista.next()) {
                        out.println("<tr><td>");
                        out.println(lista.getString("screen_id") + "</td>");
                        out.println("<td>" + lista.getString("model") + "</td>");
                        out.println("<td>" + lista.getString("brand") + "</td>");
                        out.println("<td>" + lista.getString("price") + " €" + "</td>");
                        out.println("<td>" + lista.getString("description") + "</td>");
                %>
                <td>
                    <form method="GET" action="modificar.jsp" >
                        <input type="hidden" name="Id" value="<%=lista.getString("screen_id")%>">
                        <input type="hidden" name="modelo" value="<%=lista.getString("model")%>">
                        <input type="hidden" name="marca" value="<%=lista.getString("brand")%>">
                        <input type="hidden" name="precio" value="<%=lista.getString("price")%>">
                        <input type="hidden" name="descripcion" value="<%=lista.getString("description")%>">
                        <button class="btn btn-primary" type="submit"> <span class = "glyphicon glyphicon-pencil"> Modificar</span></button>
                    </form>
                </td>
                <td>
                    <form method="get" action="borrar.jsp">
                        <input type="hidden" name="Id" value="<%=lista.getString("screen_id")%>">
                        <button  id="<%=lista.getString("screen_id")%>"  class="btn btn-danger" ><span class = "glyphicon glyphicon-remove-sign"> Eliminar</span></button>
                    </form>
                </td>
                <%
                    }  
                    conexion.close();
                %>
            </table>
        </div>


    </body>
</html>
