/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.updateBean1;
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
public class UpdateAction2 extends org.apache.struts.action.Action {
    
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
        HttpSession se=request.getSession(false);
        updateBean1 obj=(updateBean1)form;
        Session s=util.NewHibernateUtil.getSessionFactory().openSession();

        
        RequirementMaster rms=new RequirementMaster() ;
        CurrencyMaster cms=new CurrencyMaster();
        UnitMeasureMaster umms=new UnitMeasureMaster();

        String rms_s=null;
        String umms_s=null;
        String cms_s=null;
        String sqi_s=null;
        String str_id=null;
        String it_fs=null;
        String it_ts=null;


        String id_s=obj.getTxtid();
        System.out.println(id_s);
        String mg1=obj.getCombMg();
        System.out.println(mg1);
        se.setAttribute("a", mg1);



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

        }


          String mg2=obj.getCombMn();
          String mg7 = obj.getCombUn();
          String mg6=obj.getCombCurr();



//      ob.setSuppId(mg1);
//      SupplierQuatationMaster ob1=new SupplierQuatationMaster();
//      ob1.setSupplierMaster(ob);

        Query q2=s.createQuery("select materialId from MaterialMaster where materialDesc='"+mg2+"'");
        List l2=q2.list();
        Iterator it2=l2.iterator();
        
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




         String mg3=obj.getTxtCost();
         System.out.println(mg3);
         String mg4=obj.getTaRemark();
         System.out.println(mg4);
         String mg5=obj.getTaTechSpecification();
         System.out.println(mg5);
         String sub=obj.getButton1();
     System.out.println(sub);


         

       if(sub.equalsIgnoreCase("Submit"))
        {

      Query q=s.createQuery("select suppQuatationId from SupplierQuatationMaster where suppQuatationId='"+ id_s+"'");
        List l_id = q.list();
        Iterator it_id = l_id.iterator();
        if(it_id.hasNext())
        {
           str_id=(String)it_id.next();
        }

       Query q_f = s.createQuery("select financFeedbackStatus from SupplierQuatationMaster where suppQuatationId='"+str_id+"'");
        List l_f=q_f.list();
        Iterator it_f=l_f.iterator();
        while(it_f.hasNext())
        {
            it_fs=(String)it_f.next();
        }

        Query q_t=s.createQuery("select techFeedbackStatus from SupplierQuatationMaster where suppQuatationId='"+str_id+"'");
        List l_t=q_t.list();
        Iterator it_t=l_t.iterator();
        while(it_t.hasNext())
        {
            it_ts=(String)it_t.next();
        }
     System.out.println(it_fs+"    "+it_ts);
       if(it_fs.equals("Done") || it_ts.equals("Done"))
         {
            String status="Sorry,But you cn't update your Quotation";
            se.setAttribute("id", status);
            return mapping.findForward("error");
         }
    else{

//             SupplierQuatationMaster m=new SupplierQuatationMaster();
//             cms.setCurrencyId(cms_s);
//             rms.setReqId(rms_s);
//             umms.setUnitId(umms_s);
//             m.setSuppQuatationId(id_s);
//             m.setCurrencyMaster(cms);
//             m.setRequirementMaster(rms);
//             m.setUnitMeasureMaster(umms);
//             m.setProposedcost(mg3);
//             m.setRemarks(mg4);
//             m.setTechFeedbackStatus(mg5);
//             s.update(m);
//             s.beginTransaction().commit();
             Query q_id=s.createSQLQuery("update supplier_quatation_master set Remarks='"+mg4+"',Tech_Specification='"+mg5+"',Currency_Id='"+cms_s+"', Req_id='"+rms_s+"',Unit_id='"+umms_s+"',Proposedcost='"+mg3+"' where Supp_Quatation_Id='"+id_s+"'");
            int k=q_id.executeUpdate();
            s.beginTransaction().commit();
            return mapping.findForward("right");
    }
        
                  
         
         }
 else
        {    
    
            return mapping.findForward("uq");

         }

         }
    catch(Exception e){
        e.printStackTrace();
        }
          
    return mapping.findForward("uq");
        
    }
}
