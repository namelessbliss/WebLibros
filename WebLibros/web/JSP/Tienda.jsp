
<%@page import="Controlador.Servicio"%>
<%@page import="Modelo.Libro"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../CSS/Estilo-general.css"/>
        <link rel="stylesheet" href="../CSS/Estilo-tienda.css"/>
        <script src="../JS/JS-Tienda.js"></script>
        <title>Tienda</title>
    </head>
    <body>
        <div class="Cabezera">
        <h1>Web Libros</h1>
        <p>Explora y descubre nuevas historias</p>
        </div>
        
        <div class="BarraSuperior" id="miBarraSuperior">
        <a href="#" class="activo">Inicio</a>
        <a href="#">Nuevos libros</a>
        <a href="#">Contacto</a>
        <a href="#">Acerca de nosotros</a>
        <a href="javascript:void(0);" class="icono" onclick="responsiveFuncion()">&#9776;</a>
      </div>
        
        <div class="Contenedor">
            <div class="Contenido">
         <%
             Servicio servicio = new Servicio();
            servicio.añadirLibros();
            ArrayList<Libro> listaLibros = servicio.getListaLibro();
            for (int i=0; i<listaLibros.size(); i++){
            
        %>
        <div class="Item">
            <img src="../Imagenes/Portadas/<%=listaLibros.get(i).getPortada()%>" class="Portada"/>
            <div class="Detalle">
                <p>Título: <%=listaLibros.get(i).getNombre()%></p>
                <p>Género: <%=listaLibros.get(i).getGenero()%></p>
                <p>Precio: <%=listaLibros.get(i).getPrecio()%></p>
        </div>
        </div>
            <% } %>
        
        </div>
        
        <div class="Sidebar">
            
        </div>
        </div>
        </body>
        </html>