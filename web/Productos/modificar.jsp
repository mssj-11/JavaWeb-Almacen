<%-- 
    Document   : modificar
    Created on : 5/07/2023, 02:46:02 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Almacen</title>
    </head>
    <body>
        <h1>Modificar Registro</h1><br/>
        <form action="" method="POST" autocomplete="off">
            <label>Id</label>
            <input id="id" name="id" type="hidden" />
            <br/><br/>
            <label>Codigo</label>
            <input id="codigo" name="codigo" type="text" />
            <br/><br/>
            <label>Nombre</label>
            <input id="nombre" name="nombre" type="text" />
            <br/><br/>
            <label>Precio</label>
            <input id="precio" name="precio" type="text" />
            <br/><br/>
            <label>Existencia</label>
            <input id="existencia" name="existencia" type="text" />
            <br/><br/>
            <button id="guardar" name="guardar" type="submit">Guardar</button>
            <a href="index.jsp">Cancelar</a>
        </form>
    </body>
</html>
