<%-- 
    Document   : Turistas
    Created on : 7/12/2021, 11:28:11 AM
    Author     : Admonsis
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Turistas"%>
<%@page import="ModeloDAO.TuristasDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
    <title>Turistas</title>
    </head>
    <body>
        <section>
            <div class='container'>
                <div class="col-sm">
                    <div class="align-items-center text-center ">
                        <h1> Turistas</h1>
                    </div><br>
                    <div class="table-responsive">
                        <table class="table table-striped ">
                        <thead class="thead-dark">
                            <tr>
                                <th>ID</th>
                                <th>Nombre completo</th>
                                <th>Fecha de nacimiento</th>
                                <th>Documento</th>
                                <th>Tipo de docuemnto</th>
                                <th>Frecuencia de viaje</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <%
                            TuristasDAO dao = new TuristasDAO();
                            List<Turistas>list=dao.listar();
                            Iterator<Turistas>iter=list.iterator();
                            Turistas turista=null;
                            while (iter.hasNext()){
                                turista = iter.next();
                        %>
                        <tbody>
                            <tr>
                                <td><%= turista.getId() %></td>
                                <td><%= turista.getNombreCompleto() %></td>
                                <td><%= turista.getFechaNacimiento()%></td>
                                <td><%= turista.getDocumento() %></td>
                                <td><%= turista.getTipoDocumento() %></td>
                                <td><%= turista.getFrecuenciaViaje() %></td>
                                <td>
                                    <a href="Controlador?accion=editTuristas" class="btn btn-primary ">&nbsp; Editar&nbsp;</a>
                                    <a href="Controlador?accion=deleteTuristas"class="btn btn-danger ">Eliminar</a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                    </div>
                    
                    <div>
                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                               <a href="Controlador?accion=addTuristas" class="btn btn-success btn-block">Agregar</a>
                            </div>
                            <div class="col-sm-4">
                            </div>
                        </div>
                    </div>
     </div>
                                        
            </div>
        </section>
    </body>
</html>
