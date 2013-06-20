package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * FinancialFeedbackMaster generated by hbm2java
 */
public class FinancialFeedbackMaster  implements java.io.Serializable {


     private String financFeedbackId;
     private SupplierQuatationMaster supplierQuatationMaster;
     private RatingMaster ratingMaster;
     private FinancialGoodwillMaster financialGoodwillMaster;
     private String financApproved;
     private String feedback;
     private String feedbackBy;
     private Date feedBackDate;

    public FinancialFeedbackMaster() {
    }

    public FinancialFeedbackMaster(String financFeedbackId, SupplierQuatationMaster supplierQuatationMaster, RatingMaster ratingMaster, FinancialGoodwillMaster financialGoodwillMaster, String financApproved, String feedback, String feedbackBy, Date feedBackDate) {
       this.financFeedbackId = financFeedbackId;
       this.supplierQuatationMaster = supplierQuatationMaster;
       this.ratingMaster = ratingMaster;
       this.financialGoodwillMaster = financialGoodwillMaster;
       this.financApproved = financApproved;
       this.feedback = feedback;
       this.feedbackBy = feedbackBy;
       this.feedBackDate = feedBackDate;
    }
   
    public String getFinancFeedbackId() {
        return this.financFeedbackId;
    }
    
    public void setFinancFeedbackId(String financFeedbackId) {
        this.financFeedbackId = financFeedbackId;
    }
    public SupplierQuatationMaster getSupplierQuatationMaster() {
        return this.supplierQuatationMaster;
    }
    
    public void setSupplierQuatationMaster(SupplierQuatationMaster supplierQuatationMaster) {
        this.supplierQuatationMaster = supplierQuatationMaster;
    }
    public RatingMaster getRatingMaster() {
        return this.ratingMaster;
    }
    
    public void setRatingMaster(RatingMaster ratingMaster) {
        this.ratingMaster = ratingMaster;
    }
    public FinancialGoodwillMaster getFinancialGoodwillMaster() {
        return this.financialGoodwillMaster;
    }
    
    public void setFinancialGoodwillMaster(FinancialGoodwillMaster financialGoodwillMaster) {
        this.financialGoodwillMaster = financialGoodwillMaster;
    }
    public String getFinancApproved() {
        return this.financApproved;
    }
    
    public void setFinancApproved(String financApproved) {
        this.financApproved = financApproved;
    }
    public String getFeedback() {
        return this.feedback;
    }
    
    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
    public String getFeedbackBy() {
        return this.feedbackBy;
    }
    
    public void setFeedbackBy(String feedbackBy) {
        this.feedbackBy = feedbackBy;
    }
    public Date getFeedBackDate() {
        return this.feedBackDate;
    }
    
    public void setFeedBackDate(Date feedBackDate) {
        this.feedBackDate = feedBackDate;
    }




}

