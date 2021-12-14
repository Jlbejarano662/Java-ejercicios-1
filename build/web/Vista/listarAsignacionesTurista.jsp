

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
                    <h1>Viajes Realizados</h1>
                </div>
                <br>
                    <% 
                    String mensaje =(String)request.getAttribute("mensaje");
                    //errores
                    if (mensaje=="Se supera el limite de 5 viajeros por dia"){
                    %>
                        <div class="alert alert-danger">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <strong>¡Error!</strong> Se supera el límite de 5 viajeros por día.
                        </div>
                    <%
                        mensaje="";
                        } else if(mensaje=="Ya se ha realizado esta reserva"){
                    %>
                        <div class="alert alert-danger">
                           <button type="button" class="close" data-dismiss="alert">&times;</button>
                          <strong>¡Error!</strong> Ya se ha realizado esta reserva.
                        </div>                    
                    <%
                        mensaje="";
                        }
                    %>                
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th >ID</th>
                                <th>Fecha</th>
                                <th >Ciudad</th>
                                <th>Presupuesto</th>
                                <th>Pago con tarejta</th>
                                <th class="tablaEncabezado" >Acciones</th>
                            </tr>
                        </thead>
                        <%
                            AsignacionesDAO dao = new AsignacionesDAO();
                            int IdTurista = Integer.parseInt((String)request.getAttribute("Id"));        
                            List<Asignaciones>list=dao.list(IdTurista,"IdTurista");
                            Iterator<Asignaciones>iter=list.iterator();
                            Asignaciones asignacion=null;
                            while (iter.hasNext()){
                                asignacion = iter.next();
                        %>
                        <tbody>
                            <tr>
                                <td><%= asignacion.getId() %></td>
                                <td><%= asignacion.getFecha() %></td>
                                <%            
                                    CiudadesDAO ciudadesDAO = new CiudadesDAO();
                                    List<Ciudades>lista=ciudadesDAO.listar();
                                    Iterator<Ciudades>iterCiudades=lista.iterator();
                                    Ciudades ciudad=null;
                                    while (iterCiudades.hasNext()){
                                        ciudad = iterCiudades.next();
                                        System.out.println(ciudad);
                                        if ((ciudad.getId())==(asignacion.getIdCiudad())){
                                %>
                                    <td><%= ciudad.getNombre()%></td>
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
                                
                                <td class="tablaEncabezado" >
                                    <a href="Controlador?accion=editAsignaciones&Id=<%= asignacion.getId()%>" class="btn btn-primary botonesTabla">&nbsp; Editar&nbsp;</a>
                                    <a href="Controlador?accion=deleteAsignaciones&Id=<%=asignacion.getId()%>&IdTuristas=<%=asignacion.getIdTurista()%>"class="btn btn-danger botonesTabla">Eliminar</a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-6">
                       <a href="Controlador?accion=addAsignaciones&IdTurista=<%= IdTurista %>" class="btn btn-success btn-block">Agregar viaje</a>
                    </div>
                    <div class="col-sm-6">
                        <a href="Controlador?accion=listarTuristas" class="btn btn-danger btn-block">Regresar</a><br>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>