/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import classes.*;
import bean.view_update_requestbean;

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
 * @author kunal
 */
public class view_update_request extends org.apache.struts.action.Action {
    
   
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        try {
            HttpSession hs=request.getSession(false);

         view_update_requestbean rb=(view_update_requestbean)form;
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
            Query q=s.createQuery("delete from RequirementMaster where reqId='"+ck[i]+"'");
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
             System.out.println(rb.getRequirementPriorityMaster());
             System.out.println(rb.getMaterialMaster());
             System.out.println(rb.getUnitMeasureMaster());
             System.out.println(rb.getQuantity());
             System.out.println(rb.getReqPostingOpeningDate());
             System.out.println(rb.getReqPostingClosingDate());
             System.out.println(rb.getPostedBy());
             Query q=s.createQuery("update RequirementMaster set MaterialMaster='"+rb.getMaterialMaster()+"' , UnitMeasureMaster='"+rb.getUnitMeasureMaster()+"' , Quantity='"+rb.getQuantity()+"' , ReqPostingOpeningDate='"+rb.getReqPostingOpeningDate()+"' , ReqPostingClosingDate='"+rb.getReqPostingClosingDate()+"' , PostedBy='"+rb.getPostedBy()+"' , getRequirementPriorityMaster='"+rb.getRequirementPriorityMaster()+"' where reqId='"+ck[i]+"'");
           int k=  q.executeUpdate();
            s.beginTransaction().commit();
         }
 }

             Query q=s.createQuery("from RequirementMaster");
             List l=q.list();
             System.out.println("Hello 123");
             Iterator a=l.iterator();
             while(a.hasNext())
             {
             RequirementMaster ob=(RequirementMaster)a.next();
             System.out.println(ob.getReqId());
             System.out.println(rb.getRequirementPriorityMaster());
             System.out.println(rb.getMaterialMaster());
             System.out.println(rb.getUnitMeasureMaster());
             System.out.println(rb.getQuantity());
             System.out.println(rb.getReqPostingOpeningDate());
             System.out.println(rb.getReqPostingClosingDate());
             System.out.println(rb.getPostedBy());
             }
               hs.setAttribute("obj", l);
               s.close();
        }
        catch(Exception e)
        {
            System.out.println("exception"+e.getMessage());
        }

        return mapping.findForward("in5");
    }
}