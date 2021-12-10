/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Interfaces.CrudTuristas;
import Modelo.Turistas;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admonsis
 */
public class TuristasDAO implements CrudTuristas{
    
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Turistas turista = new Turistas();
    
    
    
    @Override
    public List listar(){
        ArrayList<Turistas>list=new ArrayList<>();
        String sql= "select*from turistas";
        try{
            con =cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Turistas turistas = new Turistas();
                turistas.setId(rs.getInt("Id"));
                turistas.setNombreCompleto(rs.getString("NombreCompleto"));
                turistas.setFechaNacimiento(rs.getString("FechaNacimiento"));
                turistas.setDocumento(rs.getInt("Documento"));
                turistas.setTipoDocumento(rs.getString("TipoDocumento"));
                turistas.setFrecuenciaViaje(rs.getInt("FrecuenciaViaje"));
                list.add(turistas);
            }
        } catch ( SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    

    @Override
    public Turistas list(int id) {
        String sql= "select*from turistas where ID="+id;
        try{
            con =cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                turista.setId(rs.getInt("ID"));
                turista.setNombreCompleto(rs.getString("NombreCompleto"));
                turista.setFechaNacimiento(rs.getString("FechaNacimiento"));
                turista.setDocumento(rs.getInt("Documento"));
                turista.setTipoDocumento(rs.getString("TipoDocumento"));
                turista.setFrecuenciaViaje(rs.getInt("FrecuenciaViaje"));
            }
        } catch ( SQLException e){
            System.out.println(e);
        }
        return turista;    
    }

    @Override
    public boolean add(Turistas turista) {
        String sql="insert into turistas (NombreCompleto, FechaNacimiento, Documento, TipoDocumento, FrecuenciaViaje) values ('"+turista.getNombreCompleto()+"','"+turista.getFechaNacimiento()+"','"+turista.getDocumento()+"','"+turista.getTipoDocumento()+"','"+turista.getFrecuenciaViaje()+"')";
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
    public boolean edit(Turistas Turista) {
        String sql="update turistas set NombreCompleto='"+Turista.getNombreCompleto()+"', FechaNacimiento ='"+Turista.getFechaNacimiento()+"', Documento='"+Turista.getDocumento()+"', TipoDocumento='"+Turista.getTipoDocumento()+"', FrecuenciaViaje='"+Turista.getFrecuenciaViaje()+"' where ID='"+Turista.getId()+"'";
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
        String sql="delete from turistas where ID="+id;
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
