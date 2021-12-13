/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Asignaciones;
import java.util.List;

/**
 *
 * @author jazmi
 */
public interface CrudAsignaciones {
    public List list (int id, String columna);
    public String add (Asignaciones Asignacion);
    public String edit (Asignaciones Asignacion);
    public boolean delete (int id);    
}
