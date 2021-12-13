<%-- 
    Document   : editAsignaciones
    Created on : 10/12/2021, 10:53:17 PM
    Author     : jazmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
    <title>Editar Turista</title>
    </head>
    <body>
        <% 
            CiudadesDAO dao = new CiudadesDAO();
            int Id = Integer.parseInt((String)request.getAttribute("Id"));
            Ciudades ciudad=(Ciudades)dao.list(Id);
        %>
        
        <section>
            <div class="container" >
                <div class="col-sm"   >
                    <div class="align-items-center text-center ">
                        <h1 >Editar Ciudad</h1>
                    </div><br>
                    <form action="Controlador" method="post" >
                        <input type="hidden" name="Id" id="Id" class="form-control form-control-sm" placeholder="Id" value="<%= ciudad.getId() %>" ><br>
                            <select name="TipoDocumento" id="TipoDocumento" class="custom-select form-control form-control-sm ">
                                <option value="">Tipo de documento</option>
                                <option value="CC">Cédula de ciudadania</option>
                                <option value="CE">Cédula de extranjería</option>
                                <option value="P">Pasaporte</option>
                                <option value="TI">Tarjeta de identidad</option>
                                <option value="O">Otro</option>
                            </select>
                        <input type="text" class="form-control form-control-sm" name="Nombre" id="Nombre" placeholder="Nombre" value="<%= ciudad.getNombre() %>" ><br>
                        <input type="number" class="form-control form-control-sm" name="CantidadHabitantes" id="CantidadHabitantes" placeholder="Cantidad de habitantes" value="<%= ciudad.getCantidadHabitantes() %>"><br>
                        <input type="text" class="form-control form-control-sm" name="SitioTuristico" id="SitioTuristico" placeholder="Sitio más turístico" value="<%= ciudad.getSitioTuristico() %>"><br> 
                        <input type="text" class="form-control form-control-sm" name="HotelReservado" id="HotelReservado" placeholder="Hotel más reservado" value="<%= ciudad.getHotelReservado() %>"><br>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                                <input type="submit" name="accion"  value="Editar Ciudad" class="btn btn-success btn-block"><br>
                            </div>
                            <div class="col-sm-4">
                            </div>
                        </div>
                    </form><br>
                </div>
            </div>
        </section>
    </body>
</html>