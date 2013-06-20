/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Kanika
 */
public class TechFeedbacksBean extends org.apache.struts.action.ActionForm {
   
   private String techFeedbackId;
    private String techApproved;
    private String feedback;
    private String feedbackBy;
    private String suppQuatationId;
    private String feedBackDate;
    private String  materialGoodwillId;
    private String ratingId;
  //  private String feedbackDate;
    private String but;

    /**
     * @return
     */
   
     public String getTechFeedbackId() {
        return techFeedbackId;
    }

    /**
     * @param reqId the reqId to set
     */
    public void setTechFeedbackId(String techFeedbackId) {
        this.techFeedbackId = techFeedbackId;
    }

       public String getTechApproved() {
        return techApproved;
    }

    public void setTechApproved(String techApproved) {
        this.techApproved = techApproved;
    }

     public String getFeedback() {
        return feedback;
    }

    /**
     * @param reqId the reqId to set
     */
    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

     public String getFeedbackBy() {
        return feedbackBy;
    }

    /**
     * @param reqId the reqId to set
     */
    public void setFeedbackBy(String feedbackBy) {
        this.feedbackBy = feedbackBy;
    }
    public String getBut() {
        return but;
    }

    public void setBut(String but) {
        this.but = but;
    }
    
     public String getSuppQuatationId() {
        return suppQuatationId;
    }

    public void setSuppQuatationId(String suppQuatationId) {
        this.suppQuatationId = suppQuatationId;
    }

  public String getFeedBackDate() {
        return feedBackDate;
    }

    /**
     * @param reqId the reqId to set
     */
   public void setFeedBackDate(String feedBackDate) {
        this.feedBackDate = feedBackDate;
    }

 public String getMaterialGoodwillId() {
        return materialGoodwillId;
    }

    public void setMaterialGoodwillId(String materialGoodwillId) {
        this.materialGoodwillId = materialGoodwillId;
    }

     public String getRatingId() {
        return ratingId;
    }

    public void setRatingId(String ratingId) {
        this.ratingId = ratingId;
    }

 public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getTechFeedbackId() == null || getTechFeedbackId().length() < 1) {
            errors.add("id", new ActionMessage("error.id.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getTechApproved() == null || getTechApproved().length() < 1) {
            errors.add("approved", new ActionMessage("error.approved.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getFeedback() == null || getFeedback().length() < 1) {
            errors.add("feedback", new ActionMessage("error.feedback.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getFeedbackBy() == null || getFeedbackBy().length() < 1) {
            errors.add("feedbackby", new ActionMessage("error.feedbackby.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getBut() == null || getBut().length() < 1) {
            errors.add("but", new ActionMessage("error.but.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getSuppQuatationId() == null || getSuppQuatationId().length() < 1) {
            errors.add("quotationid", new ActionMessage("error.quotationid.required"));
            // TODO: add 'error.name.required' key to your resources
        }if (getMaterialGoodwillId() == null || getMaterialGoodwillId().length() < 1) {
            errors.add("material", new ActionMessage("error.material.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (getRatingId() == null || getRatingId().length() < 1) {
            errors.add("rating", new ActionMessage("error.rating.required"));
            // TODO: add 'error.name.required' key to your resources
       }



        return errors;
    }
}


    /**
     * @return
     */


    /**
     * @param i
     */


    /**
     *
     */

        // TODO Auto-generated constructor stub

    /**
     * @return
     */


    /**
     * @param i
     */


    /**
     *
     */

        // TODO Auto-generated constructor stub
   