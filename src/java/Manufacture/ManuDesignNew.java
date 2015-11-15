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
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Krish
 */
public class ManuDesignNew extends HttpServlet {
 Connection conn;
    Statement stmt;
    ResultSet res1;
    ManuDatabaseConnection dbconn;
    String query1,query2,query3,query4,query5,query6,query7,query8;
     List lst1 = new ArrayList();
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
            
             dbconn=new ManuDatabaseConnection();
          
           
            conn=dbconn.setConnection();
            stmt=conn.createStatement();
            String ename=request.getParameter("ename");
              String item=request.getParameter("item");
             String Kit=request.getParameter("kit");
              String Cap=request.getParameter("cap");
               String Cil=request.getParameter("cil");
     Random rand = new Random();  
    int n= rand.nextInt(100);
             query2="insert into EngineDesign(EID,Ename) values('"+n+"','"+ename+"')";
              int i1 =stmt.executeUpdate(query2);
             
              query4="update EngineDesign set FuelType='"+item+"' where Ename='"+ename+"'";
              int i4=stmt.executeUpdate(query4);
              query6="update EngineDesign set Kit='"+Kit+"' where Ename='"+ename+"'";
              int i6=stmt.executeUpdate(query6);
              query7="update EngineDesign set Cubic='"+Cap+"' where Ename='"+ename+"'";
              int i7=stmt.executeUpdate(query7);
              query8="update EngineDesign set Cylinder='"+Cil+"' where Ename='"+ename+"'";
              int i8=stmt.executeUpdate(query8);
               query1="select * from EngineDesign where Ename='"+ename+"'";
             res1 =dbconn.getResult(query1, conn);
                 while(res1.next()){
                lst1.add(res1.getString("EID"));
                 lst1.add(res1.getString("Ename"));
                  lst1.add(res1.getString("FuelType"));
                   lst1.add(res1.getString("Cubic"));
                    lst1.add(res1.getString("Cylinder")); 
                    lst1.add(res1.getString("Kit"));
                    
                 }res1.close(); 
        }catch (Exception e){
             
            RequestDispatcher rd =request.getRequestDispatcher("/modules/manufacturing/error.jsp");
            rd.forward(request, response);
        }finally
        {
            request.setAttribute("EmpData4", lst1);
             RequestDispatcher rd =request.getRequestDispatcher("ManuDesignEngine");
            rd.forward(request, response);
             lst1.clear();
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