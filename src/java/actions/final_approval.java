/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import classes.*;
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
 * @author NITIKA
 */
public class final_approval extends org.apache.struts.action.Action {
    
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
            HttpSession s1=request.getSession(false);
            Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();

         Query q=s.createQuery("from SupplierQuatationMaster");
         List l=q.list();
         s1.setAttribute("obj",l);

         Query q1=s.createQuery("from RatingMaster");
         List l1=q1.list();
         s1.setAttribute("obj1",l1);

         return mapping.findForward("in8");
    }
}
