
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
    <title>Agregar Ciudad</title>
    </head>
    <body>

        <section>
            <div class="container" >
                <div class="col-sm"   >
                    <div class="align-items-center text-center ">
                        <h1 >Agregar Ciudad</h1>
                    </div><br>
                    <form action="Controlador" method="post">
                        <input type="text" class="form-control form-control-sm" name="Nombre" id="Nombre" placeholder="Nombre"><br>
                        <input type="number" class="form-control form-control-sm" name="CantidadHabitantes" id="CantidadHabitantes" placeholder="Cantidad de habitantes"><br>
                        <input type="text" class="form-control form-control-sm" name="SitioTuristico" id="SitioTuristico" placeholder="Sitio más turístico"><br> 
                        <input type="text" class="form-control form-control-sm" name="HotelReservado" id="HotelReservado" placeholder="Hotel más reservado"><br>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="submit" name="accion"  value="Agregar Ciudad" class="btn btn-success btn-block"><br>
                            </div>
                            <div class="col-sm-6">
                                <a href="Controlador?accion=listarCiudades" class="btn btn-danger btn-block">Regresar</a><br>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>