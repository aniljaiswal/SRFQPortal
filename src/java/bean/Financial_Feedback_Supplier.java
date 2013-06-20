/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

/**
 *
 * @author Anshika
 */
public class Financial_Feedback_Supplier extends org.apache.struts.action.ActionForm {
    
    private String suppId;
    private String suppName;
    private String suppStatusId;

    /**
     * @return the suppId
     */
    public String getSuppId() {
        return suppId;
    }

    /**
     * @param suppId the suppId to set
     */
    public void setSuppId(String suppId) {
        this.suppId = suppId;
    }

    /**
     * @return the suppName
     */
    public String getSuppName() {
        return suppName;
    }

    /**
     * @param suppName the suppName to set
     */
    public void setSuppName(String suppName) {
        this.suppName = suppName;
    }

    /**
     * @return the suppStatusId
     */
    public String getSuppStatusId() {
        return suppStatusId;
    }

    /**
     * @param suppStatusId the suppStatusId to set
     */
    public void setSuppStatusId(String suppStatusId) {
        this.suppStatusId = suppStatusId;
    }

  
}
