/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Admonsis
 */
public class Ciudades {
    int id;
    String Nombre;
    int CantidadHabitantes;
    String SitioTuristico;
    String HotelReservado;

    public Ciudades() {
    }

    public Ciudades(int id, String Nombre, int CantidadHabitantes, String SitioTuristico, String HotelReservado) {
        this.id = id;
        this.Nombre = Nombre;
        this.CantidadHabitantes = CantidadHabitantes;
        this.SitioTuristico = SitioTuristico;
        this.HotelReservado = HotelReservado;
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return Nombre;
    }

    public int getCantidadHabitantes() {
        return CantidadHabitantes;
    }

    public String getSitioTuristico() {
        return SitioTuristico;
    }

    public String getHotelReservado() {
        return HotelReservado;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setCantidadHabitantes(int CantidadHabitantes) {
        this.CantidadHabitantes = CantidadHabitantes;
    }

    public void setSitioTuristico(String SitioTuristico) {
        this.SitioTuristico = SitioTuristico;
    }

    public void setHotelReservado(String HotelReservado) {
        this.HotelReservado = HotelReservado;
    }
}
