package classes;
// Generated Nov 14, 2011 2:32:02 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * CurrencyMaster generated by hbm2java
 */
public class CurrencyMaster  implements java.io.Serializable {


     private String currencyId;
     private String currencyDesc;
     private Set supplierQuatationMasters = new HashSet(0);

    public CurrencyMaster() {
    }

	
    public CurrencyMaster(String currencyId, String currencyDesc) {
        this.currencyId = currencyId;
        this.currencyDesc = currencyDesc;
    }
    public CurrencyMaster(String currencyId, String currencyDesc, Set supplierQuatationMasters) {
       this.currencyId = currencyId;
       this.currencyDesc = currencyDesc;
       this.supplierQuatationMasters = supplierQuatationMasters;
    }
   
    public String getCurrencyId() {
        return this.currencyId;
    }
    
    public void setCurrencyId(String currencyId) {
        this.currencyId = currencyId;
    }
    public String getCurrencyDesc() {
        return this.currencyDesc;
    }
    
    public void setCurrencyDesc(String currencyDesc) {
        this.currencyDesc = currencyDesc;
    }
    public Set getSupplierQuatationMasters() {
        return this.supplierQuatationMasters;
    }
    
    public void setSupplierQuatationMasters(Set supplierQuatationMasters) {
        this.supplierQuatationMasters = supplierQuatationMasters;
    }




}


