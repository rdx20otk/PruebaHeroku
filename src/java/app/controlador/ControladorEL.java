
package app.controlador;
//import app.entidad.Producto;
import app.entidad.Prueba;
import app.entidad.Personeros;
import app.entidad.partido;
import app.servicio.appServicio;
import java.io.IOException;
import java.util.ArrayList;
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
@WebServlet(urlPatterns = {"/ControladorEL"})
public class ControladorEL extends HttpServlet {
       
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
         String operacion = request.getParameter("operacion");
        appServicio servicio = new appServicio();
        
         if (operacion.equals("Menu")){//enviar al formulario de menu
            response.sendRedirect("principal.jsp");
        }
         if (operacion.equals("Partido")){//enviar al formulario de menu
            response.sendRedirect("formIngresarPartido.jsp");
        }
          if (operacion.equals("Cancelar")){//vuelve al principal
            response.sendRedirect("principal.jsp");
        }
         if (operacion.equals("VotosTotales")){//enviar al formulario de menu
            response.sendRedirect("formVotosTotales.jsp");
        }
         if (operacion.equals("Personeros")){//enviar al formulario de menu
            response.sendRedirect("formRegistrarPersoneros.jsp");
        }
         
         
             if (operacion.equals("Registrar")) {//ejemplo de ingreso
            try {
                String nombre=request.getParameter("txtNombre");
                String descripcion=request.getParameter("txtDescripcion");
                                
                Prueba prueba = new Prueba(nombre, descripcion);
                request.setAttribute("producto", prueba);
                servicio.registrarProducto(prueba);                
            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());
            }
            RequestDispatcher rd = request.getRequestDispatcher("principal.jsp");
            rd.forward(request, response);
        }
             
               //************************************************************
       //*************SECCION PERSONEROS***************************
        if (operacion.equals("RegistrarPersonero")) {//Registrar Personero
            try {
                 String departamento=request.getParameter("txtDepartamento");
                 String provincia=request.getParameter("txtProvincia");
                  String distrito=request.getParameter("txtDistrito");
                   String orgPolitica=request.getParameter("txtOrgPolitica");
                   
                    String dniLT=request.getParameter("txtdniLT");
                     String apPaternoLT=request.getParameter("txtapellidopLT");
                    String apMaternoLT=request.getParameter("txtapellidomLT");
                    String nombresLT=request.getParameter("txtnombresLT");
                    String sexoLT=request.getParameter("txtsexoLT");
                    String fechaLT=request.getParameter("txtfechaLT");
                    String passLT=request.getParameter("txtpassLT");
                    
                     String dniLA=request.getParameter("txtdniLA");
                     String apPaternoLA=request.getParameter("txtapellidopLA");
                    String apMaternoLA=request.getParameter("txtapellidomLA");
                    String nombresLA=request.getParameter("txtnombresLA");
                    String sexoLA=request.getParameter("txtsexoLA");
                    String fechaLA=request.getParameter("txtfechaLA");
                    String passLA=request.getParameter("txtpassLA");
                    
                     String dniTT=request.getParameter("txtdniTT");
                     String apPaternoTT=request.getParameter("txtapellidopTT");
                    String apMaternoTT=request.getParameter("txtapellidomTT");
                    String nombresTT=request.getParameter("txtnombresTT");
                    String sexoTT=request.getParameter("txtsexoTT");
                    String fechaTT=request.getParameter("txtfechaTT");
                    String passTT=request.getParameter("txtpassTT");
               
                                
                Personeros personero = new Personeros(departamento,provincia,distrito,orgPolitica,dniLT,apPaternoLT,apMaternoLT,nombresLT,sexoLT,fechaLT,passLT,dniLA,apPaternoLA,apMaternoLA,nombresLA,sexoLA,fechaLA,passLA,dniTT,apPaternoTT,apMaternoTT,nombresTT,sexoTT,fechaTT,passTT);
                request.setAttribute("personero", personero);
                servicio.registrarPersoneros(personero);
            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());
            }
            RequestDispatcher rd = request.getRequestDispatcher("Respuesta.jsp");
            rd.forward(request, response);
        }
                
        // exportar a documento
        if (operacion.equals("ExportarDoc")){
            response.sendRedirect("Respuesta.jsp");
        }
        //*******************************************************
        if (operacion.equals("ListarPersoneros")) {//Listar Personeros
            try {
                ArrayList<Personeros> personeros = servicio.listarPersoneros();
                request.setAttribute("personeros", personeros);

            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());

            }
            RequestDispatcher rd = request.getRequestDispatcher("ListarPersoneros.jsp");
            rd.forward(request, response);
        }
        //*******************************EXPORTAR A EXCEL**************************+
        if (operacion.equals("ExportarExcel")) {//Listar Personeros
            try {
                ArrayList<Personeros> personeros = servicio.listarPersoneros();
                request.setAttribute("personeros", personeros);

            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());

            }
            RequestDispatcher rd = request.getRequestDispatcher("PersonerosEXcel.jsp");
            rd.forward(request, response);
        }
        
        //********************SECCION PARTIDOS**************************
        
         if (operacion.equals("GuardarPartido")) {//Registrar Personero
            try {
                 String nombre=request.getParameter("txtNombreP");
                 String ubicacion=request.getParameter("txtUbicacion");
                  String candidato=request.getParameter("txtCandidato");                   
               
               
                                
                partido partidos = new partido(nombre,ubicacion,candidato);
                request.setAttribute("partidos", partidos);
                servicio.GuardarPartidos(partidos);
            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());
            }
            RequestDispatcher rd = request.getRequestDispatcher("Confirmacion.jsp");
            rd.forward(request, response);
        }
          if (operacion.equals("ListarPartidos")) {//Listar Personeros
            try {
                ArrayList<partido> partidos = servicio.listarPartidos();
                request.setAttribute("partidos", partidos);

            } catch (Exception e) {
                request.setAttribute("error", e.getMessage());

            }
            RequestDispatcher rd = request.getRequestDispatcher("ListarPartidos.jsp");
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
