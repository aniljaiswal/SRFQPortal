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
public class ConfigEmpBean extends org.apache.struts.action.ActionForm {
    private String submit;
    private String firstname;
    private String lastname;
    private String curstreetadd;
    private String curcountry;
    private String curstate;
    private String curcity;
    private String curzip;
    private String curphone1;
    private String curphone2;
    private String curmobile;
    private String curfax;
    private String perstreetadd;
    private String percountry;
    private String perstate;
    private String percity;
    private String perzip;
    private String perphone1;
    private String perphone2;
    private String permobile;
    private String perfax;
    private String joining;
    private String leaving;
    private String status;
    private String email;
    private String[] delete;
    private String[] changestatus;
    private String[] eid;

    public String[] getEid() {
        return eid;
    }

    public void setEid(String[] eid) {
        this.eid = eid;
    }
   
    public String getSubmit() {
        return submit;
    }

    public void setSubmit(String submit) {
        this.submit = submit;
    }

    public String getCurcity() {
        return curcity;
    }

    public void setCurcity(String curcity) {
        this.curcity = curcity;
    }

    public String getCurcountry() {
        return curcountry;
    }

    public void setCurcountry(String curcountry) {
        this.curcountry = curcountry;
    }

    public String getCurfax() {
        return curfax;
    }

    public void setCurfax(String curfax) {
        this.curfax = curfax;
    }

    public String getCurmobile() {
        return curmobile;
    }

    public void setCurmobile(String curmobile) {
        this.curmobile = curmobile;
    }

    public String getCurphone1() {
        return curphone1;
    }

    public void setCurphone1(String curphone1) {
        this.curphone1 = curphone1;
    }

    public String getCurphone2() {
        return curphone2;
    }

    public void setCurphone2(String curphone2) {
        this.curphone2 = curphone2;
    }

    public String getCurstate() {
        return curstate;
    }

    public void setCurstate(String curstate) {
        this.curstate = curstate;
    }

    public String getCurstreetadd() {
        return curstreetadd;
    }

    public void setCurstreetadd(String curstreetadd) {
        this.curstreetadd = curstreetadd;
    }

    public String getCurzip() {
        return curzip;
    }

    public void setCurzip(String curzip) {
        this.curzip = curzip;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getJoining() {
        return joining;
    }

    public void setJoining(String joining) {
        this.joining = joining;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getLeaving() {
        return leaving;
    }

    public void setLeaving(String leaving) {
        this.leaving = leaving;
    }

    public String getPercity() {
        return percity;
    }

    public void setPercity(String percity) {
        this.percity = percity;
    }

    public String getPercountry() {
        return percountry;
    }

    public void setPercountry(String percountry) {
        this.percountry = percountry;
    }

    public String getPerfax() {
        return perfax;
    }

    public void setPerfax(String perfax) {
        this.perfax = perfax;
    }

    public String getPermobile() {
        return permobile;
    }

    public void setPermobile(String permobile) {
        this.permobile = permobile;
    }

    public String getPerphone1() {
        return perphone1;
    }

    public void setPerphone1(String perphone1) {
        this.perphone1 = perphone1;
    }

    public String getPerphone2() {
        return perphone2;
    }

    public void setPerphone2(String perphone2) {
        this.perphone2 = perphone2;
    }

    public String getPerstate() {
        return perstate;
    }

    public void setPerstate(String perstate) {
        this.perstate = perstate;
    }

    public String getPerstreetadd() {
        return perstreetadd;
    }

    public void setPerstreetadd(String perstreetadd) {
        this.perstreetadd = perstreetadd;
    }

    public String getPerzip() {
        return perzip;
    }

    public void setPerzip(String perzip) {
        this.perzip = perzip;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String[] getDelete() {
        return delete;
    }

    public void setDelete(String[] delete) {
        this.delete = delete;
    }

    public String[] getChangestatus() {
        return changestatus;
    }

    public void setChangestatus(String[] changestatus) {
        this.changestatus = changestatus;
    }
   
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        return errors;
    }
}
