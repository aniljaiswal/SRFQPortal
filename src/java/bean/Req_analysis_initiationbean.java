/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import classes .*;
import java.util.Date;


/**
 *
 * @author NITIKA
 */
public class Req_analysis_initiationbean extends org.apache.struts.action.ActionForm {

    private String[] reqId;


     private RequirementMaster requirementMaster;
     private String statusId;
     private String statusChangedBy;
     private Date statusChangedDate;
     private String remark;
     private String ck[];
     private String but;

    


    public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but;
    }




    public String[] getCk() {
        return ck;
    }

    public void setCk(String[] ck) {
        this.ck = ck;
    }

    public String[] getReqId() {
        return reqId;
    }

    public void setReqId(String[] reqId) {
        this.reqId = reqId;
    }

    public String getStatusId() {
        return statusId;
    }

    public void setStatusId(String statusId) {
        this.statusId = statusId;
    }
     

    /**
     * @return the reqId
     */
   

    /**
     * @return the statusId
     */
    
    

    /**
     * @return the statusChangedBy
     */
    public String getStatusChangedBy() {
        return statusChangedBy;
    }

    /**
     * @param statusChangedBy the statusChangedBy to set
     */
    public void setStatusChangedBy(String statusChangedBy) {
        this.statusChangedBy = statusChangedBy;
    }

    /**
     * @return the remark
     */
    public String getRemark() {
        return remark;
    }

    /**
     * @param remark the remark to set
     */
    public void setRemark(String remark) {
        this.remark = remark;
    }

    /**
     * @return the requirementMaster
     */
    public RequirementMaster getRequirementMaster() {
        return requirementMaster;
    }

    /**
     * @param requirementMaster the requirementMaster to set
     */
    public void setRequirementMaster(RequirementMaster requirementMaster) {
        this.requirementMaster = requirementMaster;
    }

    /**
     * @return the statusChangedDate
     */
    public Date getStatusChangedDate() {
        return statusChangedDate;
    }

    /**
     * @param statusChangedDate the statusChangedDate to set
     */
    public void setStatusChangedDate(Date statusChangedDate) {
        this.statusChangedDate = statusChangedDate;
    }

    /**
     * @return
     */

}
