/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;
import bean.Admin_Approval_Bean2;
import connect.connection;
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
public class Admin_Approval_Action2 extends org.apache.struts.action.Action {
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
         HttpSession obj=request.getSession(true);
        Admin_Approval_Bean2 lb=(Admin_Approval_Bean2)form;
        String sel=lb.getSel();
        System.out.println("sel"+sel);
        System.out.println("sel"+sel);
        obj.setAttribute("sel", sel);
        Connection con=connection.getcon();
        Statement s=con.createStatement();
        ResultSet rs=s.executeQuery("select * from  financial_feedback_master where  Supp_Quatation_Id='"+sel+"'");
        Result rs1=ResultSupport.toResult(rs);
        obj.setAttribute("rs1", rs1);
        ResultSet l=s.executeQuery("select * from  technical_feedback_master where  Supp_Quatation_Id='"+sel+"'");
        Result l1=ResultSupport.toResult(l);
        obj.setAttribute("rs2", l1);
        ResultSet l2=s.executeQuery("select * from supplier_quatation_master where  Supp_Quatation_Id='"+sel+"'");
        Result l3=ResultSupport.toResult(l2);
        obj.setAttribute("rs3", l3);
        ResultSet l4=s.executeQuery("select * from rating_master");
        Result l5=ResultSupport.toResult(l4);
        obj.setAttribute("rs4", l5);
        return mapping.findForward("success4");
    }
}
