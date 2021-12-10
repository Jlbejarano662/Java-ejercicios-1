package ModeloDAO;

import Interfaces.CrudCiudades;
import Modelo.Ciudades;
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

public class CiudadesDAO implements CrudCiudades{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Ciudades ciudad = new Ciudades();
    
    
    
    @Override
    public List listar(){
        ArrayList<Ciudades>list=new ArrayList<>();
        String sql= "select*from ciudad";
        try{
            con =cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Ciudades ciudades = new Ciudades();
                ciudades.setId(rs.getInt("ID"));
                ciudades.setNombre(rs.getString("Nombre"));
                ciudades.setCantidadHabitantes(rs.getInt("CantidadHabitantes"));
                ciudades.setSitioTuristico(rs.getString("SitioTuristico"));
                ciudades.setHotelReservado(rs.getString("HotelReservado"));
                list.add(ciudades);
            }
        } catch ( SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    

    @Override
    public Ciudades list(int id) {
        String sql= "select*from ciudad where ID="+id;
        try{
            con =cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                ciudad.setId(rs.getInt("ID"));
                ciudad.setNombre(rs.getString("Nombre"));
                ciudad.setCantidadHabitantes(rs.getInt("CantidadHabitantes"));
                ciudad.setSitioTuristico(rs.getString("SitioTuristico"));
                ciudad.setHotelReservado(rs.getString("HoltelReservado"));
            }
        } catch ( SQLException e){
            System.out.println(e);
        }
        return ciudad;    
    }

    @Override
    public boolean add(Ciudades Ciudad) {
        String sql="insert into ciudad (Nombre, CantidadHabitantes, SitioTuristico, HoltelReservado) values ('"+Ciudad.getNombre()+"','"+Ciudad.getCantidadHabitantes()+"','"+Ciudad.getSitioTuristico()+"','"+Ciudad.getHotelReservado()+"')";
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
    public boolean edit(Ciudades Ciudad) {
        String sql="update ciudad set Nombre='"+Ciudad.getNombre()+"', CantidadHabitantes ='"+Ciudad.getCantidadHabitantes()+"', SitioTuristico='"+Ciudad.getSitioTuristico()+"', HoltelReservado='"+Ciudad.getHotelReservado()+"'";
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
        String sql="delete from ciudad where ID="+id;
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
