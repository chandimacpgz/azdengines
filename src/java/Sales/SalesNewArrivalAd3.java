package Sales;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet to handle File upload request from Client
 *
 * @author Javin Paul
 */
public class SalesNewArrivalAd3 extends HttpServlet {

    Connection conn;
    Statement stmt;
    SalesDatabaseConnection dbconn;
    String query1, name;
    String title1;
    private final String UPLOAD_DIRECTORY = "D:/Academic Stuff/Level 3/Semester 5/IN 3100 - Enterprise Applications Development/Mini Project/EADLocalRepo/EADazdEnginesCustomerApp/web/images/Ad Photos/NewArrival/";

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        //process only if its multipart content
        if (ServletFileUpload.isMultipartContent(request)) {

            try {

                dbconn = new SalesDatabaseConnection();
                conn = dbconn.setConnection();
                stmt = conn.createStatement();
                
                
                
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);

                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        name = new File(item.getName()).getName();
                        item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
                    }
                }
                //query1 = "update ArrivalAd set ArrivalImage1='" + name + "' where ArrivalID=(SELECT MAX(ArrivalID) FROM ArrivalAd) ";
                query1 = "insert into ArrivalAd(ArrivalImage3) values('"+name+"')";
                int i = stmt.executeUpdate(query1);

                //File uploaded successfully
                request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
                request.setAttribute("message", "File Upload Failed due to " + ex);
            }

        } else {
            request.setAttribute("message",
                    "Sorry this Servlet only handles file upload request");
        }


        request.getRequestDispatcher("/modules/sales/sal_index.jsp").forward(request, response);

    }

}
