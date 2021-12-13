<%-- 
    Document   : addAsignaciones
    Created on : 10/12/2021, 10:53:01 PM
    Author     : jazmi
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
    <title>Agregar Asignaciones</title>
    </head>
    <body>
        <% 
            int IdTurista = Integer.parseInt((String)request.getAttribute("IdTurista"));
        %>
        
        <section>
            <div class="container" >
                <div class="col-sm"   >
                    <div class="align-items-center text-center ">
                        <h1 >Nuevo viaje</h1>
                    </div><br>
                    <form action="Controlador" method="post" >
                        <input type="hidden" name="IdTurista" id="Id" class="form-control form-control-sm" placeholder="Id" value="<%= IdTurista %>" ><br>
                        <select name="IdCiudad" id="IdCiudad" class="custom-select form-control form-control-sm ">
                            <option value="">Ciudad</option>
                        <% 
                        CiudadesDAO ciudadesDAO = new CiudadesDAO();
                            List<Ciudades>lista=ciudadesDAO.listar();
                            Iterator<Ciudades>iterCiudades=lista.iterator();
                            Ciudades ciudad=null;
                            while (iterCiudades.hasNext()){
                                ciudad = iterCiudades.next();                      
                        %>    
                                <option value="<%= ciudad.getId() %>"><%= ciudad.getNombre() %></option>
                        <%
                            }
                        %>
                        </select><br>
                        <input type="number" class="form-control form-control-sm" name="PresupuestoViaje" id="PresupuestoViaje" placeholder="Presupuesto ($)"><br>
                        <select name="UsaTarjeta" id="UsaTarjeta" class="custom-select form-control form-control-sm ">
                            <option value="">Pago con Tarjeta</option>
                            <option value="True">Si</option>
                            <option value="False">No</option>
                        </select><br>                        
                        <input type="text" class="form-control form-control-sm " name="Fecha" id="Fecha" placeholder="Fecha"  onfocus="(this.type='date')" onblur="(this.type='text')"><br>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-4">
                            </div>
                            <div class="col-sm-4">
                                <input type="submit" name="accion"  value="Agregar viaje" class="btn btn-success btn-block"><br>
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