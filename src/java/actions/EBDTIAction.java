/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.EBDTBean;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import classes.RequirementMaster;

/**
 *
 * @author Devvrat
 */
public class EBDTIAction extends org.apache.struts.action.Action {
    
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
        EBDTBean eb=(EBDTBean)form;
        String opd=eb.getTextfield5();
        String cld=eb.getTextfield6();
        String id=eb.getTextfield();
        String but=eb.getSve();
        System.out.println(opd);
        System.out.println(cld);
         System.out.println(but);
        System.out.println("!!!!!!!eeeeeegspiaction!!!!!!!!!!");
        try{ if(but.equals("Update"))
        {
            System.out.println("!!!!!!!aaaaaagspiaction!!!!!!!!!!");
//            DateFormat ob2=new SimpleDateFormat("yyyy-mm-dd");
//            Date op=(Date)ob2.parse(opd);
//            Date cl=(Date)ob2.parse(cld);
//            System.out.println("Date : "+op);
            RequirementMaster rmt=new RequirementMaster();
           Query q=s.createQuery("update RequirementMaster set reqPostingOpeningDate='"+opd+"' ,reqPostingClosingDate='"+cld+"' where reqId='"+id+"'");
                q.executeUpdate();
           //            s.save(rmt);
//            s.beginTransaction().commit();
            System.out.println("!!!!!!!3333333gspiaction!!!!!!!!!!");
        }
        System.out.println("!!!!!!!44444444gspiaction!!!!!!!!!!");
        request.setAttribute("info","Record successfully inserted...");
        return mapping.findForward("ebi");
    }
       catch(Exception e)
       {
           e.printStackTrace();
           System.out.println(e.getMessage());
           return mapping.findForward("ebi");
       }
    }
}
