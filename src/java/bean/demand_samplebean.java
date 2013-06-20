/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;
/**
 *
 * @author kunal
 */
public class demand_samplebean extends org.apache.struts.action.ActionForm {

     private String sampleAdminRequest;
     private String unitMeasureMaster;
     private String sampleExpectedSendingDate;
     private String quantity;
     private String but;

    /**
     * @return the sampleAdminRequest
     */
    public String getSampleAdminRequest() {
        return sampleAdminRequest;
    }

    /**
     * @param sampleAdminRequest the sampleAdminRequest to set
     */
    public void setSampleAdminRequest(String sampleAdminRequest) {
        this.sampleAdminRequest = sampleAdminRequest;
    }

    /**
     * @return the unitMeasureMaster
     */
    public String getUnitMeasureMaster() {
        return unitMeasureMaster;
    }

    /**
     * @param unitMeasureMaster the unitMeasureMaster to set
     */
    public void setUnitMeasureMaster(String unitMeasureMaster) {
        this.unitMeasureMaster = unitMeasureMaster;
    }

    /**
     * @return the sampleExpectedSendingDate
     */
    public String getSampleExpectedSendingDate() {
        return sampleExpectedSendingDate;
    }

    /**
     * @param sampleExpectedSendingDate the sampleExpectedSendingDate to set
     */
    public void setSampleExpectedSendingDate(String sampleExpectedSendingDate) {
        this.sampleExpectedSendingDate = sampleExpectedSendingDate;
    }

    /**
     * @return the quantity
     */
    public String getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    /**
     * @return the but
     */
    public String getBut() {
        return but;
    }

    /**
     * @param but the but to set
     */
    public void setBut(String but) {
        this.but = but;
    }
}
