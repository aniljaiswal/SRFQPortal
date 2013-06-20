/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.sample_feedbackbean;
import connect.connection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.jstl.sql.Result;
import javax.servlet.jsp.jstl.sql.ResultSupport;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author NITIKA
 */
public class sample_feedback1 extends org.apache.struts.action.Action {
    
   
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        try
        {
        sample_feedbackbean ob=(sample_feedbackbean)form;
        String sid=ob.getSampleId();
        String qid=ob.getSuppQuatationId();
        String rid=ob.getRatingId();
        String rd=ob.getRd();
        String feed=ob.getFeedback();
        String feed_by="Vikky";
        String feed_date="2011-10-01";
        String but=ob.getBut();
        Connection c=connect.connection.getcon();
        if(c!=null)
        {
            System.out.println("ok");
        }
         else
        {
            System.out.println("not ok");
        }
        if(but.equalsIgnoreCase("Submit"))
        {
        Statement st=c.createStatement();
        int in=st.executeUpdate("insert into sample_operational_feedback values('"+sid+"','"+qid+"','"+rid+"','"+rd+"','"+feed+"','"+feed_by+"','"+feed_date+"')");
//        Result rs1=ResultSupport.toResult(rs);
//        if(rs.next())
//        {
//            System.out.println(rs);
//        }
        }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            System.out.println("Exception: "+e.getMessage());
        }

        return mapping.findForward("in8");
    }
}
