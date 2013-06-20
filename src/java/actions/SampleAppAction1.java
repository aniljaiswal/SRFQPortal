/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;


import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import classes.*;

/**
 *
 * @author Kanika
 */
public class SampleAppAction1 extends org.apache.struts.action.Action {

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

            Session s = (Session) NewHibernateUtil.getSessionFactory().openSession();
            SampleAppBean ob=(SampleAppBean)form;
            String stid = ob.getSampleTechApprovalId();
            String mgid = ob.getMaterialGoodwillId();
            String rid = ob.getRatingId();
            String sqid = ob.getSuppQuatationId();
            String sta = ob.getSampleTechApproved();
            String fb = ob.getFeedback();
            String stab = ob.getSampleTechApprovedBy();

            String but = ob.getBut();

            if (but.equalsIgnoreCase("Submit")) {
                Date dd = new Date();
                SampleTechApproval ob1 = new SampleTechApproval();
                ob1.setSampleTechApprovalId(stid);
                ob1.setFeedback(fb);
                ob1.setSampleTechApproved(sta);
                ob1.setSampleTechApprovedBy(stab);
                ob1.setDateOn(dd);

                SupplierQuatationMaster ob2 = new SupplierQuatationMaster();
                ob2.setSuppQuatationId(sqid);
                ob1.setSupplierQuatationMaster(ob2);


                MaterialTechGoodwillMaster ob3 = new MaterialTechGoodwillMaster();
                ob3.setMaterialGoodwillId(mgid);
                ob1.setMaterialTechGoodwillMaster(ob3);

                RatingMaster ob4 = new RatingMaster();
                ob4.setRatingId(rid);
                ob1.setRatingMaster(ob4);


                s.save(ob1);
                s.beginTransaction().commit();
            }
        } catch (Exception e) {
            System.out.println("Exception: " + e.getMessage());
        }
        return mapping.getInputForward();
    }
}

