/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

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
 * @author Kanika
 */
public class viewHistory extends org.apache.struts.action.Action {
    
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
        
        HttpSession se=request.getSession(true);
        String button=request.getParameter("xyz");
        System.out.println("value of xyz is:"+button);
           Session s=util.NewHibernateUtil.getSessionFactory().openSession();
            Query q=(Query)s.createQuery("select statusId from StatusMaster");
            List l=q.list();
            se.setAttribute("ids",l);
        return mapping.findForward("history");
    }
}
