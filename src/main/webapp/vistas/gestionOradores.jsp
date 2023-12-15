<%-- 
    Document   : gestionOradores
    Created on : 15 dic. 2023, 14:25:46
    Author     : Israel
--%>

<%@page import="model.Orador"%>
<%@page import="java.util.List"%>
<%@page import="dao.OradoresDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gestión de Oradores</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/style.css">
    </head>
    <body>
        <div class="container">
            <header>
                <nav class="navbar navbar-expand-md navbar-dark bg-dark" aria-label="Eighth navbar example">
                    <div class="container">
                        <a class="navbar-brand" href="#">
                            <img src="../assets/images/codoacodo.png" alt="Logo de codo a codo" style="height: auto; width: 50px;" class="d-inline-block align-text-top">
                            Conferencia Tecno
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
            <h2 class="mt-3">Gestión de Oradores</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Tema</th>
                        <th>Fecha Alta</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        OradoresDAO oradoresDAO = new OradoresDAO();
                        List<Orador> oradores = oradoresDAO.obtenerTodos();

                        if (oradores != null && !oradores.isEmpty()) {
                            for (Orador orador : oradores) {
                    %>
                    <tr>
                        <td><%= orador.getIdOrador()%></td>
                        <td><%= orador.getNombre()%></td>
                        <td><%= orador.getApellido()%></td>
                        <td><%= orador.getTema()%></td>
                        <td><%= orador.getFechaAlta()%></td>
                        <td>
                            <div class="d-flex">
                                <!-- Formulario para actualizar -->
                                <form action="GestionOradorServlet" method="post" class="mr-2">
                                    <input type="hidden" name="accion" value="actualizar">
                                    <input type="hidden" name="id" value="<%= orador.getIdOrador()%>">
                                    <button type="submit" class="btn btn-warning btn-block">Actualizar</button>
                                </form>

                                <!-- Formulario para eliminar -->
                                <form action="GestionOradorServlet" method="post">
                                    <input type="hidden" name="accion" value="eliminar">
                                    <input type="hidden" name="id" value="<%= orador.getIdOrador()%>">
                                    <button type="submit" class="btn btn-danger btn-block">Eliminar</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="6">No hay oradores registrados.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <a href="../" class="btn btn-success">Volver</a>
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