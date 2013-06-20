

package bean;


public class SampleAppBean extends org.apache.struts.action.ActionForm {
    
    private String suppQuatationId;

    private String  materialGoodwillId;
    private String ratingId;
    private String sampleTechApprovalId;
    private String sampleTechApproved;
    private String feedback;
    private String sampleTechApprovedBy;
    private String dateOn;
     private String but;

    /**
     * @return
     */
    public String getSampleTechApprovalId() {
        return sampleTechApprovalId ;
    }
    /**
     * @param string
     */
    public void setSampleTechApprovalId(String sampleTechApprovalId) {
        this.sampleTechApprovalId = sampleTechApprovalId;
    }

     public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

     public String getSampleTechApproved() {
        return sampleTechApproved;
    }

    public void setSampleTechApproved(String sampleTechApproved) {
        this.sampleTechApproved =sampleTechApproved;
    }

    public String getSampleTechApprovedBy() {
        return sampleTechApprovedBy;
    }

    public void setSampleTechApprovedBy(String sampleTechApprovedBy) {
        this.sampleTechApprovedBy = sampleTechApprovedBy;
    }

     public String getDateOn() {
        return dateOn;
    }

    public void setDateOn(String dateOn) {
        this.dateOn = dateOn;
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
    public String getMaterialGoodwillId() {
        return materialGoodwillId;
    }

    public void setMaterialGoodwillId(String materialGoodwillId) {
        this.materialGoodwillId = materialGoodwillId;
    }

     public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but;
    }

}
    /**
     * @return
     */
   