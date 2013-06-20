/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

/**
 *
 * @author RAKSHIT
 */
public class Financial_Feedback_Bean extends org.apache.struts.action.ActionForm {

    private String finanFeedId ;
    private String suppQuoId ;
    private String finanGoodDesc ;
    private String ratingDesc ;
    private String feedback ;
    private String feedbackBy ;
    private String feedbackDate ;

    /**
     * @return the finanFeedId
     */
    public String getFinanFeedId() {
        return finanFeedId;
    }

    /**
     * @param finanFeedId the finanFeedId to set
     */
    public void setFinanFeedId(String finanFeedId) {
        this.finanFeedId = finanFeedId;
    }

    /**
     * @return the suppQuoId
     */
    public String getSuppQuoId() {
        return suppQuoId;
    }

    /**
     * @param suppQuoId the suppQuoId to set
     */
    public void setSuppQuoId(String suppQuoId) {
        this.suppQuoId = suppQuoId;
    }

    /**
     * @return the finanGoodDesc
     */
    public String getFinanGoodDesc() {
        return finanGoodDesc;
    }

    /**
     * @param finanGoodDesc the finanGoodDesc to set
     */
    public void setFinanGoodDesc(String finanGoodDesc) {
        this.finanGoodDesc = finanGoodDesc;
    }

    /**
     * @return the ratingDesc
     */
    public String getRatingDesc() {
        return ratingDesc;
    }

    /**
     * @param ratingDesc the ratingDesc to set
     */
    public void setRatingDesc(String ratingDesc) {
        this.ratingDesc = ratingDesc;
    }

    /**
     * @return the feedback
     */
    public String getFeedback() {
        return feedback;
    }

    /**
     * @param feedback the feedback to set
     */
    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    /**
     * @return the feedbackBy
     */
    public String getFeedbackBy() {
        return feedbackBy;
    }

    /**
     * @param feedbackBy the feedbackBy to set
     */
    public void setFeedbackBy(String feedbackBy) {
        this.feedbackBy = feedbackBy;
    }

    /**
     * @return the feedbackDate
     */
    public String getFeedbackDate() {
        return feedbackDate;
    }

    /**
     * @param feedbackDate the feedbackDate to set
     */
    public void setFeedbackDate(String feedbackDate) {
        this.feedbackDate = feedbackDate;
    }

}
