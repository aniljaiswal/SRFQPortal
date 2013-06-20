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
public class AddContactAction extends org.apache.struts.action.Action {
    
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
         Session ses=NewHibernateUtil.getSessionFactory().openSession();
        HttpSession session=request.getSession(true);
        Query q=ses.createQuery("from SupplierStatusMaster");
        List list=q.list();
        session.setAttribute("list", list);

        Query q1=ses.createQuery("from SalutaionMaster");
        List list1=q1.list();
        session.setAttribute("list1", list1);

        Query q2=ses.createQuery("from SupplierMaster");
        List list2=q2.list();
        session.setAttribute("list2", list2);

        Query q3=ses.createQuery("from SupplierContactMaster");
        List list3=q3.list();
        session.setAttribute("list3", list3);
        return mapping.findForward("add");
    }
}
