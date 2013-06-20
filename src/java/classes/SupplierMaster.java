package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * SupplierMaster generated by hbm2java
 */
public class SupplierMaster  implements java.io.Serializable {


     private String suppId;
     private SupplierStatusMaster supplierStatusMaster;
     private String suppName;
     private Set supplierQuatationMasters = new HashSet(0);

    public SupplierMaster() {
    }

	
    public SupplierMaster(String suppId, SupplierStatusMaster supplierStatusMaster, String suppName) {
        this.suppId = suppId;
        this.supplierStatusMaster = supplierStatusMaster;
        this.suppName = suppName;
    }
    public SupplierMaster(String suppId, SupplierStatusMaster supplierStatusMaster, String suppName, Set supplierQuatationMasters) {
       this.suppId = suppId;
       this.supplierStatusMaster = supplierStatusMaster;
       this.suppName = suppName;
       this.supplierQuatationMasters = supplierQuatationMasters;
    }
   
    public String getSuppId() {
        return this.suppId;
    }
    
    public void setSuppId(String suppId) {
        this.suppId = suppId;
    }
    public SupplierStatusMaster getSupplierStatusMaster() {
        return this.supplierStatusMaster;
    }
    
    public void setSupplierStatusMaster(SupplierStatusMaster supplierStatusMaster) {
        this.supplierStatusMaster = supplierStatusMaster;
    }
    public String getSuppName() {
        return this.suppName;
    }
    
    public void setSuppName(String suppName) {
        this.suppName = suppName;
    }
    public Set getSupplierQuatationMasters() {
        return this.supplierQuatationMasters;
    }
    
    public void setSupplierQuatationMasters(Set supplierQuatationMasters) {
        this.supplierQuatationMasters = supplierQuatationMasters;
    }




}


