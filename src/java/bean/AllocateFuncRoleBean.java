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
 * @author dell
 */
public class AllocateFuncRoleBean extends org.apache.struts.action.ActionForm {
    
    private String roledesc;
    private String[] allocresourceid;
    private String but;

    public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but;
    }
    

    /**
     * @return the roledesc
     */
    public String getRoledesc() {
        return roledesc;
    }

    /**
     * @param roledesc the roledesc to set
     */
    public void setRoledesc(String roledesc) {
        this.roledesc = roledesc;
    }

    /**
     * @return the allocresourceid
     */
    public String[] getAllocresourceid() {
        return allocresourceid;
    }

    /**
     * @param allocresourceid the allocresourceid to set
     */
    public void setAllocresourceid(String[] allocresourceid) {
        this.allocresourceid = allocresourceid;
    }

    /**
     * @return
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
