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
import java.util.ArrayList;
import java.util.List;
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
public class ManuDisplayPart extends HttpServlet {

   Connection conn;
    Statement stmt;
    ResultSet res1,res2,res3,res4,res5,res6;
    ManuDatabaseConnection dbconn;
    String query1,query2,query3,query4,query5,query6;
     List lst1 = new ArrayList();
     List lst2 = new ArrayList();
     List lst3 = new ArrayList();
     List lst4 = new ArrayList();
     List lst5 = new ArrayList();
     List lst6 = new ArrayList();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
         dbconn=new ManuDatabaseConnection();
            conn=dbconn.setConnection();
            stmt=conn.createStatement();
            
            query1="select p.PartID,p.PartName,p.PartDescription,p.Cost,p.Quantity from EngineModel e, EngineParts p, PartType t where e.ModelID=t.ModelID and p.PartID=t.PartID and t.ModelID=1";
           query2="select p.PartID,p.PartName,p.PartDescription,p.Cost,p.Quantity from EngineModel e, EngineParts p, PartType t where e.ModelID=t.ModelID and p.PartID=t.PartID and t.ModelID=2";
           query3="select p.PartID,p.PartName,p.PartDescription,p.Cost,p.Quantity from EngineModel e, EngineParts p, PartType t where e.ModelID=t.ModelID and p.PartID=t.PartID and t.ModelID=3";
           query4="select p.PartID,p.PartName,p.PartDescription,p.Cost,p.Quantity from EngineModel e, EngineParts p, PartType t where e.ModelID=t.ModelID and p.PartID=t.PartID and t.ModelID=4";
           query5="select p.PartID,p.PartName,p.PartDescription,p.Cost,p.Quantity from EngineModel e, EngineParts p, PartType t where e.ModelID=t.ModelID and p.PartID=t.PartID and t.ModelID=5";
           query6="select p.PartID,p.PartName,p.PartDescription,p.Cost,p.Quantity from EngineModel e, EngineParts p, PartType t where e.ModelID=t.ModelID and p.PartID=t.PartID and t.ModelID=6";
           
            res1 =dbconn.getResult(query1, conn);
            res2 =dbconn.getResult(query2, conn);
            res3 =dbconn.getResult(query3, conn);
            res4 =dbconn.getResult(query4, conn);
            res5 =dbconn.getResult(query5, conn);
            res6 =dbconn.getResult(query6, conn);
          
            while(res1.next()){
                lst1.add(res1.getString("PartID"));
                lst1.add(res1.getString("PartName"));
                lst1.add(res1.getString("PartDescription"));
                lst1.add(res1.getString("Cost"));
                lst1.add(res1.getString("Quantity"));
               
            }res1.close();
             while(res2.next()){
                lst2.add(res2.getString("PartID"));
                lst2.add(res2.getString("PartName"));
                lst2.add(res2.getString("PartDescription"));
                lst2.add(res2.getString("Cost"));
                lst2.add(res2.getString("Quantity"));
               
            }res2.close();
             while(res3.next()){
                lst3.add(res3.getString("PartID"));
                lst3.add(res3.getString("PartName"));
                lst3.add(res3.getString("PartDescription"));
                lst3.add(res3.getString("Cost"));
                lst3.add(res3.getString("Quantity"));
               
            }res3.close();
             while(res4.next()){
                lst4.add(res4.getString("PartID"));
                lst4.add(res4.getString("PartName"));
                lst4.add(res4.getString("PartDescription"));
                lst4.add(res4.getString("Cost"));
                lst4.add(res4.getString("Quantity"));
               
            }res4.close();
             while(res5.next()){
                lst5.add(res5.getString("PartID"));
                lst5.add(res5.getString("PartName"));
                lst5.add(res5.getString("PartDescription"));
                lst5.add(res5.getString("Cost"));
                lst5.add(res5.getString("Quantity"));
               
            }res5.close();
             while(res6.next()){
                lst6.add(res6.getString("PartID"));
                lst6.add(res6.getString("PartName"));
                lst6.add(res6.getString("PartDescription"));
                lst6.add(res6.getString("Cost"));
                lst6.add(res6.getString("Quantity"));
               
            }res6.close();
           
        }catch (Exception e){
             
            RequestDispatcher rd =request.getRequestDispatcher("modules/manufacturing/error.jsp");
            rd.forward(request, response);
        }finally
        {
            request.setAttribute("EmpData1", lst1);
            request.setAttribute("EmpData2", lst2);
            request.setAttribute("EmpData3", lst3);
            request.setAttribute("EmpData4", lst4);
            request.setAttribute("EmpData5", lst5);
            request.setAttribute("EmpData6", lst6);
           
            RequestDispatcher rd =request.getRequestDispatcher("modules/manufacturing/man_news.jsp");
            rd.forward(request, response);
            lst1.clear();
           lst2.clear();
           lst3.clear();
           lst4.clear();
           lst5.clear();
           lst6.clear();
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
       try {
           processRequest(request, response);
       } catch (SQLException ex) {
           Logger.getLogger(ManuDisplayPart.class.getName()).log(Level.SEVERE, null, ex);
       }
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
       try {
           processRequest(request, response);
       } catch (SQLException ex) {
           Logger.getLogger(ManuDisplayPart.class.getName()).log(Level.SEVERE, null, ex);
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

}
