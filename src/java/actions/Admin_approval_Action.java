/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;



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
public class Admin_approval_Action extends org.apache.struts.action.Action {
        
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession obj=request.getSession(true);
        Connection con=connect.connection.getcon();
        Statement s=con.createStatement();
        ResultSet rs=s.executeQuery("select * from financial_feedback_master");
        Result res=ResultSupport.toResult(rs);
        obj.setAttribute("rs", res);
        return mapping.findForward("success3");
    }
}
