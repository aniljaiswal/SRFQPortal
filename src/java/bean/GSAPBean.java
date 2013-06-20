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
public class GSAPBean extends org.apache.struts.action.ActionForm {
    
    private String textfield;
    private String select;
    private String textfield2;
    private String textarea;
    private String textfield3;
    private String textfield4;
    private String sav;


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
     * @return the select
     */
    public String getSelect() {
        return select;
    }

    /**
     * @param select the select to set
     */
    public void setSelect(String select) {
        this.select = select;
    }

    /**
     * @return the textfield2
     */
    public String getTextfield2() {
        return textfield2;
    }

    /**
     * @param textfield2 the textfield2 to set
     */
    public void setTextfield2(String textfield2) {
        this.textfield2 = textfield2;
    }

    /**
     * @return the textarea
     */
    public String getTextarea() {
        return textarea;
    }

    /**
     * @param textarea the textarea to set
     */
    public void setTextarea(String textarea) {
        this.textarea = textarea;
    }

    /**
     * @return the textfield3
     */
    public String getTextfield3() {
        return textfield3;
    }

    /**
     * @param textfield3 the textfield3 to set
     */
    public void setTextfield3(String textfield3) {
        this.textfield3 = textfield3;
    }

    /**
     * @return the textfield4
     */
    public String getTextfield4() {
        return textfield4;
    }

    /**
     * @param textfield4 the textfield4 to set
     */
    public void setTextfield4(String textfield4) {
        this.textfield4 = textfield4;
    }

    /**
     * @return the sav
     */
    public String getSav() {
        return sav;
    }

    /**
     * @param sav the sav to set
     */
    public void setSav(String sav) {
        this.sav = sav;
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
