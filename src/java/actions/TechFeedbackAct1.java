/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package actions;
import bean.TechFeedbacksBean;
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
public class TechFeedbackAct1 extends org.apache.struts.action.Action {

    /* forward name="success" path="" */

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

            TechFeedbacksBean ob = (TechFeedbacksBean) form;
            String sqid = ob.getSuppQuatationId();
            String rid = ob.getTechFeedbackId();
            String tap = ob.getTechApproved();
            String rem = ob.getFeedback();
            String fbb = ob.getFeedbackBy();
            String mtgid = ob.getMaterialGoodwillId();
            String rti = ob.getRatingId();

            String but = ob.getBut();
            System.out.println(but);
           
            if (but.equalsIgnoreCase("Submit")) {
                Date dd = new Date();
                TechnicalFeedbackMaster ob1 = new TechnicalFeedbackMaster();
                ob1.setTechFeedbackId(rid);
                ob1.setFeedBackDate(dd);
                ob1.setFeedbackBy(fbb);
                ob1.setTechApproved(tap);
                ob1.setFeedback(rem);
                SupplierQuatationMaster ob2 = new SupplierQuatationMaster();
                ob2.setSuppQuatationId(sqid);
                ob1.setSupplierQuatationMaster(ob2);
                System.out.println("8" + dd);
                System.out.println("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                MaterialTechGoodwillMaster ob3 = new MaterialTechGoodwillMaster();
                ob3.setMaterialGoodwillId(mtgid);
                ob1.setMaterialTechGoodwillMaster(ob3);

                System.out.println("qqqqqqqqqqqqqqqqqqqqqqqqqqqqqq");
                RatingMaster ob4 = new RatingMaster();
                ob4.setRatingId(rti);
                ob1.setRatingMaster(ob4);
                //s.save(ob2);
                s.save(ob1);
                s.beginTransaction().commit();
                request.setAttribute("msg","TechFeedback Proceed Suessfully");
                return mapping.findForward("tcs");

            }
            else{
                request.setAttribute("msg","TechFeedback Proceed UnSuessfully");
          return mapping.findForward("tcs");      
            }
        } catch (Exception e) {
            System.out.println("Exception: " + e.getMessage());
          request.setAttribute("msg","TechFeedback Proceed UsSuessfully");
            return mapping.findForward("tcs");   
        }

         
    }
}
