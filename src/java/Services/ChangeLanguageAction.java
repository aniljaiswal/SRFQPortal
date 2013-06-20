/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Services;

import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author dell
 */
public class ChangeLanguageAction extends org.apache.struts.actions.DispatchAction {

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
     public ActionForward english(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
            HttpSession session=request.getSession(true);
            session.setAttribute("lang",Locale.ENGLISH);
            session.setAttribute("xyz", "en-US");
             session.setAttribute("uvw","change");
        return mapping.findForward("master");
    }
   public ActionForward hindi(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
            HttpSession session=request.getSession(true);
            session.setAttribute("lang",new Locale("hi"));
            session.setAttribute("xyz", "hi-IN");
            session.setAttribute("uvw","change");
            
         return mapping.findForward("master");
    }
   public ActionForward german(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
            HttpSession session=request.getSession(true);
            session.setAttribute("lang",Locale.GERMAN);
            session.setAttribute("xyz", "de-DE");
            session.setAttribute("uvw","change");
         return mapping.findForward("master");
    }
}
