/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.ViewFeedbackBean;
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
import classes.*;


/**
 *
 * @author Kanika
 */
public class ViewFeedbackAct1 extends org.apache.struts.action.Action {

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
            HttpSession hs=request.getSession(false);

       
            HttpSession s1=request.getSession(true);
            Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
//        Connection c=s.connection();
//           Class.forName("com.mysql.jdbc.Driver");
//            java.sql.Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/srfq","root","password");
//        Statement st=c.createStatement();


  s.beginTransaction().commit();



             Query q=s.createQuery("from TechnicalFeedbackMaster ");
             List l=q.list();
             System.out.println("Hello 123");
             Iterator a=l.iterator();
             while(a.hasNext())
             {
             TechnicalFeedbackMaster ob=(TechnicalFeedbackMaster)a.next();
             System.out.println(ob.getTechFeedbackId());
             System.out.println(ob.getSupplierQuatationMaster());
             System.out.println(ob.getMaterialTechGoodwillMaster());
             System.out.println(ob.getRatingMaster());
             System.out.println(ob.getTechApproved());
             System.out.println(ob.getFeedback());
             System.out.println(ob.getFeedbackBy());
             System.out.println(ob.getFeedBackDate ());
             }
               hs.setAttribute("obj", l);
               s.close();
        }
        catch(Exception e)
        {
            System.out.println("exception"+e.getMessage());
        }

        return mapping.findForward("in3");
    }
}