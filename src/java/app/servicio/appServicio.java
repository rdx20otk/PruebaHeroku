/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.servicio;
import app.dao.appDao;
import app.entidad.Prueba;
import app.entidad.Personeros;
import app.entidad.VotosTotales;
import app.entidad.votosMesa;
import app.entidad.partido;
import java.util.ArrayList;

/**
 *
 * @author Carlos J
 */
public class appServicio {
      public void registrarProducto(Prueba p) throws Exception{
        if(p==null) throw new Exception("El producto está vacío");
        appDao dao= new appDao(p);
        dao.registrar();        
    }
      
       //************************************************************
       //*************SECCION PERSONEROS***************************//
      
        public void registrarPersoneros(Personeros PE) throws Exception{
        if(PE==null) throw new Exception("El producto está vacío");
        appDao dao= new appDao(PE);
        dao.RegistrarPER();
    }
        //Listar Personeros
      public ArrayList listarPersoneros() throws Exception{
        return new appDao().listarPersoneros();
    }
      //************************************************************
      
       //************************************************************
       //*************SECCION VOTOS***************************//
      public void GuardarVotos(VotosTotales VT) throws Exception{
        if(VT==null) throw new Exception("El producto está vacío");
        appDao dao= new appDao(VT);
        dao.GuardarVT();
    }
       public void GuardarVM(votosMesa VM) throws Exception{
        if(VM==null) throw new Exception("El producto está vacío");
        appDao dao= new appDao(VM);
        dao.GuardarVM();
    }
       //listar votos totales
        public ArrayList listarVotosTT() throws Exception{
        return new appDao().listarVotosT();
    }
       //************************************************************
       //*************SECCION PARTIDO***************************//
         public void GuardarPartidos(partido PT) throws Exception{
        if(PT==null) throw new Exception("El producto está vacío");
        appDao dao= new appDao(PT);
        dao.GuardarPartido();
    }
          public ArrayList listarPartidos() throws Exception{
        return new appDao().listarPartidos();
    }
          


    
}
