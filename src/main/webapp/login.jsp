
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Sistema de Control de Puntaje</title>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row">
                <div class="col-sm">
                    <form>
                        <div class="form-group">
                            <label >Usuario</label>
                            <input type="text" class="form-control" name="Usuario" placeholder="Ingrese usuario" required="required">
                        </div>
                        <div class="form-group">
                            <label >Contraseña</label>
                            <input type="text" class="form-control" name="Contraseña" placeholder="Ingrese contraseña" required="required">
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Recordar</label>
                        </div>
                        <button type="Submit" class="btn btn-primary" name="Login">Login</button>

                    </form>
                </div>
            </div> 
        </div>
    </body>
    <% 
        if(request.getParameter("Login") !=null){
            String usuario=request.getParameter("Usuario");
            String contraseña=request.getParameter("Contraseña");
            
            HttpSession sesion=request.getSession();
            if(usuario.equals("admin") && contraseña.equals("admin")){
                sesion.setAttribute("logueado","1");
                sesion.setAttribute("usuario",usuario);
                response.sendRedirect("index.jsp");        
        }
        else{
            out.println("Ingrese sus datos para loguearse");
        }
        }
       
    %>
</html>
