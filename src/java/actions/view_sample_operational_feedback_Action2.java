/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;


import bean.view_sample_operational_feedback_Bean2;
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
public class view_sample_operational_feedback_Action2 extends org.apache.struts.action.Action {
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
         view_sample_operational_feedback_Bean2 lb=(view_sample_operational_feedback_Bean2)form;
        String u=lb.getSelect();
        System.out.println(u);
        HttpSession obj=request.getSession(true);
       Connection con=connect.connection.getcon();
        Statement s=con.createStatement();
        ResultSet rs=s.executeQuery("select * from sample_operational_feedback where Sample_id="+"'"+u+"'");
        Result res=ResultSupport.toResult(rs);
        obj.setAttribute("rs1", res);     
        return mapping.getInputForward();
    }
}
