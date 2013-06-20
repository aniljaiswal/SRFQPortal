/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;
import bean.SampleFbBean;
import connect.connection;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author Kanika
 */
public class SamplefbAct1 extends org.apache.struts.action.Action {
    
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
        SampleFbBean ob=(SampleFbBean)form;
        String sid=ob.getSampleId();
        String qid=ob.getSuppQuatationId();
        String rid=ob.getRatingId();
        String rd=ob.getTechApproved();
        String fb=ob.getFeedback();
        String fbb=ob.getFeedbackBy();
        String fd=ob.getFeedBackDate();
        String but=ob.getBut();
        Connection c=(Connection)connection.getcon();
        
        if(but.equalsIgnoreCase("Submit"))
        {
        Statement st=(Statement) c.createStatement();
        int in=st.executeUpdate("insert into sample_tech_feedback_master values('"+sid+"','"+qid+"','"+rid+"','"+rd+"','"+fb+"','"+fbb+"','"+fd+"')");
//        Result rs1=ResultSupport.toResult(rs);
//        if(rs.next())
//        {
//            System.out.println(rs);
//        }
        if(in>0){
            request.setAttribute("msg","Sample Technical Feedback Processd Susessfully");
             return mapping.findForward("sampfeed");
        }
        else {
request.setAttribute("msg","Sample Technical Feedback Processd UnSusessfully");
             return mapping.findForward("sampfeed");
            
        }
        }
        else {
            request.setAttribute("msg","Sample Technical Feedback Processd UnSusessfully");
             return mapping.findForward("sampfeed");

        }
        }
        catch(Exception e)
        {
            e.printStackTrace();
            System.out.println("Exception: "+e.getMessage());
            request.setAttribute("msg","Sample Technical Feedback Processd UnSusessfully");
             return mapping.findForward("sampfeed");

        }

       
    }
}
