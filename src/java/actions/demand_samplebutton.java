/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.demand_samplebean;
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
public class demand_samplebutton extends org.apache.struts.action.Action {

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
            demand_samplebean ob=(demand_samplebean) form;
            String sid=ob.getSampleAdminRequest();
            String uid=ob.getUnitMeasureMaster();
            String ed=ob.getSampleExpectedSendingDate();
            String qu=ob.getQuantity();
            String but=ob.getBut();
            System.out.println(but);
            DateFormat da=new SimpleDateFormat("yy-mm-dd");
            Date d=(Date)da.parse(ed);


            if(but.equalsIgnoreCase("Submit"))
            {
            SampleDemandSpecfication ob1=new SampleDemandSpecfication();
            SampleAdminRequest ob2=new SampleAdminRequest();
            UnitMeasureMaster ob3=new UnitMeasureMaster();
            ob1.setSampleDemandId("REQ002");
            ob2.setSampleId(sid);
            ob1.setSampleAdminRequest(ob2);
            ob3.setUnitId(uid);
            ob1.setUnitMeasureMaster(ob3);
            ob1.setSampleExpectedSendingDate(d);
            ob1.setQuantity(qu);

            s.save(ob1);
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
