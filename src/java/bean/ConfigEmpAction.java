/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

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
 * @author MANI
 */
public class ConfigEmpAction extends org.apache.struts.action.Action {
    
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
            try{
                Session ses=NewHibernateUtil.getSessionFactory().openSession();
                Query q=ses.createQuery("from EmployeeMaster");
                List list=q.list();
                HttpSession session=request.getSession(true);
                session.setAttribute("list", list);

                Query q1=ses.createQuery("from StatusMaster");
                List list1=q1.list();
                session.setAttribute("list1", list1);
                
              
            }catch(Exception e){
                e.printStackTrace();
            }
        return mapping.findForward("conemp");
    }
}
