/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Turistas;
import java.util.List;

/**
 *
 * @author Admonsis
 */
public interface CrudTuristas {
    public List listar();
    public Turistas list (int id);
    public boolean add (Turistas Turista);
    public boolean edit (Turistas Turista);
    public boolean delete (int id);
}
