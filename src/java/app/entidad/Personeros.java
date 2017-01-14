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
public class Personeros {
    private int idPersonerosE;
    private String departamento;
    private String provincia;
    private String distrito;
    private String orgPolitica;
    
    private String dniLT;
    private String apPaternoLT;
    private String apMaternoLT;
    private String nombresLT;
    private String sexoLT;
    private String fechaLT;
    private String passLT;
    
    private String dniLA;
    private String apPaternoLA;
    private String apMaternoLA;
    private String nombresLA;
    private String sexoLA;
    private String fechaLA;
    private String passLA;
        
    private String dniTT;
    private String apPaternoTT;
    private String apMaternoTT;
    private String nombresTT;
    private String sexoTT;
    private String fechaTT;
    private String passTT;

    public Personeros() {
    }

    public Personeros(String departamento, String provincia, String distrito, String orgPolitica, String dniLT, String apPaternoLT, String apMaternoLT, String nombresLT, String sexoLT, String fechaLT, String passLT, String dniLA, String apPaternoLA, String apMaternoLA, String nombresLA, String sexoLA, String fechaLA, String passLA, String dniTT, String apPaternoTT, String apMaternoTT, String nombresTT, String sexoTT, String fechaTT, String passTT) {
        this.departamento = departamento;
        this.provincia = provincia;
        this.distrito = distrito;
        this.orgPolitica = orgPolitica;
        this.dniLT = dniLT;
        this.apPaternoLT = apPaternoLT;
        this.apMaternoLT = apMaternoLT;
        this.nombresLT = nombresLT;
        this.sexoLT = sexoLT;
        this.fechaLT = fechaLT;
        this.passLT = passLT;
        this.dniLA = dniLA;
        this.apPaternoLA = apPaternoLA;
        this.apMaternoLA = apMaternoLA;
        this.nombresLA = nombresLA;
        this.sexoLA = sexoLA;
        this.fechaLA = fechaLA;
        this.passLA = passLA;
        this.dniTT = dniTT;
        this.apPaternoTT = apPaternoTT;
        this.apMaternoTT = apMaternoTT;
        this.nombresTT = nombresTT;
        this.sexoTT = sexoTT;
        this.fechaTT = fechaTT;
        this.passTT = passTT;
    }

    public Personeros(int idPersonerosE, String departamento, String provincia, String distrito, String orgPolitica, String dniLT, String apPaternoLT, String apMaternoLT, String nombresLT, String sexoLT, String fechaLT, String passLT, String dniLA, String apPaternoLA, String apMaternoLA, String nombresLA, String sexoLA, String fechaLA, String passLA, String dniTT, String apPaternoTT, String apMaternoTT, String nombresTT, String sexoTT, String fechaTT, String passTT) {
        this.idPersonerosE = idPersonerosE;
        this.departamento = departamento;
        this.provincia = provincia;
        this.distrito = distrito;
        this.orgPolitica = orgPolitica;
        this.dniLT = dniLT;
        this.apPaternoLT = apPaternoLT;
        this.apMaternoLT = apMaternoLT;
        this.nombresLT = nombresLT;
        this.sexoLT = sexoLT;
        this.fechaLT = fechaLT;
        this.passLT = passLT;
        this.dniLA = dniLA;
        this.apPaternoLA = apPaternoLA;
        this.apMaternoLA = apMaternoLA;
        this.nombresLA = nombresLA;
        this.sexoLA = sexoLA;
        this.fechaLA = fechaLA;
        this.passLA = passLA;
        this.dniTT = dniTT;
        this.apPaternoTT = apPaternoTT;
        this.apMaternoTT = apMaternoTT;
        this.nombresTT = nombresTT;
        this.sexoTT = sexoTT;
        this.fechaTT = fechaTT;
        this.passTT = passTT;
    }

    public Personeros(String usu, String pass) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getIdPersonerosE() {
        return idPersonerosE;
    }

    public void setIdPersonerosE(int idPersonerosE) {
        this.idPersonerosE = idPersonerosE;
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

    public String getOrgPolitica() {
        return orgPolitica;
    }

    public void setOrgPolitica(String orgPolitica) {
        this.orgPolitica = orgPolitica;
    }

    public String getDniLT() {
        return dniLT;
    }

    public void setDniLT(String dniLT) {
        this.dniLT = dniLT;
    }

    public String getApPaternoLT() {
        return apPaternoLT;
    }

    public void setApPaternoLT(String apPaternoLT) {
        this.apPaternoLT = apPaternoLT;
    }

    public String getApMaternoLT() {
        return apMaternoLT;
    }

    public void setApMaternoLT(String apMaternoLT) {
        this.apMaternoLT = apMaternoLT;
    }

    public String getNombresLT() {
        return nombresLT;
    }

    public void setNombresLT(String nombresLT) {
        this.nombresLT = nombresLT;
    }

    public String getSexoLT() {
        return sexoLT;
    }

    public void setSexoLT(String sexoLT) {
        this.sexoLT = sexoLT;
    }

    public String getFechaLT() {
        return fechaLT;
    }

    public void setFechaLT(String fechaLT) {
        this.fechaLT = fechaLT;
    }

    public String getPassLT() {
        return passLT;
    }

    public void setPassLT(String passLT) {
        this.passLT = passLT;
    }

    public String getDniLA() {
        return dniLA;
    }

    public void setDniLA(String dniLA) {
        this.dniLA = dniLA;
    }

    public String getApPaternoLA() {
        return apPaternoLA;
    }

    public void setApPaternoLA(String apPaternoLA) {
        this.apPaternoLA = apPaternoLA;
    }

    public String getApMaternoLA() {
        return apMaternoLA;
    }

    public void setApMaternoLA(String apMaternoLA) {
        this.apMaternoLA = apMaternoLA;
    }

    public String getNombresLA() {
        return nombresLA;
    }

    public void setNombresLA(String nombresLA) {
        this.nombresLA = nombresLA;
    }

    public String getSexoLA() {
        return sexoLA;
    }

    public void setSexoLA(String sexoLA) {
        this.sexoLA = sexoLA;
    }

    public String getFechaLA() {
        return fechaLA;
    }

    public void setFechaLA(String fechaLA) {
        this.fechaLA = fechaLA;
    }

    public String getPassLA() {
        return passLA;
    }

    public void setPassLA(String passLA) {
        this.passLA = passLA;
    }

    public String getDniTT() {
        return dniTT;
    }

    public void setDniTT(String dniTT) {
        this.dniTT = dniTT;
    }

    public String getApPaternoTT() {
        return apPaternoTT;
    }

    public void setApPaternoTT(String apPaternoTT) {
        this.apPaternoTT = apPaternoTT;
    }

    public String getApMaternoTT() {
        return apMaternoTT;
    }

    public void setApMaternoTT(String apMaternoTT) {
        this.apMaternoTT = apMaternoTT;
    }

    public String getNombresTT() {
        return nombresTT;
    }

    public void setNombresTT(String nombresTT) {
        this.nombresTT = nombresTT;
    }

    public String getSexoTT() {
        return sexoTT;
    }

    public void setSexoTT(String sexoTT) {
        this.sexoTT = sexoTT;
    }

    public String getFechaTT() {
        return fechaTT;
    }

    public void setFechaTT(String fechaTT) {
        this.fechaTT = fechaTT;
    }

    public String getPassTT() {
        return passTT;
    }

    public void setPassTT(String passTT) {
        this.passTT = passTT;
    }

    
     
    
}
