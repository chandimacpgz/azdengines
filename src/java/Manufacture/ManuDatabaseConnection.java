/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Manufacture;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Krish
 */
public class ManuDatabaseConnection {

    private static ManuDatabaseConnection db=new ManuDatabaseConnection();
    public static ManuDatabaseConnection getinstance(){
        return getinstance();
    }
    Connection conn;
    Statement stmt;
    ResultSet res;
    public ManuDatabaseConnection(){
    
    }
    public Connection setConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/AZDENGINE","root","");
        }catch(Exception e){
            
        }return conn;
    }
    public ResultSet getResult(String sql, Connection conn){
        this.conn=conn;
        try{
            stmt=conn.createStatement();
            res=stmt.executeQuery(sql);
        }catch(Exception e){
        
        }return res;
    }
}
  
