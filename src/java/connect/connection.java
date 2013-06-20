/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package connect;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Devvrat
 */
public class connection {
public static Connection con;
public static Connection getcon()
    {
    try{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srfq","root","sudhir");
        System.out.println("Connection created");
    }
    catch(Exception e)
    {
        System.out.println(" Connection ...."+e.getMessage());
    }
    return con;
}
   
}
