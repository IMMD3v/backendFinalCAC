<%-- 
    Document   : actualizar
    Created on : 15 dic. 2023, 14:57:50
    Author     : Israel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Actualizar Orador</title>
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
            <h2>Actualizar Orador</h2>
            <form action="GestionOradorServlet" method="post">
                <input type="hidden" name="accion" value="confirmarActualizacion">
                <input type="hidden" name="id" value="${orador.idOrador}">

                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" value="${orador.nombre}" required>
                </div>

                <div class="form-group">
                    <label for="apellido">Apellido:</label>
                    <input type="text" class="form-control" id="apellido" name="apellido" value="${orador.apellido}" required>
                </div>

                <div class="form-group">
                    <label for="tema">Tema:</label>
                    <input type="text" class="form-control" id="tema" name="tema" value="${orador.tema}" required>
                </div>

                <div class="form-group">
                    <label for="fechaAlta">Fecha Alta:</label>
                    <input type="date" class="form-control" id="fechaAlta" name="fechaAlta" value="${orador.fechaAlta}" required>
                </div>

                <button type="submit" class="btn btn-primary">Actualizar</button>
                <a href="gestionOradores.jsp" class="btn btn-success">Volver</a>

            </form>
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
