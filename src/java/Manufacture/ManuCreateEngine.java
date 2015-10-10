/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manufacture;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Krish
 */
public class ManuCreateEngine extends HttpServlet {
        String modelid;
         Connection conn;
    Statement stmt;
    ResultSet res1;
    ManuDatabaseConnection dbconn;
    String query1,query2;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try  {
            
             dbconn=new ManuDatabaseConnection();
            modelid=request.getParameter("id");
           
            conn=dbconn.setConnection();
            stmt=conn.createStatement();
            query1="insert into EngineType(ModelID) values('"+modelid+"')";
            query2="update EngineModel Set Quantity=Quantity+1 where ModelID='"+modelid+"'";
            int i =stmt.executeUpdate(query1);
             int i1 =stmt.executeUpdate(query2);
        }   catch (Exception e){
             
            RequestDispatcher rd =request.getRequestDispatcher("/modules/manufacturing/error.jsp");
            rd.forward(request, response);
        }finally
        {
            
             RequestDispatcher rd =request.getRequestDispatcher("ManuDisplayEngine");
            rd.forward(request, response);
             
             out.close();
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
