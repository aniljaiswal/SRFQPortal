/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.add_new_requestbean;
import classes.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;



/**
 *
 * @author kunal
 */
public class add_new_requestbutton extends org.apache.struts.action.Action {

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
        try
        {

            Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
            add_new_requestbean ob=(add_new_requestbean) form;
            String mid=ob.getMaterialMaster();
            String qu=ob.getQuantity();
            String uid=ob.getUnitMeasureMaster();
            String od=ob.getReqPostingOpeningDate();
            String cd=ob.getReqPostingClosingDate();
            String pb=ob.getPostedBy();
            String rid=ob.getRequirementPriorityMaster();
            String but=ob.getBut();
            System.out.println(but);
            DateFormat da=new SimpleDateFormat("yy-mm-dd");
            Date d=(Date)da.parse(od);
            Date de=(Date)da.parse(cd);


            if(but.equalsIgnoreCase("Submit"))
            {
            RequirementMaster ob1=new RequirementMaster();
            MaterialMaster ob2=new MaterialMaster();
            UnitMeasureMaster ob3=new UnitMeasureMaster();
            RequirementPriorityMaster ob4=new RequirementPriorityMaster();
            ob1.setReqId("REQ007");
            ob2.setMaterialId(mid);
            ob1.setMaterialMaster(ob2);
            ob1.setQuantity(qu);
            ob3.setUnitId(uid);
            ob1.setUnitMeasureMaster(ob3);
            ob1.setReqPostingOpeningDate(d);
            ob1.setReqPostingClosingDate(de);
            ob1.setPostedBy(pb);
            ob4.setRPriorityId(rid);
            ob1.setRequirementPriorityMaster(ob4);
            s.save(ob1);
            s.beginTransaction().commit();
            request.setAttribute("msg","Add New Request successfully");
             return mapping.findForward("fill");
            }
        }

        catch(Exception e)
        {
            e.printStackTrace();
            System.out.println("Exception: "+e.getMessage());
            request.setAttribute("msg","Problem in add request is"+ e.getMessage());
             return mapping.findForward("fill");
            
        }
             request.setAttribute("msg","Add New Request Unsuccessfully");
             return mapping.findForward("fill");
       
    }
}
