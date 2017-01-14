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
public class VotosTotales {
    private int idvotos_totales;
    private String departamento;
    private String provincia;
    private String distrito;
    private int votosTotales;
    private int votosNulos;
    private int votosBlanco;

    public VotosTotales() {
    }

    public VotosTotales(String departamento, String provincia, String distrito, int votosTotales, int votosNulos, int votosBlanco) {
        this.departamento = departamento;
        this.provincia = provincia;
        this.distrito = distrito;
        this.votosTotales = votosTotales;
        this.votosNulos = votosNulos;
        this.votosBlanco = votosBlanco;
    }

    public VotosTotales(int idvotos_totales, String departamento, String provincia, String distrito, int votosTotales, int votosNulos, int votosBlanco) {
        this.idvotos_totales = idvotos_totales;
        this.departamento = departamento;
        this.provincia = provincia;
        this.distrito = distrito;
        this.votosTotales = votosTotales;
        this.votosNulos = votosNulos;
        this.votosBlanco = votosBlanco;
    }

    public int getIdvotos_totales() {
        return idvotos_totales;
    }

    public void setIdvotos_totales(int idvotos_totales) {
        this.idvotos_totales = idvotos_totales;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
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

    public int getVotosTotales() {
        return votosTotales;
    }

    public void setVotosTotales(int votosTotales) {
        this.votosTotales = votosTotales;
    }

    public int getVotosNulos() {
        return votosNulos;
    }

    public void setVotosNulos(int votosNulos) {
        this.votosNulos = votosNulos;
    }

    public int getVotosBlanco() {
        return votosBlanco;
    }

    public void setVotosBlanco(int votosBlanco) {
        this.votosBlanco = votosBlanco;
    }
    
    
    
}
