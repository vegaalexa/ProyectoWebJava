<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css" integrity="sha384-X8QTME3FCg1DLb58++lPvsjbQoCT9bp3MsUU3grbIny/3ZwUJkRNO8NPW6zqzuW9" crossorigin="anonymous">
    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
    <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
    </svg>
    <title>SISTEMA WEB / PAGINA PRINCIPAL</title>
</head>
<body>
    <%
        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("logueado") == null || sesion.getAttribute("logueado").equals("0")) {
            response.sendRedirect("login.jsp");
        }
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
    %>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Supermercado</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarColor01">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Inicio
                            <span class="visually-hidden">(current)</span>
                        </a>
                    
                    </li>
                    <li class="nav-item">
                        <a href="registrarClientes.jsp" class="nav-link" href="#">Clientes</a>
                    </li>
                    
                    <li class="nav-item">
                        <a href="premios.jsp" class="nav-link" href="#">Premios</a>
                    </li>
                    <li class="nav-item">
                        <a href="puntaje.jsp" class="nav-link" href="#">Puntajes</a>
                    </li>
                </ul>
                <form class="d-flex" action="logout.jsp">
                    <a><i class="bi bi-person-circle"></i> <%= sesion.getAttribute("usuario")%></a>
                    <button class="btn btn-danger my-2 my-sm-0 ml-2" type="submit">Log out</button>
                </form>
            </div>
       </div>
    </nav>

</body>
</html>
