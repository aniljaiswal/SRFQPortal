/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import util.NewHibernateUtil;
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
public class add_new_request extends org.apache.struts.action.Action {
    
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
        try
        {
     HttpSession s1=request.getSession(false);

Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
    Query q=s.createQuery("from MaterialMaster");
    List l=q.list();
    s1.setAttribute("obj",l);
    Query qu=s.createQuery("from UnitMeasureMaster");
    List li=qu.list();
    s1.setAttribute("obj1",li);
    Query que=s.createQuery("from RequirementPriorityMaster");
    List lis=que.list();
    s1.setAttribute("obj2",lis);
    }
        catch(Exception e)
         {
             System.out.println("exception...."+e.getMessage());
        }
        return mapping.findForward("in4");
    }
}