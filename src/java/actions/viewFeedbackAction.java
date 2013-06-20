/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import util.NewHibernateUtil;
import classes.RequirementMaster;
/**
 *
 * @author Kanika
 */
public class viewFeedbackAction extends org.apache.struts.action.Action {
    
      private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
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
            System.out.println("Hello");
            Iterator a=l.iterator();
            while(a.hasNext())
            {
             RequirementMaster ob=(RequirementMaster)a.next();
                System.out.println(ob.getReqId());
            }
    return mapping.findForward("in3");
        }

        catch(Exception e)
         {
            e.printStackTrace();
             System.out.println("exception...."+e.getMessage());
            return mapping.findForward("in3");
        }
    }
}