/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.dao;
import app.entidad.Prueba;
import app.entidad.Personeros;
import app.entidad.VotosTotales;
import app.entidad.votosMesa;
import app.entidad.partido;
import base.datos.BaseDatos;
import java.sql.ResultSet;
import java.util.ArrayList;
/**
 *
 * @author Carlos J
 */
public class appDao {
    private Prueba daoPrueba;
    private Personeros PER;
    private VotosTotales VT;
    private votosMesa VM;
    private partido PT;
    

    public appDao() {
    }

   public appDao(Prueba p){
       this.daoPrueba=p;
   }
   public appDao(Personeros PE){
       this.PER=PE;
   }

    public appDao(VotosTotales VT) {
        this.VT = VT;
    }

    public appDao(votosMesa VM) {
        this.VM = VM;
    }

    public appDao(partido PT) {
        this.PT = PT;
    }
   
    
   
       public void registrar() throws Exception{
        BaseDatos.conectar();
        String sql="INSERT INTO prueba (nombre,descripcion) ";
        sql+="VALUES('"+daoPrueba.getNombre()+"', '"+daoPrueba.getDescripcion()+"')";
        BaseDatos.ejecutar(sql);
        BaseDatos.desconectar();
    }
       
       //************************************************************
       //*************SECCION PERSONEROS***************************//
        public void RegistrarPER() throws Exception{
        BaseDatos.conectar();
        String sql="INSERT INTO personerose (departamento,provincia,distrito,orgPolitica,dniLT,apPaternoLT,apMaternoLT,nombresLT,sexoLT,fechaLT,passLT,dniLA,apPaternoLA,apMaternoLA,nombresLA,sexoLA,fechaLA,passLA,dniTT,apPaternoTT,apMaternoTT,nombresTT,sexoTT,fechaTT,passTT)";
        sql+="VALUES('"+PER.getDepartamento()+"','"+PER.getProvincia()+"','"+PER.getDistrito()+"','"+PER.getOrgPolitica()+"','"+PER.getDniLT()+"','"+PER.getApPaternoLT()+"','"+PER.getApMaternoLT()+"','"+PER.getNombresLT()+"','"+PER.getSexoLT()+"','"+PER.getFechaLT()+"','"+PER.getPassLT()+"',"
                + "'"+PER.getDniLA()+"','"+PER.getApPaternoLA()+"','"+PER.getApMaternoLA()+"','"+PER.getNombresLA()+"','"+PER.getSexoLA()+"','"+PER.getFechaLA()+"','"+PER.getPassLA()+"',"
                + "'"+PER.getDniTT()+"','"+PER.getApPaternoTT()+"','"+PER.getApMaternoTT()+"','"+PER.getNombresTT()+"','"+PER.getSexoTT()+"','"+PER.getFechaTT()+"','"+PER.getPassTT()+"')";
        BaseDatos.ejecutar(sql);
        BaseDatos.desconectar();
    }
      public ArrayList listarPersoneros() throws Exception {
        BaseDatos.conectar();
        String sql="SELECT * FROM personerose";        
        ResultSet rs = BaseDatos.consultar(sql);
        ArrayList<Personeros> personeros = new ArrayList<Personeros>();
        while(rs.next()){
            Personeros temp= new Personeros(rs.getInt("idpersonerosE"),
                    rs.getString("departamento"),
                    rs.getString("provincia"),
                     rs.getString("distrito"),
                    rs.getString("orgPolitica"),
                    
                     rs.getString("dniLT"),
                    rs.getString("apPaternoLT"),
                     rs.getString("apMaternoLT"),
                    rs.getString("nombresLT"),
                     rs.getString("sexoLT"),
                    rs.getString("fechaLT"),
                    rs.getString("passLT"),
                    
                     rs.getString("dniLA"),
                    rs.getString("apPaternoLA"),
                     rs.getString("apMaternoLA"),
                    rs.getString("nombresLA"),
                     rs.getString("sexoLA"),
                    rs.getString("fechaLA"),
                    rs.getString("passLA"),
                    
                     rs.getString("dniTT"),
                    rs.getString("apPaternoTT"),
                     rs.getString("apMaternoTT"),
                    rs.getString("nombresTT"),
                     rs.getString("sexoTT"),
                    rs.getString("fechaTT"),
                    rs.getString("passTT"));
                   
                    
            personeros.add(temp);
        }
        BaseDatos.desconectar();
        return personeros;        
    }
       //***********************************************************
      
      //************************************************************
       //*************SECCION VOTOS***************************//
      public void GuardarVT() throws Exception{
        BaseDatos.conectar();
        String sql="INSERT INTO votos_totales (departamento,provincia,distrito,votosTotales,votosNulos,votosBlanco)";
        sql+="VALUES('"+VT.getDepartamento()+"','"+VT.getProvincia()+"','"+VT.getDistrito()+"',"+VT.getVotosTotales()+","+VT.getVotosNulos()+","+VT.getVotosBlanco()+")";
        BaseDatos.ejecutar(sql);
        BaseDatos.desconectar();
    }
      
      public void GuardarVM() throws Exception{
        BaseDatos.conectar();
        String sql="INSERT INTO votos_mesa (departamento,provincia,distrito,numeroMesa,institucion,direccion,partido,votosValidos,partido2,votosvP2,partido3,votosvP3)";
        sql+="VALUES('"+VM.getDepartmaneto()+"','"+VM.getProvincia()+"','"+VM.getDistrito()+"','"+VM.getNumeroMesa()+"','"+VM.getInstitucion()+"','"+VM.getDireccion()+"',"
                + "'"+VM.getPartido()+"',"+VM.getVotosValidos()+",'"+VM.getPartido2()+"',"+VM.getVotosvP2()+",'"+VM.getPartido3()+"',"+VM.getVotosvP3()+")";
        BaseDatos.ejecutar(sql);
        BaseDatos.desconectar();
    }
      
      public ArrayList listarVotosT() throws Exception {
        BaseDatos.conectar();
        String sql="SELECT * FROM votos_totales";        
        ResultSet rs = BaseDatos.consultar(sql);
        ArrayList<VotosTotales> votosT = new ArrayList<VotosTotales>();
        while(rs.next()){
           VotosTotales  temp= new VotosTotales(rs.getInt("idvotos_totales"),
                    rs.getString("departamento"),
                    rs.getString("provincia"),
                     rs.getString("distrito"),
                     rs.getInt("votosTotales"),
                     rs.getInt("votosNulos"),
                     rs.getInt("votosBlanco"));
        
            votosT.add(temp);
        }
        BaseDatos.desconectar();
        return votosT;        
    }
      //***************************************************************
      
       //************************************************************
       //*************SECCION PARTIDO***************************//
      public void GuardarPartido() throws Exception{
        BaseDatos.conectar();
        String sql="INSERT INTO partidos (nombre,ubicacion,candidato)";
        sql+="VALUES('"+PT.getNombre()+"','"+PT.getUbicacion()+"','"+PT.getCandidato()+"')";
        BaseDatos.ejecutar(sql);
        BaseDatos.desconectar();
    }
      //Listar partidos
      public ArrayList listarPartidos() throws Exception {
        BaseDatos.conectar();
        String sql="SELECT * FROM partidos";        
        ResultSet rs = BaseDatos.consultar(sql);
        ArrayList<partido> partidos = new ArrayList<partido>();
        while(rs.next()){
            partido temp= new partido(rs.getInt("idpartidos"),
                    rs.getString("nombre"),
                    rs.getString("ubicacion"),
                     rs.getString("candidato"));
        
            partidos.add(temp);
        }
        BaseDatos.desconectar();
        return partidos;        
    }
      
    //  *****************SESSION******************
      public void Sesion() throws Exception{
        BaseDatos.conectar();
        String sql="SELECT * FROM personerose where dniLT='"+PER.getDniLT()+"' AND '"+PER.getPassLT()+"'";
        BaseDatos.ejecutar(sql);
        BaseDatos.desconectar();
    }
}
