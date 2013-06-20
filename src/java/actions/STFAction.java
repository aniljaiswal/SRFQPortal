/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.SeltBean;
import connect.connection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Devvrat
 */
public class STFAction extends org.apache.struts.action.Action {
    
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
        HttpSession se=request.getSession(false);
        SeltBean lb=(SeltBean) form;
          String selt=lb.getSelt();
        Connection con=connection.getcon();
        Statement st=con.createStatement();
        ResultSet rs = st.executeQuery("select* from sample_tech_feedback_master where sample_id='"+selt+"'");
        while(rs.next())
        {
         request.setAttribute("sampleid",rs.getString(1));
         request.setAttribute("suppquatid",rs.getString(2));
         request.setAttribute("ratingid",rs.getString(3));
         request.setAttribute("techapp",rs.getString(4));
         request.setAttribute("feed",rs.getString(5));
         request.setAttribute("postedby",rs.getString(6));
         request.setAttribute("postdate",rs.getString(7));
        }
        System.out.println("hello....");
        return mapping.findForward("vstf");
    }
}
