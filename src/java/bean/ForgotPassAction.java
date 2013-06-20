/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import classes.EmployeeMaster;
import classes.NewHibernateUtil;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;

/**
 *
 * @author dell
 */
public class ForgotPassAction extends org.apache.struts.action.Action {

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
             ForgotPassBean bn=(ForgotPassBean)form;
             String id=bn.getId();
             Session s=NewHibernateUtil.getSessionFactory().openSession();
             try{
                 List l1=s.createQuery("select password,employeeMaster from UserMaster where employeeMaster.='"+id+"'").list();
                 Iterator it=l1.iterator();
                
                 if(it.hasNext())
                 {Object[] obj=(Object [])it.next();
                 String pass=(String)obj[0];
                 EmployeeMaster em=(EmployeeMaster)obj[1];
                 String empid=(String)em.getEmpId();
                 String email=(String)em.getEmailId();
                 System.out.println("empid"+empid);
                 System.out.println("email"+email);
                 System.out.println("pass"+pass);
                 }
                 
             }
             catch(Exception e)
             {System.out.println(e.getMessage());
             }
             
        return mapping.getInputForward();
    }
}
