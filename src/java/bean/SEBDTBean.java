/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Devvrat
 */
public class SEBDTBean extends org.apache.struts.action.ActionForm {
    private String radiobutton;

    /**
     * @return the radiobutton
     */
    public String getRadiobutton() {
        return radiobutton;
    }

    /**
     * @param radiobutton the radiobutton to set
     */
    public void setRadiobutton(String radiobutton) {
        this.radiobutton = radiobutton;
    }
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
//    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
//        ActionErrors errors = new ActionErrors();
//        if (getName() == null || getName().length() < 1) {
//            errors.add("name", new ActionMessage("error.name.required"));
//            // TODO: add 'error.name.required' key to your resources
//        }
//        return errors;
//    }
}
