/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alumno
 */
public class RegistrarReporte extends HttpServlet {

    private Connection con;
    private Statement set;
    private ResultSet rs;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    public void init(ServletConfig scg) throws ServletException{
        //se dene de establecer los elementos para la conexion con bd
        String url = "jdbc:mysql:8090//localhost/reporteslab";
                   //controlador:motorBD:puerto//IP/nombreBD
        String username = "root";
        String password = "vanevalevivcb3";
        
        try{
            //internat conectar a la bd
            Class.forName("com.mysql.jdbc.Driver");
            url = "jdbc:mysql://localhost/reporteslab";
            con = DriverManager.getConnection(url, username, password);
            set = con.createStatement();
            
            System.out.println("Si conecto a la BD :3 *w* ");
            
        }catch(Exception e){
            System.out.println("No conecto, solo juguito contigo uwu");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        
        }
    }
    
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registro de Reportes</title>"); 
            out.println("<link rel=\"stylesheet\" href=\"CSS/style.css\">");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"container\">\n" +
"            <h1>Consulta de Alumnos de la Batiz</h1>\n" +
"            <br>\n" +
"            <a href=\"ConsultarReportes\">hola</a>\n" +
"        </div>\n" +
"    <header class=\"header\">\n" +
"        <div class=\" cab_nav\">\n" +
"            <img src=\"Imagenes/escudoCECyT9.png\" alt=\"Logo\" class=\"logo_img\">\n" +
"            <h2 class=\"nomb_logo\">Reportes de Laboratorios</h2>\n" +
"            <ul>\n" +
"                <li class=\"marca\"><a href=\"index.html\">Inicio</a></li>\n" +
"                <li><a href=\"Creporte.html\">Crear Reporte</a></li>\n" +
"                <li><a href=\"Ereporte.html\">Editar Reporte</a></li>\n" +
"                <li class=\"sesion\"><a href=\"\">Sesion</a></li>  \n" +
"            </ul>\n" +
"        </div>\n" +
"    </header>\n" +
"        <br>\n" +
"        <br>\n" +
"        <br>\n" +
"        <br>\n" +
"        <br>\n" +
"        <br>\n" +
"        <br>\n" +
"        <br>");
            try{
                //Obtener los parametros para poder insertarlos en la BD
                String tipo_lab, cpu, monitor, config, accesorios, asignatura, grupo, fecha,hora, etiqueta,reporte, edomaq, edorep ;
                
                
                tipo_lab = request.getParameter("tipo_lab");
                cpu = request.getParameter("cpu");
                monitor = request.getParameter("monitor");
                config = request.getParameter("config");
                accesorios = request.getParameter("accesorios");
                asignatura = request.getParameter("asignatura");
                grupo = request.getParameter("grupo");
                fecha = request.getParameter("fecha");
                hora = request.getParameter("hora");
                etiqueta = request.getParameter("etiqueta");
                reporte = request.getParameter("reporte");
                edomaq = request.getParameter("edomaq");
                edorep = request.getParameter("edorep");
                
                System.out.println(tipo_lab);
                String q = "insert into claboratorio (tipo_lab) values ('"+tipo_lab+"')";
                set.executeUpdate(q);
                System.out.println(cpu);
                String a = "insert into mcpu (descripcion) values('"+cpu+"')";
                set.executeUpdate(a);
                System.out.println(monitor);
                String b = "insert into mmonitor (descripcion) values('"+monitor+"')";
                set.executeUpdate(b);
                System.out.println(config);
                String c = "insert into mconfiguracion (descripcion) values('"+config+"')";
                set.executeUpdate(c);
                System.out.println(accesorios);
                String z = "insert into caccesorios (descripcion) values('"+accesorios+"')";
                set.executeUpdate(z);
                System.out.println(etiqueta);
                String m = "insert into metiqueta (etiqueta) values('"+etiqueta+"')";
                set.executeUpdate(m);
                
                int id_lab,id_maquina,id_configuracion, id_monitor, id_accesorio, id_etiqueta;
                //que tipo de querry voy a realizar
                    String n = "select distinct id_lab from claboratorio where tipo_lab='"+tipo_lab+"'";
                    
                    set = con.createStatement();
                    rs = set.executeQuery(n);
                    out.print("id_lab");
                    
                    String o = "select distinct id_maquina from mcpu where descripcion='"+cpu+"'";
                    
                    set = con.createStatement();
                    rs = set.executeQuery(o);
                    out.print("id_maquina");
                    
                    String p = "select distinct id_monitor from mmonitor where descripcion='"+monitor+"'";
                    
                    set = con.createStatement();
                    rs = set.executeQuery(p);
                    out.print("id_monitor");
                    
                    String r = "select distinct id_configuracion from mconfiguracion where descripcion='"+config+"'";
                    
                    set = con.createStatement();
                    rs = set.executeQuery(r);
                    out.print("id_configuracion");
                    
                    String t = "select distinct id_accesorio from caccesorios where descripcion='"+accesorios+"'";
                    
                    set = con.createStatement();
                    rs = set.executeQuery(t);
                    out.print("id_accesorio");
                    
                    String s = "select distinct id_etiqueta from metiqueta where etiqueta='"+etiqueta+"'";
                    
                    set = con.createStatement();
                    rs = set.executeQuery(s);
                    out.print("id_etiqueta");
                    
                    
                    while(rs.next()){
                        id_lab = rs.getInt("id_lab");
                        id_maquina = rs.getInt("id_maquina");
                        id_configuracion = rs.getInt("id_configuracion");
                        id_monitor = rs.getInt("id_monitor");
                        id_accesorio = rs.getInt("id_accesorio");
                        id_etiqueta = rs.getInt("id_etiqueta");
                  
                        
                        
                        String key1 = "insert into mequipo (mcpu_id_maquina, mmonitor_id_monitor, "
                       + "caccesorios_id_accesorio, mconfiguracion_id_configuracion, "
                       + "metiqueta_id_etiqueta, claboratorio_id_lab ) values("+id_maquina+", "+id_monitor+", "+id_accesorio+", "+id_configuracion+", "+id_etiqueta+","+id_lab+")";
                        set.executeUpdate(key1);
                    }
                    
                    rs.close();
                    set.close();   
                
                
                
              
               
               
                
                
                System.out.println(asignatura);
                String f = "insert into casignatura (nombre) values('"+asignatura+"')";
                set.executeUpdate(f);
                
                System.out.println(grupo);
                String g = "insert into cgrupo (nombre_grupo) values('"+grupo+"')";
                set.executeUpdate(g);
                
                System.out.println(fecha);
                String h = "insert into dfecha (fecha) values('"+fecha+"')";
                set.executeUpdate(h);
                
                System.out.println(hora);
                String i = "insert into dhora (hora) values('"+hora+"')";
                set.executeUpdate(i);
                
                System.out.println(reporte);
                String j = "insert into cestadomaquina (descripcion) values('"+reporte+"')";
                set.executeUpdate(j);
                
                System.out.println(edorep);
                String k = "insert into cestadoreporte (tipo) values('"+edorep+"')";
                set.executeUpdate(k);
                
                
                
               
                
               out.println("<h1>Reporte Registrado con Exito</h1>");
                System.out.println("Dato registrado");
                
             out.println("<footer class=\"footer\">\n" +
"                <h2 class=\"footer_logo\">Seleccione el Laboratorio:</h2>\n" +
"                <ul> \n" +
"                    <li><a href=\"LNV.html\">LNV</a></li>\n" +
"                    <li><a href=\"LBD.html\">LBD</a></li>\n" +
"                    <li><a href=\"4.0.html\">4.0</a></li>\n" +
"                    <li><a href=\"LSD.html\">LDS</a></li>  \n" +
"                </ul>\n" +
"        </footer>");
                
           
                
            }catch(Exception e){
                
                System.out.println("No se pudo registrar verificar los datos de entrada");
                System.out.println(e.getMessage());
                System.out.println(e.getStackTrace());
                out.println("<h1>El reporte no se pudo Registrar, hay un error</h1>");
            }
            
            out.println("<a href='Consulta' >Consulta</a>");
            out.println("</body>");
            out.println("</html>");
        }   
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
    
    public void destroy(){
        try{
            con.close();
        }catch(Exception e){
            super.destroy();
        }
    }

}