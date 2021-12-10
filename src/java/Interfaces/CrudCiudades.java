/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Ciudades;
import java.util.List;

/**
 *
 * @author Admonsis
 */
public interface CrudCiudades {
    public List listar();
    public Ciudades list (int id);
    public boolean add (Ciudades Ciudad);
    public boolean edit (Ciudades Ciudad);
    public boolean delete (int id);
}
