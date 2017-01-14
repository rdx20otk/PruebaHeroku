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
public class votosMesa {
    private int idvotos_mesa;
    private String departmaneto;
    private String provincia;
    private String distrito;
    private String numeroMesa;
    private String institucion;
    private String direccion;
    private String partido;
    private int votosValidos;
    private String partido2;
    private int votosvP2;
    private String partido3;
    private int votosvP3;

    public votosMesa() {
    }

    public votosMesa(String departmaneto, String provincia, String distrito, String numeroMesa, String institucion, String direccion, String partido, int votosValidos, String partido2, int votosvP2, String partido3, int votosvP3) {
        this.departmaneto = departmaneto;
        this.provincia = provincia;
        this.distrito = distrito;
        this.numeroMesa = numeroMesa;
        this.institucion = institucion;
        this.direccion = direccion;
        this.partido = partido;
        this.votosValidos = votosValidos;
        this.partido2 = partido2;
        this.votosvP2 = votosvP2;
        this.partido3 = partido3;
        this.votosvP3 = votosvP3;
    }

    public votosMesa(int idvotos_mesa, String departmaneto, String provincia, String distrito, String numeroMesa, String institucion, String direccion, String partido, int votosValidos, String partido2, int votosvP2, String partido3, int votosvP3) {
        this.idvotos_mesa = idvotos_mesa;
        this.departmaneto = departmaneto;
        this.provincia = provincia;
        this.distrito = distrito;
        this.numeroMesa = numeroMesa;
        this.institucion = institucion;
        this.direccion = direccion;
        this.partido = partido;
        this.votosValidos = votosValidos;
        this.partido2 = partido2;
        this.votosvP2 = votosvP2;
        this.partido3 = partido3;
        this.votosvP3 = votosvP3;
    }

    public int getIdvotos_mesa() {
        return idvotos_mesa;
    }

    public void setIdvotos_mesa(int idvotos_mesa) {
        this.idvotos_mesa = idvotos_mesa;
    }

    public String getDepartmaneto() {
        return departmaneto;
    }

    public void setDepartmaneto(String departmaneto) {
        this.departmaneto = departmaneto;
    }

    public String getProvincia() {
        return provincia;
    }

    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }

    public String getDistrito() {
        return distrito;
    }

    public void setDistrito(String distrito) {
        this.distrito = distrito;
    }

    public String getNumeroMesa() {
        return numeroMesa;
    }

    public void setNumeroMesa(String numeroMesa) {
        this.numeroMesa = numeroMesa;
    }

    public String getInstitucion() {
        return institucion;
    }

    public void setInstitucion(String institucion) {
        this.institucion = institucion;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getPartido() {
        return partido;
    }

    public void setPartido(String partido) {
        this.partido = partido;
    }

    public int getVotosValidos() {
        return votosValidos;
    }

    public void setVotosValidos(int votosValidos) {
        this.votosValidos = votosValidos;
    }

    public String getPartido2() {
        return partido2;
    }

    public void setPartido2(String partido2) {
        this.partido2 = partido2;
    }

    public int getVotosvP2() {
        return votosvP2;
    }

    public void setVotosvP2(int votosvP2) {
        this.votosvP2 = votosvP2;
    }

    public String getPartido3() {
        return partido3;
    }

    public void setPartido3(String partido3) {
        this.partido3 = partido3;
    }

    public int getVotosvP3() {
        return votosvP3;
    }

    public void setVotosvP3(int votosvP3) {
        this.votosvP3 = votosvP3;
    }

   
    
}
