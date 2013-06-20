/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.viewHistoryBean;
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
public class viewHistory1 extends org.apache.struts.action.Action {
    
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
             HttpSession se=request.getSession(false);
        System.out.println(" Welcome SelAction ");
        viewHistoryBean lb=(viewHistoryBean) form;
          String sel=lb.getSel();
          Session s=util.NewHibernateUtil.getSessionFactory().openSession();
            Query q=(Query)s.createQuery("from StatusMaster where statusId='"+sel+"'");
            List le=q.list();
            se.setAttribute("rec",le);
        return mapping.findForward("history");
        }
        catch(Exception e)
         {
             System.out.println("excedption...."+e.getMessage());
            return mapping.findForward("history");
        }
    }
}

