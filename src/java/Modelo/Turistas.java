/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Admonsis
 */
public class Turistas {
    int id;
    String NombreCompleto;
    String FechaNacimiento;
    int Documento;
    String TipoDocumento;
    int FrecuenciaViaje;

    public Turistas() {
    }

    public Turistas(int id, String NombreCompleto, String FechaNacimiento, int Documento, String TipoDocumento, int FrecuenciaViaje) {
        this.id = id;
        this.NombreCompleto = NombreCompleto;
        this.FechaNacimiento = FechaNacimiento;
        this.Documento = Documento;
        this.TipoDocumento = TipoDocumento;
        this.FrecuenciaViaje = FrecuenciaViaje;
    }
    
    public int getId() {
        return id;
    }

    public String getNombreCompleto() {
        return NombreCompleto;
    }

    public int getDocumento() {
        return Documento;
    }

    public String getFechaNacimiento() {
        return FechaNacimiento;
    }

    public String getTipoDocumento() {
        return TipoDocumento;
    }

    public int getFrecuenciaViaje() {
        return FrecuenciaViaje;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNombreCompleto(String NombreCompleto) {
        this.NombreCompleto = NombreCompleto;
    }

    public void setFechaNacimiento(String FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    public void setDocumento(int Documento) {
        this.Documento = Documento;
    }

    public void setTipoDocumento(String TipoDocumento) {
        this.TipoDocumento = TipoDocumento;
    }

    public void setFrecuenciaViaje(int FrecuenciaViaje) {
        this.FrecuenciaViaje = FrecuenciaViaje;
    }
    
    
}
