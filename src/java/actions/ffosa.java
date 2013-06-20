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
public class ffosa extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
     @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
    try{
              Session s=NewHibernateUtil.getSessionFactory().openSession();
              Query q=s.createQuery("from SupplierMaster");
              List list=q.list();
              HttpSession session=request.getSession(true);
              session.setAttribute("list", list);
              System.out.println("heloo.."+list);
              return mapping.findForward("ffs");
        }
             catch(Exception e){
             e.printStackTrace();
            }

        return mapping.findForward("ffs");
    }
}
