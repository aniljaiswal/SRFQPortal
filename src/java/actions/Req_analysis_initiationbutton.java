/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.Req_analysis_initiationbean;
import classes.*;

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
 * @author NITIKA
 */
public class Req_analysis_initiationbutton extends org.apache.struts.action.Action
{
    
    /* forward name="success" path="" */
    
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
           
         Req_analysis_initiationbean rb=(Req_analysis_initiationbean)form;
            HttpSession s1=request.getSession(false);
            Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
//        Connection c=s.connection();
//           Class.forName("com.mysql.jdbc.Driver");
//            java.sql.Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/srfq","root","password");
//        Statement st=c.createStatement();
     String sub=rb.getBut();
     System.out.println(sub);
     String ck[]=rb.getCk();
     
     if(sub.equalsIgnoreCase("Remove"))
     {
         for(int i=0;i<ck.length;i++)
         {
            Query q=s.createQuery("delete from RequirementAnalysisInitiation where reqId='"+ck[i]+"'");
            int k= q.executeUpdate();
            s.beginTransaction().commit();
                 if(k>0){
                 System.out.println("ok");
                 }
                   else
                    {
                      System.out.println("no");
                    }
            System.out.println(ck[i]);
         }
     }

 else if(sub.equalsIgnoreCase("Update"))
 {
         for(int i=0;i<ck.length;i++)
         {
             System.out.println(rb.getStatusId());
             System.out.println(rb.getRemark());
             Query q=s.createQuery("update RequirementAnalysisInitiation set statusId='"+rb.getStatusId()+ "' , remark='"+rb.getRemark()+"' where reqId='"+ck[i]+"'");
             int k= q.executeUpdate();
            s.beginTransaction().commit();
         }
 }
    
             Query q=s.createQuery("from RequirementAnalysisInitiation");
             List l=q.list();
             System.out.println("Hello 123");
             Iterator a=l.iterator();
             while(a.hasNext())
             {
             RequirementAnalysisInitiation ob=(RequirementAnalysisInitiation)a.next();
             System.out.println(ob.getReqId());
             System.out.println(ob.getStatusId());
             System.out.println(ob.getRemark());
             }
               hs.setAttribute("obj", l);
               s.close();
        }
        catch(Exception e)
        {
            System.out.println("exception"+e.getMessage());
        }

        return mapping.findForward("in2");
    }
}
