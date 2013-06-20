/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author dell
 */
public class ChangePwdBean extends org.apache.struts.action.ActionForm {
    private String uid;
    private String old;
    private String new1;
    private String new2;

    public String getNew1() {
        return new1;
    }

    public void setNew1(String new1) {
        this.new1 = new1;
    }

    public void setNew2(String new2) {
        this.new2 = new2;
    }

    public void setOld(String old) {
        this.old = old;
    }

    public String getNew2() {
        return new2;
    }

    public String getOld() {
        return old;
    }

    /**
     * @return the uid
     */
    public String getUid() {
        return uid;
    }

    /**
     * @param uid the uid to set
     */
    public void setUid(String uid) {
        this.uid = uid;
    }

    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
//    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
//        ActionErrors errors = new ActionErrors();
//        if (getUid() == null || getUid().length() < 5) {
//            errors.add("uid", new ActionMessage("error.id.required"));
//            // TODO: add 'error.name.required' key to your resources
//        }
//        if (getNew1() == null || getNew1().length() < 5) {
//            errors.add("uid", new ActionMessage("error.new.required"));
//            // TODO: add 'error.name.required' key to your resources
//        }
//        
//        return errors;
//    }
    }

