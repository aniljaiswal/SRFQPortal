/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.GSAPBean;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import classes.SampleAdminApproval;
import classes.SupplierQuatationMaster;

/**
 *
 * @author Devvrat
 */
public class GSAPIAction extends org.apache.struts.action.Action {
    
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
         System.out.println("!!!!!!!@@@22gspiaction!!!!!!!!!!");
        GSAPBean gb=(GSAPBean)form;
         System.out.println("!!!!!!!#####gspiaction!!!!!!!!!!");
        String saaid=gb.getTextfield();
        String supid=gb.getSelect();
        String saa=gb.getTextfield2();
        String feed=gb.getTextarea();
        String saaby=gb.getTextfield3();
        String date=gb.getTextfield4();
        String button=gb.getSav();
        System.out.println("!!!!!!!1gspiaction!!!!!!!!!!");
       try{ if(button.equals("Save"))
        {    System.out.println("!!!!!!!$$$$$gspiaction!!!!!!!!!!");
            Date o=new Date();
            SupplierQuatationMaster sq=new SupplierQuatationMaster();
            SampleAdminApproval sa=new SampleAdminApproval();
            System.out.println("!!!!!!!%%%%%%%%gspiaction!!!!!!!!!!");
            sq.setSuppQuatationId(supid);
            sa.setSampleAdminApprovalId(saaid);
            sa.setSupplierQuatationMaster(sq);
            sa.setSampleAdminApproved(saa);
            sa.setFeedback(feed);
            sa.setSampleAdminApprovedBy(saaby);
            sa.setDateOn(o);
            System.out.println("!!!!!!!222222gspiaction!!!!!!!!!!");
            s.save(sa);
            s.beginTransaction().commit();
            System.out.println("!!!!!!!3333333gspiaction!!!!!!!!!!");
        request.setAttribute("msg","Record successfully inserted...");
        }
        System.out.println("!!!!!!!44444444gspiaction!!!!!!!!!!");
        return mapping.findForward("gs");
    }
       catch(Exception e)
       {
           System.out.println(e.getMessage());
           return mapping.findForward("gs");
       }
    }
}
