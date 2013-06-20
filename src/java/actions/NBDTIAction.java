/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.NBDTBean;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import classes.MaterialMaster;
import classes.RequirementMaster;
import classes.RequirementPriorityMaster;
import classes.UnitMeasureMaster;

/**
 *
 * @author Devvrat
 */
public class NBDTIAction extends org.apache.struts.action.Action {
    
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
        Session s=util.NewHibernateUtil.getSessionFactory().openSession();
        NBDTBean nb=(NBDTBean)form;
        System.out.println("!!!!!!!11111gspiaction!!!!!!!!!!");
        String reqid=nb.getTextfield();
        String matid=nb.getSelect();
        String qualt=nb.getTextfield2();
        String uid=nb.getSelect2();
        String opdt=nb.getTextfield3();
        String cldt=nb.getTextfield4();
        String pstby=nb.getTextfield5();
        String repid=nb.getSelect3();
        String button=nb.getSv();
        System.out.println("!!!!!!!eeeeeegspiaction!!!!!!!!!!");
        try{ if(button.equalsIgnoreCase("Save"))
        {
            System.out.println("!!!!!!!aaaaaagspiaction!!!!!!!!!!");
            DateFormat ob1=new SimpleDateFormat("yyyy-mm-dd");
            Date o=(Date)ob1.parse(opdt);
            Date d=(Date)ob1.parse(cldt);
            System.out.println("!!!!!!!$$$$$gspiaction!!!!!!!!!!"+o);
            MaterialMaster mm=new MaterialMaster();
            UnitMeasureMaster umm=new UnitMeasureMaster();
            RequirementPriorityMaster rpm=new RequirementPriorityMaster();
            RequirementMaster rm=new RequirementMaster();
            System.out.println("!!!!!!!%%%%%%%%gspiaction!!!!!!!!!!");
            mm.setMaterialId(matid);
            umm.setUnitId(uid);
            rpm.setRPriorityId(repid);
            rm.setReqId(reqid);
            rm.setMaterialMaster(mm);
            rm.setQuantity(qualt);
            rm.setUnitMeasureMaster(umm);
            rm.setReqPostingOpeningDate(o);
            rm.setReqPostingClosingDate(d);
            rm.setPostedBy(pstby);
            rm.setRequirementPriorityMaster(rpm);
            System.out.println("!!!!!!!222222gspiaction!!!!!!!!!!");
            s.save(rm);
            s.beginTransaction().commit();
            System.out.println("!!!!!!!3333333gspiaction!!!!!!!!!!");
        }
        System.out.println("!!!!!!!44444444gspiaction!!!!!!!!!!");
        request.setAttribute("info","Record successfully inserted...");
        return mapping.findForward("nbi");
    }
       catch(Exception e)
       {
           e.printStackTrace();
           System.out.println(e.getMessage());
           return mapping.findForward("nbi");
       }
    }
}
