/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.EvaluationBean1;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Bhawna
 */
public class EvaluationAction3 extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        EvaluationBean1 eb=(EvaluationBean1)form;
        System.out.println("@@@@@@@@@@@@2");

        String mg_id=eb.getSampleid();
        String mg_tp=eb.getTargetpr();
        String mg_sp=eb.getSamplepr();
        String mg_q=eb.getQuality();
        String mg_pd=eb.getPartdiscripation();
        String mg_p=eb.getPlaceprod();
        String mg_pl=eb.getPartlt();
        String mg_po=eb.getPartoptimization();
        
        
        String mg_d=eb.getDevision();
        String mg_b=eb.getButton1();
        System.out.println("Hi.............");
        System.out.println(mg_id +"........"+mg_tp+mg_sp+mg_q+mg_p+mg_p+mg_po+mg_pl+mg_pd+mg_d+mg_b);

        Connection con=(Connection) connect.connection.getcon();
        Statement st=(Statement) con.createStatement();
        int i=st.executeUpdate("insert into sample_evaluation_master values('"+mg_id+"','"+mg_tp+"','"+mg_sp+"','"+mg_q+"','"+mg_pd+"','"+mg_p+"','"+mg_pl+"','"+mg_po+"','"+mg_d+"')");

       // request.setAttribute("msg", "Record Successfully inserted.....");

        return mapping.findForward("sub");
    }
}
