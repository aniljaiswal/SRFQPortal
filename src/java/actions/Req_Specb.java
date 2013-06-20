/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;
import bean.Req_Specbean;
import classes.*;
import org.hibernate.Session;

import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author NITIKA
 */
public class Req_Specb extends org.apache.struts.action.Action {
    
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
            Req_Specbean ob=(Req_Specbean) form;
            String rid=ob.getReqId();
            String sid=ob.getStatusId();
            String rem=ob.getRemark();
            String but=ob.getBut();

            if(but.equalsIgnoreCase("Submit"))
            {
            Date o=new Date();
            RequirementAnalysisInitiation ob1=new RequirementAnalysisInitiation();
            ob1.setReqId(rid);
            ob1.setStatusId(sid);
            ob1.setStatusChangedBy("Atul");
            ob1.setStatusChangedDate(o);
            ob1.setRemark(rem);
            s.save(ob1);
            s.beginTransaction().commit();
            }
        }

        catch(Exception e)
        {
            System.out.println("Exception: "+e.getMessage());
        }
        return mapping.getInputForward();
    }
}
