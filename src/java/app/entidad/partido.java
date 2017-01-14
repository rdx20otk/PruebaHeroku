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
public class partido {
    private int idpartidos;
    private String nombre;
    private String ubicacion;
    private String candidato;

    public partido() {
    }

    public partido(String nombre, String ubicacion, String candidato) {
        this.nombre = nombre;
        this.ubicacion = ubicacion;
        this.candidato = candidato;
    }

    public partido(int idpartidos, String nombre, String ubicacion, String candidato) {
        this.idpartidos = idpartidos;
        this.nombre = nombre;
        this.ubicacion = ubicacion;
        this.candidato = candidato;
    }

    public int getIdpartidos() {
        return idpartidos;
    }

    public void setIdpartidos(int idpartidos) {
        this.idpartidos = idpartidos;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getCandidato() {
        return candidato;
    }

    public void setCandidato(String candidato) {
        this.candidato = candidato;
    }
    
    
    
}
