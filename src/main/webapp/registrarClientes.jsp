<%@page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Saluda humano</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form action="crear.jsp" method="post">
                        <div class="form-group">
                            <label >Nombre completo</label>
                            <input type="text" class="form-control" name="nombre" placeholder="Nombre" required="required">
                        </div>
                        <div class="form-group">
                            <label >Apellido completo</label>
                            <input type="text" class="form-control" name="apellido" placeholder="Apellido" required="required">
                        </div>
                        <div class="form-group">
                            <label >Nro de documento de identidad</label>
                            <input type="text" class="form-control" name="ci" placeholder="Nro de documento" required="required">
                        </div>
                        <div class="form-group">
                            <label >Tipo de documento</label>
                            <input type="text" class="form-control" name="tipo_doc" placeholder="Tipo de documento" required="required">
                        </div>
                        <div class="form-group">
                            <label >Nacionalidad</label>
                            <input type="text" class="form-control" name="nacionalidad" placeholder="Nacionalidad" required="required">
                        </div>
                        <div class="form-group">
                            <label >Correo electrónico</label>
                            <input type="text" class="form-control" name="email," placeholder="Email" required="required">
                        </div>
                        <div class="form-group">
                            <label >Teléfono</label>
                            <input type="text" class="form-control" name="teléfono," placeholder="Teléfono" required="required">
                        </div>
                        <div class="form-group">
                            <label >Fecha de nacimiento</label>
                            <input type="date" class="form-control" name="fecha_nacimiento," placeholder="Fecha de nacimiento," required="required">
                        </div>
                        <button type="submit" name="Enviar" class="btn btn-primary">Guardar</button>
                    </form>
                </div>
            </div>

                        <%
                            if (request.getParameter("Enviar") != null) {
                                String nombre = request.getParameter("nombre");
                                String apellido = request.getParameter("apellido");
                                String ci = request.getParameter("ci");
                                String tipo_doc = request.getParameter("tipo_doc");
                                String nacionalidad = request.getParameter("nacionalidad");
                                String email = request.getParameter("email");
                                String fecha_nacimiento = request.getParameter("fecha_nacimiento");
                            }
                            
                        %>
                    
        </div>
    </body>
</html>
