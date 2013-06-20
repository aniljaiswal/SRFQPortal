package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * MaterialGroupMaster generated by hbm2java
 */
public class MaterialGroupMaster  implements java.io.Serializable {


     private String materialGroupId;
     private String materialGroupName;
     private Set materialMasters = new HashSet(0);

    public MaterialGroupMaster() {
    }

	
    public MaterialGroupMaster(String materialGroupId, String materialGroupName) {
        this.materialGroupId = materialGroupId;
        this.materialGroupName = materialGroupName;
    }
    public MaterialGroupMaster(String materialGroupId, String materialGroupName, Set materialMasters) {
       this.materialGroupId = materialGroupId;
       this.materialGroupName = materialGroupName;
       this.materialMasters = materialMasters;
    }
   
    public String getMaterialGroupId() {
        return this.materialGroupId;
    }
    
    public void setMaterialGroupId(String materialGroupId) {
        this.materialGroupId = materialGroupId;
    }
    public String getMaterialGroupName() {
        return this.materialGroupName;
    }
    
    public void setMaterialGroupName(String materialGroupName) {
        this.materialGroupName = materialGroupName;
    }
    public Set getMaterialMasters() {
        return this.materialMasters;
    }
    
    public void setMaterialMasters(Set materialMasters) {
        this.materialMasters = materialMasters;
    }




}

