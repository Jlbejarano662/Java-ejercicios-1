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
    public boolean add (Asignaciones Asignacion) {
        String sql="insert into asignaciones (IdTurista, IdCiudad, PresupuestoViaje, UsaTarjeta, Fecha) values ('"+Asignacion.getIdTurista()+"','"+Asignacion.getIdCiudad()+"','"+Asignacion.getPresupuestoViaje()+"','"+Asignacion.getFecha()+"')";
        try{
            con=cn.Conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e){
            System.out.println(e);
        }
       
        return false;
    }

    @Override
    public boolean edit (Asignaciones Asignacion) {
        String sql="update asignaciones set IdCiudad='"+Asignacion.getIdCiudad()+"', PresupuestoViaje ='"+Asignacion.getPresupuestoViaje()+"', UsaTarjeta='"+Asignacion.getPresupuestoViaje()+"', Fecha='"+Asignacion.getFecha()+"' where ID='"+Asignacion.getId()+"' and IdTurista='"+Asignacion.getIdTurista()+"'";
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
