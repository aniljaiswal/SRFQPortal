/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.Financial_Feedback_Bean;
import classes.*;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Rakshit
 */
public class Financial_Feedback1_Action extends org.apache.struts.action.Action {
    
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

        HttpSession session=request.getSession(true);
          Session s=NewHibernateUtil.getSessionFactory().openSession();
          Financial_Feedback_Bean obj=(Financial_Feedback_Bean)form;

  String FFI=obj.getFinanFeedId();
        String SQI=obj.getSuppQuoId();
        String FGD=obj.getFinanGoodDesc();
        String RD=obj.getRatingDesc();
        System.out.println(RD);
        String Feed=obj.getFeedback();
        String Feedby=obj.getFeedbackBy();
        String FeedDate=obj.getFeedbackDate();
        String SQM=null;
        String FGI=null;
        String RI=null;
        


       // System.out.println(SQI+"   "+FFI+"    "+FGD+"   "+RD+"   "+Feed+"   "+Feedby+"   "+FeedDate);
       


       /* Query q0=s.createQuery("from SupplierQuatationMaster");
        List list0=q0.list();
        Iterator it0=list0.iterator();
        while(it0.hasNext()){
            SupplierQuatationMaster sm=(SupplierQuatationMaster)it0.next();
            if(sm.getSuppQuatationId().equals(SQI)){
                SQM=sm.getSuppQuatationId();
            }
        }

        Query q1=s.createQuery("from FinancialGoodwillMaster");
        List list=q1.list();
        Iterator it=list.iterator();
        while(it.hasNext()){
            FinancialGoodwillMaster fg=(FinancialGoodwillMaster)it.next();
            if(fg.getFinancGoodwillDesc().equals(FGD)){
                FGI=fg.getFinancGoodwillId();
            }
        }
        Query q2=s.createQuery("from RatingMaster");
        List list2=q2.list();
        Iterator it2=list2.iterator();
        while(it2.hasNext()){
            RatingMaster rm=(RatingMaster)it2.next();
            if(rm.getRatingDesc().equals(RD)){
                RI=rm.getRatingId();
            }
        
       }*/


        Date dd=new Date();
        Transaction t=s.beginTransaction();
        FinancialFeedbackMaster ffm=new FinancialFeedbackMaster();
        SupplierQuatationMaster sm=new SupplierQuatationMaster();
        FinancialGoodwillMaster fg=new FinancialGoodwillMaster();
        RatingMaster rm=new RatingMaster();
        rm.setRatingId("RAT001");
         sm.setSuppQuatationId("SQI002");
        fg.setFinancGoodwillId("FGI001");
        ffm.setFinancFeedbackId(FFI);
        ffm.setSupplierQuatationMaster(sm);
        ffm.setFinancialGoodwillMaster(fg);
        ffm.setRatingMaster(rm);
        ffm.setFeedback(Feed);
        ffm.setFinancApproved("yes");

        ffm.setFeedbackBy(Feedby);
        ffm.setFeedBackDate(dd);
            System.out.println("   hi..............1");
        s.save(ffm);

       t.commit();
        
//        Query q=s.createSQLQuery("insert into financial_feedback_master values('"+FFI+"','"+SQI+"','FGI001','RAT001','yes','"+Feed+"','"+Feedby+"','"+FeedDate+"')");
//         q.executeUpdate();
        request.setAttribute("msg","Financial Feeadback Procced  Successfully ");
   return mapping.findForward("feed");

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Exception "+e.getMessage());
        request.setAttribute("msg","Financial Feeadback Procced  UnSuccessfully ");
   return mapping.findForward("feed");

        }
        

    }


         }


        
