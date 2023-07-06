<%-- 
    Document   : index
    Created on : 5/07/2023, 02:44:35 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- Libreria para imp. ForEach -->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Almacen</title>
    </head>
    <body>
        <h1>Productos</h1>
        <a href="ProductosController?accion=nuevo">Nuevo producto</a><br/><br/>
        
        <table border="1" width="80%">
            <thead>
                <th>Codigo</th>
                <th>Nombre</th>
                <th>Precio</th>
                <th>Existencia</th>
                <th>Acciones</th>
            </thead>
            <tbody>
                <c:forEach var="producto" items="${lista}" >
                    <tr>
                        <td><c:out value="${producto.codigo}"></c:out></td>
                        <td><c:out value="${producto.nombre}"></c:out></td>
                        <td><c:out value="${producto.precio}"></c:out></td>
                        <td><c:out value="${producto.existencia}"></c:out></td>
                        <td>
                        <c:out value="${producto.id}"></c:out>
                        <c:out value="${producto.id}"></c:out>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
