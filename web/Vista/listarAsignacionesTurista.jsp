<%-- 
    Document   : listarAsignacionesTurista
    Created on : 10/12/2021, 10:52:04 PM
    Author     : jazmi
--%>

<%@page import="ModeloDAO.AsignacionesDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Asignaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignaciones</title>
    </head>
    <body>
        <div class="container">
            <div class="col-sm">
                <div class="text-center">
                    <h1>Viajes Realizados</h1>
                </div>
                <br>
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th >ID</th>
                                <th>Fecha</th>
                                <th class="tablaEncabezado">Ciudad</th>
                                <th>Presupesto del Viaje</th>
                                <th>Pago con tarejta</th>
                                <th  class="tablaEncabezado" >Acciones</th>
                            </tr>
                        </thead>
                        <%
                            //AsignacionesDAO dao = new AsignacionesDAO();
                            //int IdTurista = Integer.parseInt((String)request.getAttribute("IdTurista"));        
                            //List<Asignaciones>list=dao.listar(IdTurista,"IdTurista");
                            //Iterator<Asignaciones>iter=list.iterator();
                            //Asignaciones asignacion=null;
                            //while (iter.hasNext()){
                                //asignacion = iter.next();
                        %>
                        <tbody>
                            <tr>
                                <td><%= //asignacion.getIdTurista() %></td>
                                <td><%= //asignacion.getIdCiudad()%></td>
                                <td><%= //asignacion.getPresupuestoViaje() %></td>
                                <td><%= //asignacion.getUsaTarjeta() %></td>
                                <td><%= //asignacion.getFecha() %></td>
                                <td class="tablaEncabezado" >
                                    <a href="Controlador?accion=editAsignaciones&Id=<%= //asignacion.getId() %>" class="btn btn-primary botonesTabla">&nbsp; Editar&nbsp;</a>
                                    <a href="Controlador?accion=deleteAsignaciones&Id=<%= //asignacion.getId() %>"class="btn btn-danger botonesTabla">Eliminar</a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
                <br>
            </div>
        </div>
    </body>
</html>
