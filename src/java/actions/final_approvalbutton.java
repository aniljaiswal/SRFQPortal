/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.final_approvalbean;
import classes.*;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;

/**
 *
 * @author NITIKA
 */
public class final_approvalbutton extends org.apache.struts.action.Action {
    
   
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
     try
     {
        Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
        final_approvalbean ob=(final_approvalbean) form;
        Integer appid=ob.getSampleProductionApprovalId();
        String qid=ob.getSuppQuatationId();
        String rid=ob.getRatingId();
        String rd=ob.getRd();
        String feed=ob.getFeedback();
        String but=ob.getBut();

        if(but.equalsIgnoreCase("Submit"))
        {
        SampleProductionApproval obj=new SampleProductionApproval();
        SupplierQuatationMaster obj1=new SupplierQuatationMaster();
        RatingMaster obj2=new RatingMaster();
        Date dd=new Date();
        obj1.setSuppQuatationId(qid);
        obj2.setRatingId(rid);
        
        obj.setSampleProductionApprovalId(appid);
        obj.setSupplierQuatationMaster(obj1);
        obj.setRatingMaster(obj2);
        obj.setSampleProdApproved(rd);
        obj.setFeedback(feed);
        obj.setSampleProdApprovedBy("Abhi");
        obj.setDateOn(dd);
        s.save(obj);
        s.beginTransaction().commit();
        }
    }

     catch(Exception e)
     {
         e.printStackTrace();
         System.out.println("Exception: "+e.getMessage());
     }
        return mapping.getInputForward();


    }
}
