/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Admonsis
 */
public class Conexion {
    String bd="quileia";
    String url="jdbc:mysql://localhost:3306/";
    String user="root";
    String password="";
    String driver="com.mysql.cj.jdbc.Driver";
    Connection con;
    public Conexion(){
        
    }
    public Connection Conectar(){
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url+bd, user, password);
            System.out.println("Se conecto a la base de datos " +bd);
        } catch (ClassNotFoundException | SQLException e){
            System.out.println("No se conecto a la base de datos " +bd);
        }
        return con;
    }
    public void desconectar(){
        try {
            con.close();
        } catch (SQLException e) {
            System.out.println("Ocurrio un error en la base de datos:  " +bd);
        }
    }
    public static void main (String[] args){
        Conexion conexion=new Conexion();
        conexion.Conectar();
    }
}
