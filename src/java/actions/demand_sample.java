/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import classes.*;
import org.hibernate.Query;
import org.hibernate.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.util.List;

/**
 *
 * @author kunal
 */
public class demand_sample extends org.apache.struts.action.Action {


    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession s1=request.getSession(false);
        Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
        Query q=s.createQuery("from SampleAdminRequest");
        List l=q.list();
        s1.setAttribute("obj",l);

        Query qu=s.createQuery("from UnitMeasureMaster");
        List li=qu.list();
        s1.setAttribute("obj1",li);
        return mapping.findForward("in6");

    }
}
