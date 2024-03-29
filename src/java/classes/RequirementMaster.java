package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * RequirementMaster generated by hbm2java
 */
public class RequirementMaster  implements java.io.Serializable {


     private String reqId;
     private RequirementPriorityMaster requirementPriorityMaster;
     private MaterialMaster materialMaster;
     private UnitMeasureMaster unitMeasureMaster;
     private String quantity;
     private Date reqPostingOpeningDate;
     private Date reqPostingClosingDate;
     private String postedBy;
     private Set requirementAnalysisInitiations = new HashSet(0);
     private Set supplierQuatationMasters = new HashSet(0);

    public RequirementMaster() {
    }

	
    public RequirementMaster(String reqId, RequirementPriorityMaster requirementPriorityMaster, MaterialMaster materialMaster, UnitMeasureMaster unitMeasureMaster, String quantity, Date reqPostingOpeningDate, Date reqPostingClosingDate, String postedBy) {
        this.reqId = reqId;
        this.requirementPriorityMaster = requirementPriorityMaster;
        this.materialMaster = materialMaster;
        this.unitMeasureMaster = unitMeasureMaster;
        this.quantity = quantity;
        this.reqPostingOpeningDate = reqPostingOpeningDate;
        this.reqPostingClosingDate = reqPostingClosingDate;
        this.postedBy = postedBy;
    }
    public RequirementMaster(String reqId, RequirementPriorityMaster requirementPriorityMaster, MaterialMaster materialMaster, UnitMeasureMaster unitMeasureMaster, String quantity, Date reqPostingOpeningDate, Date reqPostingClosingDate, String postedBy, Set requirementAnalysisInitiations, Set supplierQuatationMasters) {
       this.reqId = reqId;
       this.requirementPriorityMaster = requirementPriorityMaster;
       this.materialMaster = materialMaster;
       this.unitMeasureMaster = unitMeasureMaster;
       this.quantity = quantity;
       this.reqPostingOpeningDate = reqPostingOpeningDate;
       this.reqPostingClosingDate = reqPostingClosingDate;
       this.postedBy = postedBy;
       this.requirementAnalysisInitiations = requirementAnalysisInitiations;
       this.supplierQuatationMasters = supplierQuatationMasters;
    }
   
    public String getReqId() {
        return this.reqId;
    }
    
    public void setReqId(String reqId) {
        this.reqId = reqId;
    }
    public RequirementPriorityMaster getRequirementPriorityMaster() {
        return this.requirementPriorityMaster;
    }
    
    public void setRequirementPriorityMaster(RequirementPriorityMaster requirementPriorityMaster) {
        this.requirementPriorityMaster = requirementPriorityMaster;
    }
    public MaterialMaster getMaterialMaster() {
        return this.materialMaster;
    }
    
    public void setMaterialMaster(MaterialMaster materialMaster) {
        this.materialMaster = materialMaster;
    }
    public UnitMeasureMaster getUnitMeasureMaster() {
        return this.unitMeasureMaster;
    }
    
    public void setUnitMeasureMaster(UnitMeasureMaster unitMeasureMaster) {
        this.unitMeasureMaster = unitMeasureMaster;
    }
    public String getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }
    public Date getReqPostingOpeningDate() {
        return this.reqPostingOpeningDate;
    }
    
    public void setReqPostingOpeningDate(Date reqPostingOpeningDate) {
        this.reqPostingOpeningDate = reqPostingOpeningDate;
    }
    public Date getReqPostingClosingDate() {
        return this.reqPostingClosingDate;
    }
    
    public void setReqPostingClosingDate(Date reqPostingClosingDate) {
        this.reqPostingClosingDate = reqPostingClosingDate;
    }
    public String getPostedBy() {
        return this.postedBy;
    }
    
    public void setPostedBy(String postedBy) {
        this.postedBy = postedBy;
    }
    public Set getRequirementAnalysisInitiations() {
        return this.requirementAnalysisInitiations;
    }
    
    public void setRequirementAnalysisInitiations(Set requirementAnalysisInitiations) {
        this.requirementAnalysisInitiations = requirementAnalysisInitiations;
    }
    public Set getSupplierQuatationMasters() {
        return this.supplierQuatationMasters;
    }
    
    public void setSupplierQuatationMasters(Set supplierQuatationMasters) {
        this.supplierQuatationMasters = supplierQuatationMasters;
    }




}


