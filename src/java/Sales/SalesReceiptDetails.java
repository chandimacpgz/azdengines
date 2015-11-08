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
public class SalesReceiptDetails extends HttpServlet {

    Connection conn;
    Statement stmt;
    ResultSet res1,res2;
    SalesDatabaseConnection dbconn;
    String query1,query2, Uname, ULname, Umail, UContact;
    int UserContact,UModelID,UQuantity,TotalPrice;
    String receiptno;
    public static String CheckReceiptNo;
    String UserFName, ReceiptNO, UserLName, UserEmail,UOrderDate,UOrderTime,EngineName,SellPrice;

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
            /* TODO output your page here. You may use following sample code. */            
            dbconn = new SalesDatabaseConnection();

            CheckReceiptNo = request.getParameter("receiptno");


            conn = dbconn.setConnection();
            stmt = conn.createStatement();

            query1 = "select * from engineorder where userid='" + CheckReceiptNo.toUpperCase() + "';";
            // query1 = "select * from engineorder where userid='DCT3QTZW1E';";

            res1 = dbconn.getResult(query1, conn);
            
            while (res1.next()) {
                UserFName = res1.getString("UserFName");
                UserLName = res1.getString("UserLName");
                UserEmail = res1.getString("UserEmail");
                UserContact = res1.getInt("UserContact");
                UOrderDate = res1.getString("OrderDate");
                UOrderTime = res1.getString("OrderTime");
                UModelID = res1.getInt("ModelID"); 
                UQuantity = res1.getInt("Quantity");
            }
            res1.close();
            
            
            query2 = "select * from enginemodel where modelid='" + UModelID + "';";
            res2 = dbconn.getResult(query2, conn);
            while (res2.next()) {
                EngineName = res2.getString("EngineName");
                SellPrice =  res2.getString("SellingPrice"); 
            }
            res2.close();
            TotalPrice =  UQuantity*Integer.parseInt(SellPrice);
            
        } catch (Exception e) {
            RequestDispatcher rd = request.getRequestDispatcher("modules/sales/sal_dberror.jsp");
            rd.forward(request, response);
            e.printStackTrace();
        } finally {
            request.setAttribute("UID", CheckReceiptNo.toUpperCase());
            request.setAttribute("UFName", UserFName);
            request.setAttribute("ULName", UserLName);
            request.setAttribute("UEmail", UserEmail);
            request.setAttribute("UContact", UserContact);
            request.setAttribute("UMID", UModelID);
            request.setAttribute("UQty", UQuantity);
            request.setAttribute("UOrderDate", UOrderDate);
            request.setAttribute("UOrderTime", UOrderTime);
            request.setAttribute("UEngineName", EngineName);
            request.setAttribute("USellPrice", SellPrice);
            request.setAttribute("UTotal", TotalPrice);
            
            RequestDispatcher rd = request.getRequestDispatcher("modules/sales/sal_receipt_details.jsp");
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
