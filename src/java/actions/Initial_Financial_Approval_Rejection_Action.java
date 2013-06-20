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
 * @author RAKSHIT
 */
public class Initial_Financial_Approval_Rejection_Action extends org.apache.struts.action.Action {
    
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
           try {
               System.out.println("ok");
        HttpSession session=request.getSession(true);
              Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
              Query q=s.createQuery("from SupplierMaster");
              List l=q.list();
              session.setAttribute("li", l);
              Query q1=s.createQuery("from SupplierQuatationMaster");
              List li1=q1.list();
              session.setAttribute("li1", li1);
         
        }
           catch(Exception e){
               e.printStackTrace();
           }
              return mapping.findForward("ifaor");
    }
}
