/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

/**
 *
 * @author NITIKA
 */
public class final_approvalbean extends org.apache.struts.action.ActionForm {

private Integer sampleProductionApprovalId;
private String suppQuatationId;
private String ratingId;
private String rd;
private String feedback;
private String but;

    public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public String getRatingId() {
        return ratingId;
    }

    public void setRatingId(String ratingId) {
        this.ratingId = ratingId;
    }

    public String getRd() {
        return rd;
    }

    public void setRd(String rd) {
        this.rd = rd;
    }

    public Integer getSampleProductionApprovalId() {
        return sampleProductionApprovalId;
    }

    public void setSampleProductionApprovalId(Integer sampleProductionApprovalId) {
        this.sampleProductionApprovalId = sampleProductionApprovalId;
    }

    public String getSuppQuatationId() {
        return suppQuatationId;
    }

    public void setSuppQuatationId(String suppQuatationId) {
        this.suppQuatationId = suppQuatationId;
    }


}
