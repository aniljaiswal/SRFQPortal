package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * MaterialMaster generated by hbm2java
 */
public class MaterialMaster  implements java.io.Serializable {


     private String materialId;
     private MaterialGroupMaster materialGroupMaster;
     private String materialDesc;
     private String techDesc;
     private Set requirementMasters = new HashSet(0);

    public MaterialMaster() {
    }

	
    public MaterialMaster(String materialId, MaterialGroupMaster materialGroupMaster, String materialDesc, String techDesc) {
        this.materialId = materialId;
        this.materialGroupMaster = materialGroupMaster;
        this.materialDesc = materialDesc;
        this.techDesc = techDesc;
    }
    public MaterialMaster(String materialId, MaterialGroupMaster materialGroupMaster, String materialDesc, String techDesc, Set requirementMasters) {
       this.materialId = materialId;
       this.materialGroupMaster = materialGroupMaster;
       this.materialDesc = materialDesc;
       this.techDesc = techDesc;
       this.requirementMasters = requirementMasters;
    }
   
    public String getMaterialId() {
        return this.materialId;
    }
    
    public void setMaterialId(String materialId) {
        this.materialId = materialId;
    }
    public MaterialGroupMaster getMaterialGroupMaster() {
        return this.materialGroupMaster;
    }
    
    public void setMaterialGroupMaster(MaterialGroupMaster materialGroupMaster) {
        this.materialGroupMaster = materialGroupMaster;
    }
    public String getMaterialDesc() {
        return this.materialDesc;
    }
    
    public void setMaterialDesc(String materialDesc) {
        this.materialDesc = materialDesc;
    }
    public String getTechDesc() {
        return this.techDesc;
    }
    
    public void setTechDesc(String techDesc) {
        this.techDesc = techDesc;
    }
    public Set getRequirementMasters() {
        return this.requirementMasters;
    }
    
    public void setRequirementMasters(Set requirementMasters) {
        this.requirementMasters = requirementMasters;
    }




}


