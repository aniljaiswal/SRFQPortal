/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.SeloBean;
import connect.connection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
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
public class SOFAction extends org.apache.struts.action.Action {
    
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
        SeloBean lb=(SeloBean) form;
          String selo=lb.getSelo();
        Connection con=connection.getcon();
        Statement st=con.createStatement();
        ResultSet rs = st.executeQuery("select* from sample_operational_feedback where sample_id='"+selo+"'");
        while(rs.next())
        {
         request.setAttribute("sampleoid",rs.getString(1));
         request.setAttribute("suppquatoid",rs.getString(2));
         request.setAttribute("ratingoid",rs.getString(3));
         request.setAttribute("opapp",rs.getString(4));
         request.setAttribute("feedo",rs.getString(5));
         request.setAttribute("postedoby",rs.getString(6));
         request.setAttribute("postodate",rs.getString(7));
        }
        System.out.println("hello sofAction....");
        return mapping.findForward("vsof");
    }
}
