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
public class AllocateFuncEmpBean extends org.apache.struts.action.ActionForm {
    
    private String empid;
    private String rolename;
    private String[] allocresourceid;
    private String but;

    public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but;
    }

    
    
    public String getEmpid() {
        return empid;
    }

    public void setEmpid(String empid) {
        this.empid = empid;
    }

    /**
     * @return the rolename
     */
    public String getRolename() {
        return rolename;
    }

    public String[] getAllocresourceid() {
         
        return allocresourceid;
    }

    public void setAllocresourceid(String[] allocresourceid) {
        for(int i=0;i<allocresourceid.length;i++)
        {System.out.println("values"+allocresourceid[i]);
        
        }
        this.allocresourceid = allocresourceid;
    }

   

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    /**
     * @return the allocresc
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
