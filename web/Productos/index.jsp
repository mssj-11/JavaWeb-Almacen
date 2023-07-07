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
        <!--  CDN Bootswatch  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/journal/bootstrap.min.css" integrity="sha384-QDSPDoVOoSWz2ypaRUidLmLYl4RyoBWI44iA5agn6jHegBxZkNqgm2eHb6yZ5bYs" crossorigin="anonymous">
        <title>Almacen</title>
    </head>
    <body>
        <nav class="navbar bg-danger navbar-dark">
            <div class="container-fluid">
              <a class="navbar-brand text-center" href="ProductosController"><h3>
                <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg" alt="Logo" width="60" height="60" class="d-inline-block">
                Productos</h3>
              </a>
            </div>
        </nav>
        
        
        
      <div class="container">
          <br>
              <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                  <a href="ProductosController?accion=nuevo" class="btn btn-success me-md-2">Nuevo producto</a>
              </div>
          <br>
          <table class="table table-striped table-bordered">
                <thead class="table-dark">
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Existencia</th>
                        <th class="text-center">Acciones</th>
                    </tr>
              </thead>
              <tbody>
                  <c:forEach var="producto" items="${lista}" >
                    <tr>
                        <td><c:out value="${producto.codigo}"/></td>
                        <td><c:out value="${producto.nombre}"/></td>
                        <td><c:out value="${producto.precio}"/></td>
                        <td><c:out value="${producto.existencia}"/></td>
                        <td class="align-center text-center">
                            <a class="btn btn-info" href="ProductosController?accion=modificar&id=<c:out value="${producto.id}"/>">Modificar</a>
                            <a class="btn btn-primary" href="ProductosCgontroller?accion=eliminar&id=<c:out value="${producto.id}"/>">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
              </tbody>
          </table>
          
      </div>
        
        
    </body>
</html>