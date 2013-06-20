/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.SelfBean;
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
public class SFFAction extends org.apache.struts.action.Action {
    
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
        SelfBean lb=(SelfBean) form;
          String self=lb.getSelf();
        Connection con=connection.getcon();
        Statement st=con.createStatement();
        ResultSet rs = st.executeQuery("select* from sample_fin_feedback_master where sample_id='"+self+"'");
        while(rs.next())
        {
         request.setAttribute("samplefid",rs.getString(1));
         request.setAttribute("suppquatfid",rs.getString(2));
         request.setAttribute("ratingfid",rs.getString(3));
         request.setAttribute("finapp",rs.getString(4));
         request.setAttribute("feedf",rs.getString(5));
         request.setAttribute("postedfby",rs.getString(6));
         request.setAttribute("postfdate",rs.getString(7));
        }
        System.out.println("hello SFFAction....");
        return mapping.findForward("vsff");
    }
}
