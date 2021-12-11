<%-- 
    Document   : Ciudades
    Created on : 7/12/2021, 11:28:37 AM
    Author     : Admonsis
--%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Ciudades"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CiudadesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
    <title>Ciudades</title>
    </head>
    <body>
        <section>
            <div class='container'>
                <div class="col-sm">
                    <div class="align-items-center text-center ">
                        <h1>Ciudades Registrados</h1>
                    </div><br>
                    <div class="table-responsive">
                        <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th >ID</th>
                                <th class="tablaEncabezado">Nombre</th>
                                <th>Cantidad de habitantes</th>
                                <th>Sitio más turístico</th>
                                <th>Hotel más reservado</th>
                                <th  class="tablaEncabezado" >Acciones</th>
                            </tr>
                        </thead>
                        <%
                            CiudadesDAO dao = new CiudadesDAO();
                            List<Ciudades>list=dao.listar();
                            Iterator<Ciudades>iter=list.iterator();
                            Ciudades ciudad=null;
                            while (iter.hasNext()){
                                ciudad = iter.next();
                        %>
                        <tbody>
                            <tr>
                                <td><%= ciudad.getId() %></td>
                                <td><%= ciudad.getNombre() %></td>
                                <td><%= ciudad.getCantidadHabitantes()%></td>
                                <td><%= ciudad.getSitioTuristico() %></td>
                                <td><%= ciudad.getHotelReservado() %></td>
                                <td class="tablaEncabezado" >
                                    <a href="Controlador?accion=editCiudades&Id=<%= ciudad.getId() %>" class="btn btn-primary botonesTabla">&nbsp; Editar&nbsp;</a>
                                    <a href="Controlador?accion=deleteCiudades&Id=<%= ciudad.getId() %>"class="btn btn-danger botonesTabla">Eliminar</a>
                                    <a href="Controlador?accion=viajesTuristas&Id=<%= ciudad.getId() %>"class="btn btn-warning botonesTabla ">&nbsp; Viajes&nbsp;</a>                                   
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                    </div>
                    <br>
                    <div>
                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                               <a href="Controlador?accion=addCiudades" class="btn btn-success btn-block">Agregar ciudad</a>
                            </div>
                            <div class="col-sm-4">
                            </div>
                        </div>
                    </div>
                </div>
               <br>                         
            </div>
        </section>
    </body>
</html>
