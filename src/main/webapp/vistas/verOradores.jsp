<%-- 
    Document   : verOradores
    Created on : 13 dic. 2023, 18:17:33
    Author     : Israel
--%>

<%@page import="java.util.List"%>
<%@page import="model.Orador"%>
<%@page import="dao.OradoresDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <header>
                <nav class="navbar navbar-expand-md navbar-dark bg-dark" aria-label="Eighth navbar example">
                    <div class="container">
                        <a class="navbar-brand" href="#">
                            <img src="../assets/images/codoacodo.png" alt="Logo de codo a codo" style="height: auto; width: 50px;" class="d-inline-block align-text-top">
                            Conf Bs As
                        </a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample07">
                            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">La Conferencia</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#lasAreas">Las Areas</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#contactUs">Contacto</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-success" href="../tickets/tickets.html">Comprar Tickets</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <div class="container mt-5">
                <h2>Lista de Oradores</h2>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Tema</th>
                            <th>Fecha Alta</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            // Crear una instancia de OradoresDAO para acceder a la base de datos
                            OradoresDAO oradoresDAO = new OradoresDAO();

                            // Obtener la lista de oradores desde la base de datos
                            List<Orador> oradores = oradoresDAO.obtenerTodos();

                            if (oradores != null && !oradores.isEmpty()) {
                                // Iterar sobre la lista de oradores y mostrar sus datos en la tabla
                                for (Orador orador : oradores) {
                        %>
                        <tr>
                            <td><%= orador.getIdOrador()%></td>
                            <td><%= orador.getNombre()%></td>
                            <td><%= orador.getApellido()%></td>
                            <td><%= orador.getTema()%></td>
                            <td><%= orador.getFechaAlta()%></td>
                        </tr>
                        <%
                            }
                        } else {
                        %>
                        <tr>
                            <td colspan="5">No hay oradores registrados.</td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
                <!-- Botón para volver al índice -->
                <a href="../index.html" class="btn btn-success">Volver</a>   
            </div>
            <footer class="py-3 my-4 darkFooter">
                <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                    <li class="nav-item"><a href="../index.html#contactUs" class="nav-link px-2">Contacto</a></li>
                    <li class="nav-item"><a href="../index.html#lasAreas" class="nav-link px-2">Las Areas</a></li>
                    <li class="nav-item"><a href="../tickets/tickets.html" class="nav-link px-2">Comprar Tickets</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2">Acerca de nosotros...</a></li>
                </ul>
                <p class="text-center">© 2023 Israel Montenegro Dev.</p>
            </footer>
        </div>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/redirect.js"></script>
    </body>
</html>
