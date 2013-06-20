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
public class EBDTBean extends org.apache.struts.action.ActionForm {
    private String textfield5;
    private String textfield6;
    private String sve;
    private String textfield;

    /**
     * @return the textfield5
     */
    public String getTextfield5() {
        return textfield5;
    }

    /**
     * @param textfield5 the textfield5 to set
     */
    public void setTextfield5(String textfield5) {
        this.textfield5 = textfield5;
    }

    /**
     * @return the textfield6
     */
    public String getTextfield6() {
        return textfield6;
    }

    /**
     * @param textfield6 the textfield6 to set
     */
    public void setTextfield6(String textfield6) {
        this.textfield6 = textfield6;
    }

    /**
     * @return the sve
     */
    public String getSve() {
        return sve;
    }

    /**
     * @param sve the sve to set
     */
    public void setSve(String sve) {
        this.sve = sve;
    }

    /**
     * @return the textfield
     */
    public String getTextfield() {
        return textfield;
    }

    /**
     * @param textfield the textfield to set
     */
    public void setTextfield(String textfield) {
        this.textfield = textfield;
    }

    /**
     * @return the Sve
     */
   
    
    
    
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
