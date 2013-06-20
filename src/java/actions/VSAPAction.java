/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import java.util.ArrayList;
import java.util.Iterator;
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
 * @author Devvrat
 */
public class VSAPAction extends org.apache.struts.action.Action {
    
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
        Session s=util.NewHibernateUtil.getSessionFactory().openSession();
            Query q=(Query)s.createQuery("from SampleAdminApproval");
            List l=q.list();
            System.out.println("Size.."+l.size());
        //Iterator it1=l.iterator();
        int size=l.size();
        int size_ff;
        int f_size=size%3;
        if(f_size!=0)
        {
            size_ff=size-f_size;
            se.setAttribute("start", size_ff+1);
            se.setAttribute("end", size);
        }
 else
        {
            se.setAttribute("start", size-5);
            se.setAttribute("end", size);
 }

            request.setAttribute("ids",l);
        return mapping.findForward("vsaap");
    }
}
