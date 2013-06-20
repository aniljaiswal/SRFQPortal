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
public class NBDTBean extends org.apache.struts.action.ActionForm {
    
    private String textfield;
    private String select;
    private String textfield2;
    private String select2;
    private String textfield3;
    private String textfield4;
    private String textfield5;
    private String select3;
    private String sv;

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
     * @return the select2
     */
    public String getSelect2() {
        return select2;
    }

    /**
     * @param select2 the select2 to set
     */
    public void setSelect2(String select2) {
        this.select2 = select2;
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
     * @return the select3
     */
    public String getSelect3() {
        return select3;
    }

    /**
     * @param select3 the select3 to set
     */
    public void setSelect3(String select3) {
        this.select3 = select3;
    }

    /**
     * @return the sv
     */
    public String getSv() {
        return sv;
    }

    /**
     * @param sv the sv to set
     */
    public void setSv(String sv) {
        this.sv = sv;
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
