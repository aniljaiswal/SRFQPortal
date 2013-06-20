/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import classes.NewHibernateUtil;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author MANI
 */
public class AdminChangePassActionNew extends org.apache.struts.action.Action {

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
        AdminChangePassBean ab = (AdminChangePassBean) form;
        String eid = ab.getEid();
        String newpass = ab.getNewpass();
        String confirm = ab.getConfirmpass();
        String uid = ab.getUid();
        Session ses = NewHibernateUtil.getSessionFactory().openSession();
        if (newpass.equals(confirm)) {
            Query q = ses.createQuery("update UserMaster set password=:pass where userId=:uid");
            q.setParameter("pass", newpass);
            q.setParameter("uid", uid);
            q.executeUpdate();
            ses.beginTransaction().commit();
            request.setAttribute("msg", "Password Successfully Changed");
            return mapping.findForward("pwd");
        } else {
            request.setAttribute("msg", "Incorrect Password Combination");
            return mapping.findForward("pwd");
        }
    }
}
