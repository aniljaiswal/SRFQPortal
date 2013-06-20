/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import java.util.Date;


/**
 *
 * @author kunal
 */
public class view_update_requestbean extends org.apache.struts.action.ActionForm {
    private String reqId;
    private String requirementPriorityMaster;
    private String materialMaster;
    private String unitMeasureMaster;
    private String quantity;
    private Date reqPostingOpeningDate;
    private Date reqPostingClosingDate;
    private String postedBy;
    private String ck[];
     private String but;

    /**
     * @return the reqId
     */
    public String getReqId() {
        return reqId;
    }

    /**
     * @param reqId the reqId to set
     */
    public void setReqId(String reqId) {
        this.reqId = reqId;
    }

    /**
     * @return the requirementPriorityMaster
     */
    public String getRequirementPriorityMaster() {
        return requirementPriorityMaster;
    }

    /**
     * @param requirementPriorityMaster the requirementPriorityMaster to set
     */
    public void setRequirementPriorityMaster(String requirementPriorityMaster) {
        this.requirementPriorityMaster = requirementPriorityMaster;
    }

    /**
     * @return the materialMaster
     */
    public String getMaterialMaster() {
        return materialMaster;
    }

    /**
     * @param materialMaster the materialMaster to set
     */
    public void setMaterialMaster(String materialMaster) {
        this.materialMaster = materialMaster;
    }

    /**
     * @return the unitMeasureMaster
     */
    public String getUnitMeasureMaster() {
        return unitMeasureMaster;
    }

    /**
     * @param unitMeasureMaster the unitMeasureMaster to set
     */
    public void setUnitMeasureMaster(String unitMeasureMaster) {
        this.unitMeasureMaster = unitMeasureMaster;
    }

    /**
     * @return the quantity
     */
    public String getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    /**
     * @return the reqPostingOpeningDate
     */
    public Date getReqPostingOpeningDate() {
        return reqPostingOpeningDate;
    }

    /**
     * @param reqPostingOpeningDate the reqPostingOpeningDate to set
     */
    public void setReqPostingOpeningDate(Date reqPostingOpeningDate) {
        this.reqPostingOpeningDate = reqPostingOpeningDate;
    }

    /**
     * @return the reqPostingClosingDate
     */
    public Date getReqPostingClosingDate() {
        return reqPostingClosingDate;
    }

    /**
     * @param reqPostingClosingDate the reqPostingClosingDate to set
     */
    public void setReqPostingClosingDate(Date reqPostingClosingDate) {
        this.reqPostingClosingDate = reqPostingClosingDate;
    }

    /**
     * @return the postedBy
     */
    public String getPostedBy() {
        return postedBy;
    }

    /**
     * @param postedBy the postedBy to set
     */
    public void setPostedBy(String postedBy) {
        this.postedBy = postedBy;
    }

    /**
     * @return the ck
     */
    public String[] getCk() {
        return ck;
    }

    /**
     * @param ck the ck to set
     */
    public void setCk(String[] ck) {
        this.ck = ck;
    }

    /**
     * @return the but
     */
    public String getBut() {
        return but;
    }

    /**
     * @param but the but to set
     */
    public void setBut(String but) {
        this.but = but;
    }
}
