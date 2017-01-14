/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app.controlador;

//import app.entidad.Prueba;
//import app.entidad.Personeros;
import app.entidad.Personeros;
import app.entidad.VotosTotales;
import app.entidad.votosMesa;
import app.servicio.appServicio;
//import app.servicio.appServicio;
import java.io.IOException;
import java.util.ArrayList;
//import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Carlos J
 */
@WebServlet(urlPatterns = {"/ControladorVotos"})
public class ControladorVotos extends HttpServlet {
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
         String operacion = request.getParameter("operacion");
        appServicio servicio = new appServicio();
        
         if (operacion.equals("VotosM")){//enviar al formulario de menu
            response.sendRedirect("formVotosMesa.jsp");
        }
         if (operacion.equals("ListaVT")){//enviar al formulario de menu
            response.sendRedirect(".jsp");
        }
        
        
        
            //************************************************************
       //*************SECCION VOTOS***************************
       if (operacion.equals("GuardarVotosT")) {
            try {
                String departamento=request.getParameter("txtDep");
                 String provincia=request.getParameter("txtPro");
                  String distrito=request.getParameter("txtDist");
                  
                  Integer votosTotales=Integer.parseInt(request.getParameter("txtVT"));
                  Integer votosNulos=Integer.parseInt(request.getParameter("txtVN"));
                  Integer votosBlanco=Integer.parseInt(request.getParameter("txtVB"));
                             
                VotosTotales votosT = new VotosTotales(departamento,provincia,distrito,votosTotales,votosNulos,votosBlanco);
                request.setAttribute("votosT", votosT);
                servicio.GuardarVotos(votosT);
            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());
            }
            RequestDispatcher rd = request.getRequestDispatcher("Confirmacion.jsp");
            rd.forward(request, response);
        }
         
         
         //votos por mesa
         if (operacion.equals("GuardarVMT")) {
            try {
                String departamento=request.getParameter("txtD");
                 String provincia=request.getParameter("txtP");
                  String distrito=request.getParameter("txtDTT");
                   String numeroMesa=request.getParameter("txtnumM");
                    String institucion=request.getParameter("txtIns");
                     String direccion=request.getParameter("txtDireccion");
                      String partido=request.getParameter("txtPartido");                    
                  Integer votosValidos=Integer.parseInt(request.getParameter("txtVV"));
                  
                   String partido2=request.getParameter("txtPartido2");                    
                  Integer votosvP2=Integer.parseInt(request.getParameter("txtVV2")); 
                  String partido3=request.getParameter("txtPartido3");                    
                  Integer votosvP3=Integer.parseInt(request.getParameter("txtVV3"));
                             
                votosMesa votosM = new votosMesa(departamento,provincia,distrito,numeroMesa,institucion,direccion,partido,votosValidos,partido2,votosvP2,partido3,votosvP3);
                request.setAttribute("votosM", votosM);
                servicio.GuardarVM(votosM);
            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());
            }
            RequestDispatcher rd = request.getRequestDispatcher("Confirmacion.jsp");
            rd.forward(request, response);
        }
         
         
     if (operacion.equals("ListarVotos")) {//Listar Personeros
            try {
                ArrayList<VotosTotales> votos = servicio.listarVotosTT();
                request.setAttribute("votos", votos);

            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());

            }
            RequestDispatcher rd = request.getRequestDispatcher("ListaVotosTotales.jsp");
            rd.forward(request, response);
        }
         
     } 
    
    
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
