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
    Turistas turistas = new Turistas();
    
    
    
    @Override
    public List listar(){
        ArrayList<Turistas>list=new ArrayList<>();
        String sql= "select*from turistas";
        try{
            con =cn.Conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                Turistas turista= new Turistas();
                turista.setId(rs.getInt("ID"));
                turista.setNombreCompleto(rs.getString("NombreCompleto"));
                turista.setFechaNacimiento(rs.getString("FechaNacimiento"));
                turista.setDocumento(rs.getInt("Documento"));
                turista.setTipoDocumento(rs.getString("TipoDocumento"));
                turista.setFrecuenciaViaje(rs.getInt("FrecuenciaViaje"));
                list.add(turista);
            }
        } catch ( SQLException e){
            System.out.println(e);
        }
        return list;
    }
    
    

    @Override
    public Turistas list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Turistas Turista) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean edit(Turistas Turista) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
