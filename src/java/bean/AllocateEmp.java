/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import classes.EmployeeMaster;
import classes.NewHibernateUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;

/**
 *
 * @author dell
 */
public class AllocateEmp extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
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
                         HttpSession sess= request.getSession(true);
                         try{
                Session s= NewHibernateUtil.getSessionFactory().openSession();
                List l1=s.createQuery("select empId from EmployeeMaster").list();
                EmployeeMaster ob=new EmployeeMaster();
                ArrayList le=new ArrayList();
                
                Iterator it=l1.iterator();
                while(it.hasNext())
                { 
                 
                le.add(it.next());
                }
              // sess.setAttribute("myl", le);
               sess.setAttribute("empid",le);
                System.out.println(le);
                         }catch(Exception e)
                         {
                             
                             e.printStackTrace();
                                                  }
                        
        return mapping.findForward("employee");
    }
}
