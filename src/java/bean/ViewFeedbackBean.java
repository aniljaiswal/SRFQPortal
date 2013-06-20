/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;


/**
 *
 * @author kunal
 */
public class ViewFeedbackBean extends org.apache.struts.action.ActionForm {
    private String techFeedbackId;
    private String techApproved;
    private String materialGoodwillId;
    private String ratingId;
    private String feedback;
    private String feedbackBy;
    private String MaterialTechGoodwillMaster;
    private String feedBackDate;
     private String suppQuatationId;
     private String RatingMaster;
     private String SupplierQuatationMaster;

    /**
     * @return the reqId
     */
     public String getMaterialTechGoodwillMaster() {
         return MaterialTechGoodwillMaster;
     }
     public void setMaterialTechGoodwillMaster(String MaterialTechGoodwillMaster){
         this.MaterialTechGoodwillMaster=MaterialTechGoodwillMaster;
     }
     public String getSupplierQuatationMaster() {
         return SupplierQuatationMaster;
     }

     public void SetSupplierQuatationMaster(String suppQuotMaster) {
         this.SupplierQuatationMaster=suppQuotMaster;
     }
     public String getMaterialGoodwillId() {
        return this.materialGoodwillId;
    }

    public void setMaterialGoodwillId(String materialGoodwillId) {
        this.materialGoodwillId = materialGoodwillId;
    }


      public String getRatingMaster() {
        return RatingMaster;
    }

    public void setRatingMaster(String RatingMaster) {
        this.RatingMaster = RatingMaster;
    }
    public String getTechFeedbackId() {
        return techFeedbackId;
    }

    /**
     * @param reqId the reqId to set
     */
    public void setTechFeedbackId(String techFeedbackId) {
        this.techFeedbackId = techFeedbackId;
    }

    /**
     * @return the requirementPriorityMaster
     */
    public String getTechApproved() {
        return techApproved;
    }

    /**
     * @param requirementPriorityMaster the requirementPriorityMaster to set
     */
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


    public void setFeedbackBy(String feedbackBy) {
        this.feedbackBy = feedbackBy;
    }

     public String getSuppQuatationId() {
        return suppQuatationId;
    }

    public void setSuppQuatationId(String suppQuatationId) {
        this.suppQuatationId = suppQuatationId;
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


     public String getRatingId() {
        return ratingId;
    }

    public void setRatingId(String ratingId) {
        this.ratingId = ratingId;
    }

}
