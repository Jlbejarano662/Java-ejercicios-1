
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
    <title>Página principal </title>
    </head>
    <body>
        
        <div class="container">
            <div class='row'>
                <center >
                    <h1>¡Bienvenidos Quileia!</h1><br>
                   <h2>Prueba para perfil Desarrollador Java Web</h2><br>
                   <h3>Presentada por:</h3>
                   <h3>Jazmin Llorena Bejarano Ibañez</h3>
               </center>               
            </div>

            <br>
            <div class="row">
                <center>
                    <div class='col-sm-6 botonesIndex' >
                        <a href="Controlador?accion=listarTuristas" class='btn btn-success btn-block'>Turistas</a>
                    </div>
                    <div class='col-sm-6 botonesIndex' >
                        <a href="Controlador?accion=listarCiudades" class='btn btn-success  btn-block'>Ciudades</a>
                    </div>                    
                </center>
            </div> <br>
        </div>
    </body>
</html>
