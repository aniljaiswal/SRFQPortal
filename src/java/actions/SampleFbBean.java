/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Kanika
 */
public class SampleFbBean extends org.apache.struts.action.ActionForm {
private String sampleId;
    private String suppQuatationId;
    private String ratingId;
    private String techApproved;
    private String feedback;
    private String feedbackBy;
    private String feedBackDate;
  //  private String feedbackDate;
    private String but;

     public String getSampleId() {
        return sampleId;
    }

    public void setSampleId(String sampleId) {
        this.sampleId = sampleId;
    }
     public String getSuppQuatationId() {
        return suppQuatationId;
    }

    public void setSuppQuatationId(String suppQuatationId) {
        this.suppQuatationId = suppQuatationId;
    }

      public String getRatingId() {
        return ratingId;
    }

    public void setRatingId(String ratingId) {
        this.ratingId = ratingId;
    }

     public String getTechApproved() {
        return techApproved;
    }

    public void setTechApproved(String techApproved) {
        this.techApproved = techApproved;
    }

    public String getFeedback() {
        return feedback;
    }

    /**
     * @param reqId the reqId to set
     */
    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

     public String getFeedbackBy() {
        return feedbackBy;
    }

    /**
     * @param reqId the reqId to set
     */
    public void setFeedbackBy(String feedbackBy) {
        this.feedbackBy = feedbackBy;
    }

   public String getFeedBackDate() {
        return feedBackDate;
    }

    /**
     * @param reqId the reqId to set
     */
   public void setFeedBackDate(String feedBackDate) {
        this.feedBackDate = feedBackDate;
    }

    public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but;
    }





}