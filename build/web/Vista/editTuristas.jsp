
<%@page import="Modelo.Turistas"%>
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
    <title>Editar Turista</title>
    </head>
    <body>
        <% 
            TuristasDAO dao = new TuristasDAO();
            int Id = Integer.parseInt((String)request.getAttribute("Id"));
            Turistas turista=(Turistas)dao.list(Id);
        %>
        
        <section>
            <div class="container" >
                <div class="col-sm"   >
                    <div class="align-items-center text-center ">
                        <h1 >Editar Turista</h1>
                    </div><br>
                    <form action="Controlador" method="post" >
                        <input type="hidden" name="Id" id="Id" class="form-control form-control-sm" placeholder="Documento" value="<%= turista.getId() %>" ><br>
                        <input type="text" class="form-control form-control-sm" name="NombreCompleto" id="NombreCompleto" placeholder="Nombre completo" value="<%= turista.getNombreCompleto() %>" ><br>
 
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="number" name="Documento" id="Documento" class="form-control form-control-sm" placeholder="Documento" value="<%= turista.getDocumento() %>" ><br>
                            </div>
                            <div class="col-sm-6">
                                <select name="TipoDocumento" id="TipoDocumento" class="custom-select form-control form-control-sm ">
                                    <option value="<%= turista.getTipoDocumento() %>">
                                        <%
                                            if (turista.getTipoDocumento().equals("CC")){
                                        %>
                                            Cédula de ciudadanía
                                        <%
                                            } else if(turista.getTipoDocumento().equals("CE")){
                                        %>
                                            Cédula de extranjería
                                        <%
                                            } else if(turista.getTipoDocumento().equals("P")){
                                        %>
                                            Pasaporte
                                        <%
                                            } else if(turista.getTipoDocumento().equals("TI")){
                                        %>
                                            Tarjeta de identidad
                                        <%
                                            } else if(turista.getTipoDocumento().equals("O")){
                                        %>
                                            Otro
                                        <%                                        
                                            }
                                        %>
                                    </option>
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
                                <input type="text" class="form-control form-control-sm " name="FechaNacimiento" id="FechaNacimiento" placeholder="Fecha de Nacimiento"  onfocus="(this.type='date')" onblur="(this.type='text')" value="<%= turista.getFechaNacimiento() %>"><br>
                            </div>
                            <div class="col-sm-6">
                                <input type="number" class="form-control form-control-sm " name="FrecuenciaViaje" id="FrecuenciaViaje" placeholder="Frecuncia de viaje mensual" value="<%= turista.getFrecuenciaViaje() %>"><br>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-sm-6">
                                <input type="submit" name="accion"  value="Editar Turista" class="btn btn-success btn-block"><br>
                            </div>
                            <div class="col-sm-6">
                                <a href="Controlador?accion=listarTuristas" class="btn btn-danger btn-block">Regresar</a><br>
                            </div>
                            </div>
                        </div>
                    </form><br>
                </div>
            </div>
        </section>
    </body>
</html>
