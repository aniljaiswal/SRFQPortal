/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Anshika
 */
public class financial_feedback_suuplier_Action extends org.apache.struts.action.Action {
    
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
        Financial_Feedback_Supplier lb=(Financial_Feedback_Supplier)form;

        String suppId=lb.getSuppId();
        String suppName=lb.getSuppName();
        String suppStatusId=lb.getSuppStatusId();
        System.out.println(suppId);
        System.out.println(suppName);
        System.out.println(suppStatusId);
        return mapping.findForward("fin");
    }
}
