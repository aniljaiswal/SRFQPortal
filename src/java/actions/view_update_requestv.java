/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import classes.NewHibernateUtil;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;



/**
 *
 * @author kunal
 */
public class view_update_requestv extends org.apache.struts.action.Action {
    
   
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        try
        {
           HttpSession s1=request.getSession(true);
Session s=NewHibernateUtil.getSessionFactory().openSession();


    Query q=s.createQuery("from RequirementMaster");
    List l=q.list();
    s1.setAttribute("obj",l);
    
            
         }

        catch(Exception e)
         {
            e.printStackTrace();
             System.out.println("exception...."+e.getMessage());
        }
         return mapping.findForward("in3");
    }
}