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
public class SinglenNBdtAction extends org.apache.struts.action.Action {
    
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
        System.out.println("welcome Single NBDT Action");
       // HttpSession se=request.getSession(true);
           Session s=util.NewHibernateUtil.getSessionFactory().openSession();
            Query q=(Query)s.createQuery("select materialId from MaterialMaster");
            List l=q.list();
            request.setAttribute("ids",l);
            Query q1=(Query)s.createQuery("select unitId from UnitMeasureMaster");
            List l1=q1.list();
            request.setAttribute("ids1",l1);
            Query q2=(Query)s.createQuery("select RPriorityId from RequirementPriorityMaster");
            List l2=q2.list();
            request.setAttribute("ids2",l2);
            Connection con=connection.getcon();
            Statement st=con.createStatement();
            ResultSet rs = st.executeQuery("select max(Req_id) from requirement_master");
            while(rs.next())
            {
                String str=null;
                System.out.println("in the single BDT action");
                String id=rs.getString(1);
                int idd=Integer.parseInt(id.substring(3,id.length()));
                idd=idd+1;
                if(idd<10 && idd>=1)
                {
                    str = "REQ00" + idd;
                }
                else if(idd<100 && idd>=10)
                {
                    str = "REQ0" + idd;
                }
                else if(idd<1000 && idd>=100)
                {
                    str = "REQ" + idd;
                }
                System.out.println(str);
                request.setAttribute("a",str);
              }
        return mapping.findForward("nbt");
    }
}
