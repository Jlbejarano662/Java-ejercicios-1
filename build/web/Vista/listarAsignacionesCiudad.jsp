

<%@page import="Modelo.Turistas"%>
<%@page import="ModeloDAO.TuristasDAO"%>
<%@page import="Modelo.Ciudades"%>
<%@page import="ModeloDAO.CiudadesDAO"%>
<%@page import="ModeloDAO.AsignacionesDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Asignaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
        <title>Asignaciones</title>
    </head>
    <body>
        <div class="container">
            <div class="col-sm">
                <div class="text-center">
        <%
            AsignacionesDAO dao = new AsignacionesDAO();
            int IdCiudad = Integer.parseInt((String)request.getAttribute("Id"));        
            List<Asignaciones>list=dao.list(IdCiudad,"IdCiudad");
            Iterator<Asignaciones>iter=list.iterator();
            Asignaciones asignacion=null;
        
        %>

                    <h1>Viajes Realizados</h1>

                </div>
                <br>             
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th >ID</th>
                                <th>Fecha</th>
                                <th >Turista</th>
                                <th>Presupuesto</th>
                                <th>Pago con tarejta</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                            <tr>
                                <%
                                while (iter.hasNext()){
                                    asignacion = iter.next();
                                %>
                                    <td><%= asignacion.getId() %></td>
                                    <td><%= asignacion.getFecha() %></td>
                                <%            
                                    TuristasDAO turistasDAO = new TuristasDAO();
                                    List<Turistas>lista1=turistasDAO.listar();
                                    Iterator<Turistas>iterTuristas=lista1.iterator();
                                    Turistas turista=null;
                                    while (iterTuristas.hasNext()){
                                        turista = iterTuristas.next();
                                        if ((turista.getId())==(asignacion.getIdTurista())){
                                %>
                                    <td><%= turista.getNombreCompleto()%></td>
                                <% 
                                        }
                                    }
                                %>
                                    <td>$ <%= asignacion.getPresupuestoViaje() %></td>
                                    <td>
                                    <%
                                        if (asignacion.getUsaTarjeta()==true){
                                    %>
                                        Si
                                    <% 
                                        }
                                        else{
                                    %>
                                        No
                                    <% 
                                        }

                                    %>
                                    </td>
                              
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-4">
                    </div>
                    <div class="col-sm-4">
                        <a href="Controlador?accion=listarCiudades" class="btn btn-danger btn-block">Regresar</a><br>
                    </div>
                    <div class="col-sm-4">
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>