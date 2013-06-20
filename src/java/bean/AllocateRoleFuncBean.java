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
 * @author MANI
 */
public class AllocateRoleFuncBean extends org.apache.struts.action.ActionForm {
  
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    private String role;
    private String[] list1;
    private String[] list2;
    private String submit;

    public String[] getList1() {
        return list1;
    }

    public void setList1(String[] list1) {
        this.list1 = list1;
    }

    public String[] getList2() {
        return list2;
    }

    public void setList2(String[] list2) {
        this.list2 = list2;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getSubmit() {
        return submit;
    }

    public void setSubmit(String submit) {
        this.submit = submit;
    }
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        
        return errors;
    }
}
