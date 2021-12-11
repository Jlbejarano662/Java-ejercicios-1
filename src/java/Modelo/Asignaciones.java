/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author jazmi
 */
public class Asignaciones{
    int id;
    int idCiudad;
    int idTurista;
    double PresupuestoViaje;
    boolean UsaTarjeta;
    String Fecha;

    public Asignaciones() {
    }

    public Asignaciones(int id, int idCiudad, int idTurista, double PresupuestoViaje, boolean UsaTarjeta, String Fecha) {
        this.id = id;
        this.idCiudad = idCiudad;
        this.idTurista = idTurista;
        this.PresupuestoViaje = PresupuestoViaje;
        this.UsaTarjeta = UsaTarjeta;
        this.Fecha = Fecha;
    }

    public int getId() {
        return id;
    }

    public int getIdTurista() {
        return idTurista;
    }

    public int getIdCiudad() {
        return idCiudad;
    }

    public double getPresupuestoViaje() {
        return PresupuestoViaje;
    }

    public String getFecha() {
        return Fecha;
    }

    public boolean getUsaTarjeta() {
        return UsaTarjeta;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIdTurista(int idTurista) {
        this.idTurista = idTurista;
    }

    public void setIdCiudad(int idCiudad) {
        this.idCiudad = idCiudad;
    }

    public void setPresupuestoViaje(double PresupuestoViaje) {
        this.PresupuestoViaje = PresupuestoViaje;
    }

    public void setUsaTarjeta(boolean UsaTarjeta) {
        this.UsaTarjeta = UsaTarjeta;
    }

    public void setFecha(String Fecha) {
        this.Fecha = Fecha;
    }  
}
