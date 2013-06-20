/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;


/**
 *
 * @author kunal
 */
public class review_samplingbean extends org.apache.struts.action.ActionForm {
    
    private String sample_Id;
    private String but;
    private String ck[];

    /**
     * @return the sample_Id
     */
    public String getSample_Id() {
        return sample_Id;
    }

    /**
     * @param sample_Id the sample_Id to set
     */
    public void setSample_Id(String sample_Id) {
        this.sample_Id = sample_Id;
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

    /**
     * @return the ck
     */
    public String[] getCk() {
        return ck;
    }

    /**
     * @param ck the ck to set
     */
    public void setCk(String[] ck) {
        this.ck = ck;
    }

   
}
