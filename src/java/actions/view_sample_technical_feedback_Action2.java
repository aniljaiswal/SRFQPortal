/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import com.hp.view_sample_technical_feedback_Bean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.sql.Result;
import javax.servlet.jsp.jstl.sql.ResultSupport;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author shashi
 */
public class view_sample_technical_feedback_Action2 extends org.apache.struts.action.Action {
    
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
        view_sample_technical_feedback_Bean lb=(view_sample_technical_feedback_Bean)form;
        String u=lb.getSel();
        System.out.println(u);
        HttpSession obj=request.getSession(true);
        Connection con=connect.connection.getcon();
        Statement s=con.createStatement();
        ResultSet rs=s.executeQuery("select * from sample_tech_feedback_master where Sample_id="+"'"+u+"'");
        Result res=ResultSupport.toResult(rs);
        obj.setAttribute("rs1", res);
        
        return mapping.findForward("fin1");
    }
}
