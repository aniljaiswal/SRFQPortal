/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import classes.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.jstl.sql.Result;
import javax.servlet.jsp.jstl.sql.ResultSupport;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author kunal
 */
public class review_sampling extends org.apache.struts.action.Action {
    
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
        try
        {
            Connection c= connect.connection.getcon();
    Statement st=c.createStatement();
            System.out.println("Hello");
    ResultSet rs=st.executeQuery("select a.req_id,d.sample_id,b.feedback,c.feedback from requirement_master as a,sample_evaluation_master as d,sample_tech_feedback_master as b,sample_fin_feedback_master as c where a.req_id= (select req_id from requirement_master  where req_Id = ( select req_id from supplier_quatation_master where supp_quatation_Id = (select supp_quatation_Id from sample_admin_request where sample_id ='SI001') ) ) and d.sample_id = c.sample_id and d.sample_id = b.sample_id");
    System.out.println("Hello1");
    Result rs1=ResultSupport.toResult(rs);
    System.out.println("Hello 2");
    /*while(rs.next())
    {
        System.out.println(rs.getString(1));
        System.out.println(rs.getString(2));
        System.out.println(rs.getString(3));
        System.out.println(rs.getString(4));
    }*/
    request.setAttribute("sem",rs1);

         }

        catch(Exception e)
        {
             System.out.println("exception...."+e.getMessage());
        }
         return mapping.findForward("in9");
    }
}