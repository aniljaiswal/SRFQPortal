/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;


/**
 *
 * @author NITIKA
 */
public class Req_Specbean extends org.apache.struts.action.ActionForm {

    private String reqId;
    private String statusId;
    private String remark;
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
     * @return the statusId
     */
    public String getStatusId() {
        return statusId;
    }

    /**
     * @param statusId the statusId to set
     */
    public void setStatusId(String statusId) {
        this.statusId = statusId;
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

    public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but;
    }


}
