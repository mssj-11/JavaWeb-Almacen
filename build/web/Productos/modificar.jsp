<%-- 
    Document   : modificar
    Created on : 5/07/2023, 02:46:02 PM
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
        <title>Modificar</title>
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
        
        
	<div class="container"><br>
		<div class="title text-center">
			<h1>Modificar producto</h1>
		</div><br>
		
		<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6 center">
			<form class="form" action="ProductosController?accion=actualizar" method="POST">
				<div class="mb-3">
					<label for="id" class="form-label">Id</label>
					<input class="form-control" id="id" name="id" type="hidden" value="<c:out value="${producto.id}"/>">
				</div>
                                <div class="mb-3">
					<label for="codigo" class="form-label">Codigo:</label>
					<input class="form-control" id="codigo" name="codigo" type="text" value="<c:out value="${producto.codigo}"/>" placeholder="Ingresa el codigo">
				</div>
				<div class="mb-3">
					<label for="nombre" class="form-label">Nombre:</label>
					<input class="form-control" id="nombre" name="nombre" type="text" value="<c:out value="${producto.nombre}"/>" placeholder="Ingresa el nombre">
				</div>
				<div class="mb-3">
					<label for="precio" class="form-label">Precio:</label>
					<input class="form-control" id="precio" name="precio" type="text" value="<c:out value="${producto.precio}"/>" placeholder="Ingresa precio">
				</div>
                                <div class="mb-3">
					<label for="existencia" class="form-label">Existencia:</label>
					<input class="form-control" id="existencia" name="existencia" type="text" value="<c:out value="${producto.existencia}"/>" placeholder="Ingresa num. existencia">
				</div>
				<br>
				<button type="submit" class="btn btn-danger">Guardar</button>
				<a href="ProductosController" class="btn btn-dark">Cancelar</a>
			</form>
		</div>
		</div>
		<div class="col-md-3"></div>
	</div>
<br/>
                                
                                
        
    </body>
</html>