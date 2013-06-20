package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * QuotationAnalysisInitiation generated by hbm2java
 */
public class QuotationAnalysisInitiation  implements java.io.Serializable {


     private String suppQuotationId;
     private StatusMaster statusMaster;
     private String statusChangedBy;
     private Date statusChangedDate;
     private String remark;

    public QuotationAnalysisInitiation() {
    }

    public QuotationAnalysisInitiation(String suppQuotationId, StatusMaster statusMaster, String statusChangedBy, Date statusChangedDate, String remark) {
       this.suppQuotationId = suppQuotationId;
       this.statusMaster = statusMaster;
       this.statusChangedBy = statusChangedBy;
       this.statusChangedDate = statusChangedDate;
       this.remark = remark;
    }
   
    public String getSuppQuotationId() {
        return this.suppQuotationId;
    }
    
    public void setSuppQuotationId(String suppQuotationId) {
        this.suppQuotationId = suppQuotationId;
    }
    public StatusMaster getStatusMaster() {
        return this.statusMaster;
    }
    
    public void setStatusMaster(StatusMaster statusMaster) {
        this.statusMaster = statusMaster;
    }
    public String getStatusChangedBy() {
        return this.statusChangedBy;
    }
    
    public void setStatusChangedBy(String statusChangedBy) {
        this.statusChangedBy = statusChangedBy;
    }
    public Date getStatusChangedDate() {
        return this.statusChangedDate;
    }
    
    public void setStatusChangedDate(Date statusChangedDate) {
        this.statusChangedDate = statusChangedDate;
    }
    public String getRemark() {
        return this.remark;
    }
    
    public void setRemark(String remark) {
        this.remark = remark;
    }




}


