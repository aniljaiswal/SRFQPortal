/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import util.NewHibernateUtil;
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
 * @author shubhangi
 */
public class Initial_Approval_Rejection extends org.apache.struts.action.Action {
    
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

              HttpSession session=request.getSession(false);
              try {
              Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
              Query q=s.createQuery("select suppId from SupplierMaster");
              List list=q.list();
             Iterator it=list.iterator();
              while(it.hasNext()){
                  System.out.println(it.next());
              }
              
                 session.setAttribute("list", list);
               // request.setAttribute("msg","Inital Finacial Approvale proceed Succefull");
              return mapping.findForward("initalapproval");
              }
              catch(Exception e){
                 
                  e.printStackTrace();
               //   request.setAttribute("msg","Inital Finacial Approvale proceed UnSuccefull");
                return mapping.findForward("initalapproval");
              }
    }
}
