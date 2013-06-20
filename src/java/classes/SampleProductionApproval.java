package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * SampleProductionApproval generated by hbm2java
 */
public class SampleProductionApproval  implements java.io.Serializable {


     private Integer sampleProductionApprovalId;
     private SupplierQuatationMaster supplierQuatationMaster;
     private RatingMaster ratingMaster;
     private String sampleProdApproved;
     private String feedback;
     private String sampleProdApprovedBy;
     private Date dateOn;

    public SampleProductionApproval() {
    }

    public SampleProductionApproval(SupplierQuatationMaster supplierQuatationMaster, RatingMaster ratingMaster, String sampleProdApproved, String feedback, String sampleProdApprovedBy, Date dateOn) {
       this.supplierQuatationMaster = supplierQuatationMaster;
       this.ratingMaster = ratingMaster;
       this.sampleProdApproved = sampleProdApproved;
       this.feedback = feedback;
       this.sampleProdApprovedBy = sampleProdApprovedBy;
       this.dateOn = dateOn;
    }
   
    public Integer getSampleProductionApprovalId() {
        return this.sampleProductionApprovalId;
    }
    
    public void setSampleProductionApprovalId(Integer sampleProductionApprovalId) {
        this.sampleProductionApprovalId = sampleProductionApprovalId;
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
    public String getSampleProdApproved() {
        return this.sampleProdApproved;
    }
    
    public void setSampleProdApproved(String sampleProdApproved) {
        this.sampleProdApproved = sampleProdApproved;
    }
    public String getFeedback() {
        return this.feedback;
    }
    
    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
    public String getSampleProdApprovedBy() {
        return this.sampleProdApprovedBy;
    }
    
    public void setSampleProdApprovedBy(String sampleProdApprovedBy) {
        this.sampleProdApprovedBy = sampleProdApprovedBy;
    }
    public Date getDateOn() {
        return this.dateOn;
    }
    
    public void setDateOn(Date dateOn) {
        this.dateOn = dateOn;
    }




}

