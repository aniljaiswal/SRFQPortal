/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.NewQuotationBean;
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
import classes.*;

/**
 *
 * @author Bhawna
 */
public class StrutsAction1 extends org.apache.struts.action.Action {
    
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

   // String a;
   
    SupplierMaster sm1;
    String supp_name=null;
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
      
        HttpSession se=request.getSession(false);
        NewQuotationBean obj=(NewQuotationBean)form;
        Session s=(Session)util.NewHibernateUtil.getSessionFactory().openSession();
        SupplierQuatationMaster sqm=new SupplierQuatationMaster();

        RequirementMaster rms=null;
        CurrencyMaster cms=null;
        UnitMeasureMaster umms=null;
        String  rms_s=null;
        String umms_s=null;
        String cms_s=null;
        String sqi_s=null;

        String id_s=obj.getTxtid();
        System.out.println(id_s);
        String mg1=obj.getCombMg();
        System.out.println(mg1);
        se.setAttribute("a", mg1);

        Query q_id = s.createQuery("select suppName from SupplierMaster where suppId='"+id_s+"'");
        List l_id=q_id.list();
        Iterator it_id = l_id.iterator();
        
        if(it_id.hasNext())
        {
             supp_name=(String)it_id.next();
        }
        System.out.println(supp_name);
        se.setAttribute("nm", supp_name);
     
        ArrayList<String> mdes=new ArrayList<String>();
        Query q1=s.createQuery("select materialGroupId from MaterialGroupMaster where materialGroupName='"+mg1+"'");
        List l1=q1.list();
        Iterator it1=l1.iterator();
        if(it1.hasNext())
        {
            String mgid=(String)it1.next();
            Query q2=s.createQuery("select a.materialDesc from MaterialMaster as a where a.materialGroupMaster.materialGroupId='"+mgid+"'");
            List i=q2.list();
            se.setAttribute("it",i);
//            Iterator it=i.iterator();
//            while(it.hasNext()){
//             mdes.add((String)it.next());
             System.out.println(i);
//            }


        }
 
        
          String mg2=obj.getCombMn();
          String mg7 = obj.getCombUn();
       
          String mg6=obj.getCombCurr();
//


//      ob.setSuppId(mg1);
//      SupplierQuatationMaster ob1=new SupplierQuatationMaster();
//      ob1.setSupplierMaster(ob);

        Query q2=s.createQuery("select materialId from MaterialMaster where materialDesc='"+mg2+"'");
        List l2=q2.list();
        Iterator it2=l2.iterator();
        //ArrayList<String> mms= new ArrayList<String>();
        if(it2.hasNext())
        {
//          MaterialMaster mms=(MaterialMaster)it2.next();
//          String mms_s=mms.getMaterialId();
          String mms_s=(String)it2.next();

          Query q3=s.createQuery("select reqId from RequirementMaster where materialMaster.materialId='"+mms_s+"'");
          List l3=q3.list();
          Iterator it3=l3.iterator();
          if(it3.hasNext())
          {
            rms_s=(String)it3.next();
            System.out.println(rms_s);
          }
        }


        Query q5=s.createQuery("select unitId from UnitMeasureMaster where unitOfMeasure='"+mg7+"'");
        List l5=q5.list();
        Iterator it5=l5.iterator();
        if(it5.hasNext())
        {
          umms_s = (String) it5.next();
          System.out.println(umms_s);
          //umms.getUnitId();
        }
        Query q4=s.createQuery("select currencyId from CurrencyMaster where currencyDesc='"+mg6+"'");
        List l4=q4.list();
        Iterator it4=l4.iterator();
        if(it4.hasNext())
        {
           cms_s=(String)it4.next();
           System.out.println(cms_s);
        }
        
       Query qs=s.createSQLQuery("select suppqid()");
        List ls=qs.list();
        Iterator its = ls.iterator();
        if(its.hasNext())
        {
            sqi_s=(String)its.next();
            System.out.println(sqi_s);
        }

        se.setAttribute("sqid", sqi_s);


         String mg3=obj.getTxtCost();
         System.out.println(mg3);
         String mg4=obj.getTaRemark();
         System.out.println(mg4);
         String mg5=obj.getTaTechSpecification();
         System.out.println(mg5);
         String button_v=obj.getButton1();
        // System.out.println();

         SupplierMaster sms=new SupplierMaster();


         try {
         
         rms=new RequirementMaster();
         umms = new UnitMeasureMaster();
         cms = new CurrencyMaster();


         sms.setSuppId(id_s);
         rms.setReqId(rms_s);
         umms.setUnitId(umms_s);
         cms.setCurrencyId(cms_s);

         sqm.setSuppQuatationId(sqi_s);
         sqm.setSupplierMaster(sms);
         //sqm.setSupplierMaster(sms);
         sqm.setRequirementMaster(rms);
         sqm.setProposedcost(mg3);
         sqm.setCurrencyMaster(cms);
         sqm.setUnitMeasureMaster(umms);
         sqm.setTechSpecification(mg5);
         sqm.setRemarks(mg4);
         sqm.setFinancFeedbackStatus("Pending");
         sqm.setTechFeedbackStatus("Pending");
       s.save(sqm);
        s.beginTransaction().commit();
//         if(t.wasCommitted()){
//             System.out.println("ok");
         return mapping.findForward("sq");
//    }
        }
         catch(Exception e) {
             e.printStackTrace();
         }

         /*if(button_v.equalsIgnoreCase("Submit"))
         {
return mapping.findForward("sq");
         }*/
         
       // request.setAttribute("a", sm1);
        return mapping.findForward("nq");
       
      //  return mapping.getInputForward();
    }
}
