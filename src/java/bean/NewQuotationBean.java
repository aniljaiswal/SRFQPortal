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
public class NewQuotationBean extends org.apache.struts.action.ActionForm {
    
    private String txtid;
    private String combMg;
    private String combMn;
    private String combUn;
    private String txtCost;
    private String combCurr;
    private String taTechSpecification;
    private String taRemark;
    private String button1;

    public String getButton1() {
        return button1;
    }

    public void setButton1(String button1) {
        this.button1 = button1;
    }


    public String getCombCurr() {
        return combCurr;
    }

    public void setCombCurr(String combCurr) {
        this.combCurr = combCurr;
    }

    public String getCombMg() {
        return combMg;
    }

    public void setCombMg(String combMg) {
        this.combMg = combMg;
    }

    public String getCombMn() {
        return combMn;
    }

    public void setCombMn(String combMn) {
        this.combMn = combMn;
    }

    public String getCombUn() {
        return combUn;
    }

    public void setCombUn(String combUn) {
        this.combUn = combUn;
    }

    public String getTaRemark() {
        return taRemark;
    }

    public void setTaRemark(String taRemark) {
        this.taRemark = taRemark;
    }

    public String getTaTechSpecification() {
        return taTechSpecification;
    }

    public void setTaTechSpecification(String taTechSpecification) {
        this.taTechSpecification = taTechSpecification;
    }

    public String getTxtCost() {
        return txtCost;
    }

    public void setTxtCost(String txtCost) {
        this.txtCost = txtCost;
    }

    /**
     * @return the txtid
     */
    public String getTxtid() {
        return txtid;
    }

    /**
     * @param txtid the txtid to set
     */
    public void setTxtid(String txtid) {
        this.txtid = txtid;
    }

   

  


   /*public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getTxtid() == null || getTxtid().length() < 1) {
            errors.add("id", new ActionMessage("error.id.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getTxtCost() == null || getTxtCost().length() < 1) {
            errors.add("cost", new ActionMessage("error.cost.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getTaTechSpecification() == null || getTaTechSpecification().length() < 1) {
            errors.add("specification", new ActionMessage("error.specification.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getTaRemark() == null || getTaRemark().length() < 1) {
            errors.add("remark", new ActionMessage("error.remark.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getCombUn() == null || getCombUn().length() < 1) {
            errors.add("unit", new ActionMessage("error.unit.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getCombMn() == null || getCombMn().length() < 1) {
            errors.add("materialid", new ActionMessage("error.materialid.required"));
            // TODO: add 'error.name.required' key to your resources
        }
         if (getCombMg() == null || getCombMg().length() < 1) {
            errors.add("material_group", new ActionMessage("error.material_group.required"));
            // TODO: add 'error.name.required' key to your resources
        } if (getCombCurr() == null || getCombCurr().length() < 1) {
            errors.add("currency", new ActionMessage("error.currency.required"));
            // TODO: add 'error.name.required' key to your resources
        }


        return errors;
    }*/
}
