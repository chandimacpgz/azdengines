/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Sales;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Chandima
 */
public class SalesDiscountAds extends HttpServlet {

    Connection conn;
    Statement stmt;
    ResultSet res1;
    SalesDatabaseConnection dbconn;
    String query1, DisTitle, DisEmpName;
    int DisValue;


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
        
        

        try {           
       
            dbconn = new SalesDatabaseConnection();

            DisTitle = request.getParameter("DisAdTitle");
            DisEmpName = request.getParameter("DisEmpName");
            DisValue = Integer.parseInt(request.getParameter("DisValue"));
            
            
            
           conn = dbconn.setConnection();
           stmt = conn.createStatement();

            query1 = "insert into DiscountAd(DiscountName,EmphasizeName,DiscountValue) values('" + DisTitle + "','" + DisEmpName + "'," + DisValue + "); ";
            //query1 = "insert into DiscountAd(DiscountName,EmphasizeName,DiscountValue) values('ABC','DEF',12); ";
           // query1="insert into DiscountAd(DiscountName) values('"+DisTitle+"')";
            
           int i = stmt.executeUpdate(query1);
            

        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("/modules/sales/sal_dberror.jsp");
            rd.forward(request, response);
            e.printStackTrace();
        } finally {
           RequestDispatcher rd = request.getRequestDispatcher("/modules/sales/sal_index.jsp");
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