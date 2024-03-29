package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * FinancialGoodwillMaster generated by hbm2java
 */
public class FinancialGoodwillMaster  implements java.io.Serializable {


     private String financGoodwillId;
     private String financGoodwillDesc;
     private Set financialFeedbackMasters = new HashSet(0);
     private Set sampleFinancialApprovals = new HashSet(0);

    public FinancialGoodwillMaster() {
    }

	
    public FinancialGoodwillMaster(String financGoodwillId, String financGoodwillDesc) {
        this.financGoodwillId = financGoodwillId;
        this.financGoodwillDesc = financGoodwillDesc;
    }
    public FinancialGoodwillMaster(String financGoodwillId, String financGoodwillDesc, Set financialFeedbackMasters, Set sampleFinancialApprovals) {
       this.financGoodwillId = financGoodwillId;
       this.financGoodwillDesc = financGoodwillDesc;
       this.financialFeedbackMasters = financialFeedbackMasters;
       this.sampleFinancialApprovals = sampleFinancialApprovals;
    }
   
    public String getFinancGoodwillId() {
        return this.financGoodwillId;
    }
    
    public void setFinancGoodwillId(String financGoodwillId) {
        this.financGoodwillId = financGoodwillId;
    }
    public String getFinancGoodwillDesc() {
        return this.financGoodwillDesc;
    }
    
    public void setFinancGoodwillDesc(String financGoodwillDesc) {
        this.financGoodwillDesc = financGoodwillDesc;
    }
    public Set getFinancialFeedbackMasters() {
        return this.financialFeedbackMasters;
    }
    
    public void setFinancialFeedbackMasters(Set financialFeedbackMasters) {
        this.financialFeedbackMasters = financialFeedbackMasters;
    }
    public Set getSampleFinancialApprovals() {
        return this.sampleFinancialApprovals;
    }
    
    public void setSampleFinancialApprovals(Set sampleFinancialApprovals) {
        this.sampleFinancialApprovals = sampleFinancialApprovals;
    }




}


