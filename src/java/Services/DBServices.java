/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import java.sql.*;

import java.util.*;

/**
 *
 * @author dell
 */
public class DBServices {
public static Connection con;
 static
 {
    try{
    Properties p = new Properties();
    java.io.FileInputStream fis = new java.io.FileInputStream("c:\\java\\SQLConfig.txt");
    p.load(fis); fis.close();
    Class.forName(p.getProperty("driver"));
    String url = p.getProperty("url");
    String user = p.getProperty("user");
    String pass = p.getProperty("password");
    con = DriverManager.getConnection(url,user,pass);
  }catch(Exception e){
    try{
       java.io.FileOutputStream fos = new java.io.FileOutputStream("c:\\java\\ErrorLog.txt",true);
       String errorString  = "CONNECTION ERROR : "+e.getMessage();
       fos.write(errorString.getBytes());
       fos.close();
       }catch(Exception e1){
       e1.printStackTrace();
       }
  }
 }

 public static Connection getConnection()
 {
  return con;
 }

 public static ResultSet selectData(String query)
  {
     try{
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery(query);
    return rs;
      }
     catch(Exception e)
     {
         e.printStackTrace();
       try{
       java.io.FileOutputStream fos = new java.io.FileOutputStream("c:\\java\\ErrorLog.txt",true);
       String errorString  = "SELECT QUERY ERROR : "+e.getMessage();
       fos.write(errorString.getBytes());
       fos.close();
       }catch(Exception e1){

       e1.printStackTrace();}
       return null;
     }
  }
 public static int updateData(String query)
 {
   try{
   Statement st = con.createStatement();
   int ur = st.executeUpdate(query);
   return ur;
     }
   catch(Exception e)
     {
       try{
       java.io.FileOutputStream fos = new java.io.FileOutputStream("c:\\java\\ErrorLog.txt",true);
       String errorString  = "UPDATE QUERY ERROR : "+e.getMessage();
       fos.write(errorString.getBytes());
       fos.close();
       }catch(Exception e1){}
       return 0;
     }
 }

 public static int[] updateAllData(String ... queries)
 {
   try{
   Statement st = con.createStatement();
   for(String q : queries)
   {
    st.addBatch(q);
   }
   int [] ur = st.executeBatch();
   return ur;
     }
   catch(Exception e)
     {
       try{
       java.io.FileOutputStream fos = new java.io.FileOutputStream("c:\\java\\ErrorLog.txt",true);
       String errorString  = "BATCH UPDATE ERROR : "+e.getMessage();
       fos.write(errorString.getBytes());
       fos.close();
       }catch(Exception e1){}
       return null;
     }
 }
}