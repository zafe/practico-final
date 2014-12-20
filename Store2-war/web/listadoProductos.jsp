<%-- 
    Document   : listadoProductos
    Created on : 20/12/2014, 16:39:51
    Author     : jose
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado Productos</h1>
        <table border="1"><tr><td>CODIGO</td><td>NOMBRE</td><td>PRECIO</td></tr>
        
            <c:forEach var="producto" items="${requestScope.datos}">
                <tr>
                    <td>${producto.codigo}</td>
                    <td>${producto.nombre}</td>
                    <td>${producto.precio}</td>
                </tr>
            </c:forEach>
            
        </table>
        <form action="ProductoController">
            Nombre:<br><input type="text" name="nombre"><br>
            Precio:<br><input type="text" name="precio"><br>
            <input type="submit">
        </form>
    </body>
</html>
