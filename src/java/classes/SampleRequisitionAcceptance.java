package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * SampleRequisitionAcceptance generated by hbm2java
 */
public class SampleRequisitionAcceptance  implements java.io.Serializable {


     private String sampleRequisitionId;
     private String suppQuotoationId;
     private String acceptanceStatus;
     private Date acceptanceDate;

    public SampleRequisitionAcceptance() {
    }

    public SampleRequisitionAcceptance(String sampleRequisitionId, String suppQuotoationId, String acceptanceStatus, Date acceptanceDate) {
       this.sampleRequisitionId = sampleRequisitionId;
       this.suppQuotoationId = suppQuotoationId;
       this.acceptanceStatus = acceptanceStatus;
       this.acceptanceDate = acceptanceDate;
    }
   
    public String getSampleRequisitionId() {
        return this.sampleRequisitionId;
    }
    
    public void setSampleRequisitionId(String sampleRequisitionId) {
        this.sampleRequisitionId = sampleRequisitionId;
    }
    public String getSuppQuotoationId() {
        return this.suppQuotoationId;
    }
    
    public void setSuppQuotoationId(String suppQuotoationId) {
        this.suppQuotoationId = suppQuotoationId;
    }
    public String getAcceptanceStatus() {
        return this.acceptanceStatus;
    }
    
    public void setAcceptanceStatus(String acceptanceStatus) {
        this.acceptanceStatus = acceptanceStatus;
    }
    public Date getAcceptanceDate() {
        return this.acceptanceDate;
    }
    
    public void setAcceptanceDate(Date acceptanceDate) {
        this.acceptanceDate = acceptanceDate;
    }




}


