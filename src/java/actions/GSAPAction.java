/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import connect.connection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import classes.SampleAdminApproval;

/**
 *
 * @author Devvrat
 */
public class GSAPAction extends org.apache.struts.action.Action {
    
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
      try{ System.out.println("Welcome Single GSAP Action");
        Session s=util.NewHibernateUtil.getSessionFactory().openSession();
            Query q=(Query)s.createQuery("select suppQuatationId from SupplierQuatationMaster");
            List l=q.list();
            request.setAttribute("ids",l);
            Connection con=connection.getcon();
            Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("select max(Sample_Admin_Approval_Id) from sample_admin_approval");
            while(rs.next())
            {
                String str=null;
                System.out.println("in the gsap action");
                String id=rs.getString(1);
                //String id=sa.getSampleAdminApprovalId();
                int idd=Integer.parseInt(id.substring(4,id.length()));
                idd=idd+1;
                if(idd<10 && idd>=1)
                {
                    str = "SAAI00" + idd;
                }
                else if(idd<100 && idd>=10)
                {
                    str = "SAAI0" + idd;
                }
                else if(idd<1000 && idd>=100)
                {
                    str = "SAAI" + idd;
                }
                System.out.println(str);
                request.setAttribute("a",str);
              }
         return mapping.findForward("gsaap");
        }
      catch(Exception e)
      {
          System.out.println(e.getMessage());
           return mapping.findForward("gsaap");
      }
    }
}
