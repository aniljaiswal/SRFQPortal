/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;

import classes.NewHibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author dell
 */
public class NewClass {
    public static void main(String[] arg){
        Session s=NewHibernateUtil.getSessionFactory().openSession();
        Query q=s.createQuery("{call rrm_id(?)}");
       
         
    }
}
