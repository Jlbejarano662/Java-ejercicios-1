package ModeloDAO;

import Interfaces.CrudAsignaciones;
import Modelo.Asignaciones;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Admonsis
 */

public class AsignacionesDAO implements CrudAsignaciones{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Asignaciones asignacion = new Asignaciones();
    
    
    
    @Override
    public List list (int id, String columna){
        ArrayList<Asignaciones>list=new ArrayList<>();
        String sql= "select*from asignaciones where "+columna+"="+id;
        try{
            con =cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Asignaciones asignaciones = new Asignaciones();
                asignaciones.setId(rs.getInt("ID"));
                asignaciones.setIdTurista(rs.getInt("IdTurista"));
                asignaciones.setIdCiudad(rs.getInt("IdCiudad"));
                asignaciones.setPresupuestoViaje(rs.getDouble("PresupuestoViaje"));
                asignaciones.setUsaTarjeta(rs.getBoolean("UsaTarjeta"));
                asignaciones.setFecha(rs.getString("Fecha"));
                list.add(asignaciones);
            }
        } catch ( SQLException e){
            System.out.println(e);
        }
        return list;
    }

    @Override
    public String add (Asignaciones Asignacion) {
        int resultado;
        String mensaje ="";
        String sql="select count(*) from asignaciones where Fecha='"+Asignacion.getFecha()+"'";
        con=cn.Conectar();
        try{
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery(sql);
            while (rs.next()){
                resultado=rs.getInt("count(*)");
                System.out.println(resultado);
                if(resultado<=5){
                    sql="select count(*) from asignaciones where Fecha='"+Asignacion.getFecha()+"' and IdTurista='"+Asignacion.getIdTurista()+"'and IdCiudad='"+Asignacion.getIdCiudad()+"'";
                    //System.out.println(sql);
                    try{
                        ps=con.prepareStatement(sql);
                        rs=ps.executeQuery(sql);
                        while (rs.next()){
                            resultado=rs.getInt("count(*)");
                            System.out.println(resultado);
                            if(resultado==1){
                                System.out.println("Ya se ha realizado esta reserva");
                                mensaje= "Ya se ha realizado esta reserva";
                            }else{
                                sql="insert into asignaciones (IdTurista, IdCiudad, PresupuestoViaje, UsaTarjeta, Fecha) values ('"+Asignacion.getIdTurista()+"','"+Asignacion.getIdCiudad()+"','"+String.valueOf(Asignacion.getPresupuestoViaje())+"','1','"+Asignacion.getFecha()+"')";
                                System.out.println(sql);
                                try{
                                    ps=con.prepareStatement(sql);
                                    ps.executeUpdate();
                                } catch (SQLException e){
                                    System.out.println(e);
                                    mensaje="SQLException";
                                }
                            }
                        }
                    } catch (SQLException e){
                        System.out.println(e);
                        mensaje="SQLException";
                    }

                }else{
                    System.out.println("Se supera el limite de 5 viajeros por dia");
                    mensaje= "Se supera el limite de 5 viajeros por dia";
                }
            }
        } catch (SQLException e){
            System.out.println(e);
            mensaje= "SQLException";
        }
        System.out.println(mensaje);
        return mensaje;
    }

    @Override
    public String edit (Asignaciones Asignacion) {
        String mensaje="";
        String sql="select*from asignaciones where where ID='"+Asignacion.getId()+"'";
        con=cn.Conectar();
        try{
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery(sql);
            while (rs.next()){
                if((rs.getInt("IdCiudad")==Asignacion.getIdCiudad()) && (rs.getString("Fecha").equals(Asignacion.getFecha()))){
                    sql="update asignaciones set PresupuestoViaje ='"+Asignacion.getPresupuestoViaje()+"', UsaTarjeta='"+Asignacion.getPresupuestoViaje()+"', Fecha='"+Asignacion.getFecha()+"' where ID='"+Asignacion.getId()+"'";
                    try{
                        ps=con.prepareStatement(sql);
                        System.out.println(sql);
                        ps.executeUpdate();
                    } catch (SQLException e){
                        System.out.println(e);
                    }
                }else{
                    int resultado;
                    sql="select count(*) from asignaciones where Fecha='"+Asignacion.getFecha()+"'";
                    try{
                        ps=con.prepareStatement(sql);
                        rs=ps.executeQuery(sql);
                        while (rs.next()){
                            resultado=rs.getInt("count(*)");
                            System.out.println(resultado);
                            if(resultado<=5){
                                sql="select count(*) from asignaciones where Fecha='"+Asignacion.getFecha()+"' and IdTurista='"+Asignacion.getIdTurista()+"'and IdCiudad='"+Asignacion.getIdCiudad()+"'";
                                //System.out.println(sql);
                                try{
                                    ps=con.prepareStatement(sql);
                                    rs=ps.executeQuery(sql);
                                    while (rs.next()){
                                        resultado=rs.getInt("count(*)");
                                        System.out.println(resultado);
                                        if(resultado==1){
                                            System.out.println("Ya se ha realizado esta reserva");
                                            mensaje= "Ya se ha realizado esta reserva";
                                        }else{
                                            sql="insert into asignaciones (IdTurista, IdCiudad, PresupuestoViaje, UsaTarjeta, Fecha) values ('"+Asignacion.getIdTurista()+"','"+Asignacion.getIdCiudad()+"','"+String.valueOf(Asignacion.getPresupuestoViaje())+"','1','"+Asignacion.getFecha()+"')";
                                            System.out.println(sql);
                                            try{
                                                ps=con.prepareStatement(sql);
                                                ps.executeUpdate();
                                            } catch (SQLException e){
                                                System.out.println(e);
                                                mensaje="SQLException";
                                            }
                                        }
                                    }
                                } catch (SQLException e){
                                    System.out.println(e);
                                    mensaje="SQLException";
                                }

                            }else{
                                System.out.println("Se supera el limite de 5 viajeros por dia");
                                mensaje= "Se supera el limite de 5 viajeros por dia";
                            }
                        }
                    } catch (SQLException e){
                        System.out.println(e);
                        mensaje= "SQLException";
                    }
                }


        }
        }catch (SQLException e){
            System.out.println(e);
        }

        

       
        return mensaje;    
    }

    @Override
    public boolean delete(int id) {
        String sql="delete from asignaciones where ID="+id;
        try{
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            System.out.println(sql);
            ps.executeUpdate();
        } catch (SQLException e){
            System.out.println(e);
        }
       
        return false;        
    }
        
}
