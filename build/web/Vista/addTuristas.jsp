<%-- 
    Document   : addTuristas
    Created on : 7/12/2021, 12:58:52 PM
    Author     : Admonsis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Agregar Turista</title>
    </head>
    <body>

        <section>
            <div class="container" >
                <div class="col-sm-2"></div>
                <div class="col-sm-8 registro"   >
                    <div class="align-items-center text-center ">
                        <h1 >Registrar Turista</h1>
                    </div><br>
                    <form action="/registro" method="post" onsubmit="">
                        <input type="text" class="form-control form-control-sm" name="nombre" id="nombre" placeholder="Nombre completo"><br>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="number" name="documento" id="documento" class="form-control form-control-sm" placeholder="Documento">
                            </div>
                            <div class="col-sm-6">
                                <select name="tipo" id="tipo" class="custom-select form-control form-control-sm ">
                                    <option value="">Tipo de documento</option>
                                    <option value="CC">Cédula de ciudadania</option>
                                    <option value="CE">Cédula de extranjería</option>
                                    <option value="P">Pasaporte</option>
                                    <option value="TI">Tarjeta de identidad</option>
                                    <option value="O">Otro</option>
                                </select>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="time" class="form-control form-control-sm " name="nacimiento" id="nacimiento" placeholder="Fecha de Nacimiento"    ><br>
                            </div>
                                <div class="col-sm-6">
                                <input type="number" class="form-control form-control-sm " name="frecuenciaViaje" id="frecuenciaViaje" placeholder="Frecuncia de viaje mensual"><br>
                            </div>
                        </div>
                    
                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                                <button type="submit" name="botonRegistrarse" id="botonRegistrarse" class="btn btn-danger btn-block">Registrar</button><br>
                            </div>
                            <div class="col-sm-4">
                            </div>
                        </div>

                    </form>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </section>
    </body>
</html>
