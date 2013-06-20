/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Bhawna
 */
public class EvaluationBean1 extends org.apache.struts.action.ActionForm {
    
    private String sampleid;

    private String targetpr;
    private String samplepr;
    private String quality;
    private String partdiscripation;
    private String placeprod;
    private String partlt;
    private String partoptimization;
    private String devision;
    private String button1;


    public String getButton1() {
        return button1;
    }

    public void setButton1(String button1) {
        this.button1 = button1;
    }

    public String getDevision() {
        return devision;
    }

    public void setDevision(String devision) {
        this.devision = devision;
    }

    public String getPartdiscripation() {
        return partdiscripation;
    }

    public void setPartdiscripation(String partdiscripation) {
        this.partdiscripation = partdiscripation;
    }

    public String getPartlt() {
        return partlt;
    }

    public void setPartlt(String partlt) {
        this.partlt = partlt;
    }

    public String getPartoptimization() {
        return partoptimization;
    }

    public void setPartoptimization(String partoptimization) {
        this.partoptimization = partoptimization;
    }

    public String getPlaceprod() {
        return placeprod;
    }

    public void setPlaceprod(String placeprod) {
        this.placeprod = placeprod;
    }

    public String getQuality() {
        return quality;
    }

    public void setQuality(String quality) {
        this.quality = quality;
    }

    public String getSampleid() {
        return sampleid;
    }

    public void setSampleid(String sampleid) {
        this.sampleid = sampleid;
    }

    public String getSamplepr() {
        return samplepr;
    }

    public void setSamplepr(String samplepr) {
        this.samplepr = samplepr;
    }

    public String getTargetpr() {
        return targetpr;
    }

    public void setTargetpr(String targetpr) {
        this.targetpr = targetpr;
    }

   

    
    public EvaluationBean1() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
   public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getDevision() == null || getDevision().length() < 1) {
            errors.add("devision", new ActionMessage("error.devision.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getSampleid() == null || getSampleid().length() < 1) {
            errors.add("sampleid", new ActionMessage("error.sampleid.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getTargetpr() == null || getTargetpr().length() < 1) {
            errors.add("targetpr", new ActionMessage("error.targetpr.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getSamplepr() == null || getSamplepr().length() < 1) {
            errors.add("samplepr", new ActionMessage("error.samplepr.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getQuality() == null || getQuality().length() < 1) {
            errors.add("quality", new ActionMessage("error.quality.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getPartdiscripation() == null || getPartdiscripation().length() < 1) {
            errors.add("partdiscripation", new ActionMessage("error.partdiscripation.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getPlaceprod() == null || getPlaceprod().length() < 1) {
            errors.add("placeprod", new ActionMessage("error.placeprod.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getPartlt() == null || getPartlt().length() < 1) {
            errors.add("partlt", new ActionMessage("error.partlt.required"));
            // TODO: add 'error.name.required' key to your resources
        }if (getPartoptimization() == null || getPartoptimization().length() < 1) {
            errors.add("partoptimization", new ActionMessage("error.partoptimization.required"));
            // TODO: add 'error.name.required' key to your resources
        }

        return errors;
    }
}
