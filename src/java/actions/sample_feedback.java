/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import classes.NewHibernateUtil;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author NITIKA
 */
public class sample_feedback extends org.apache.struts.action.Action {
    
   
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
            HttpSession s1=request.getSession(false);
            Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
//        Connection c=(Connection)connectionClass.myconnection();
//        if(c!=null)
//        {
//            System.out.println("ok");
//        }
// else
//        {
//            System.out.println("not ok");
// }

         Query q=s.createQuery("from SampleAdminRequest");
         List l=q.list();
         s1.setAttribute("obj",l);

         Query q1=s.createQuery("from SupplierQuatationMaster");
         List l1=q1.list();
         s1.setAttribute("obj1",l1);

         Query q2=s.createQuery("from RatingMaster");
         List l2=q2.list();
         s1.setAttribute("obj2",l2);

//        Statement st=c.createStatement();
//        ResultSet rs=st.executeQuery("select Sample_id from sample_admin_request");
//        Result rs1=ResultSupport.toResult(rs);
//        if(rs.next())
//        {
//            System.out.println(rs);
//        }



        return mapping.findForward("in7");
    }
}
