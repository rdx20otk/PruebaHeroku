/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.entidad;

/**
 *
 * @author Carlos J
 */
public class Prueba {
    private int idprueba;
    private String nombre;
    private String descripcion;

    public Prueba() {
    }

    public Prueba(String nombre, String descripcion) {
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public Prueba(int idprueba, String nombre, String descripcion) {
        this.idprueba = idprueba;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public int getIdprueba() {
        return idprueba;
    }

    public void setIdprueba(int idprueba) {
        this.idprueba = idprueba;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
    
    
    
    
}
