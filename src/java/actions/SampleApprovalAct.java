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
import util.NewHibernateUtil;

/**
 *
 * @author Kanika
 */
public class SampleApprovalAct extends org.apache.struts.action.Action {

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
          HttpSession s1=request.getSession(true);
        Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
        Query q=s.createQuery("from MaterialTechGoodwillMaster");
        List l=q.list();
        s1.setAttribute("obj2",l);

        Query q1=s.createQuery("from SupplierQuatationMaster");
        List l1=q1.list();
        s1.setAttribute("obj1",l1);

        Query q2=s.createQuery("from RatingMaster");
        List lis=q2.list();
        s1.setAttribute("obj3",lis);
        //return mapping.getInputForward();
        return mapping.findForward("vwfd");

    }
}

