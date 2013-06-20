/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import connect.connection;
import bean.EvaluationBean2;
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
 * @author Bhawna
 */
public class EvaluationAction2 extends org.apache.struts.action.Action {
    
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
        EvaluationBean2 eb=(EvaluationBean2)form;
        String id1=eb.getId1();
        String id2=eb.getId2();
        System.out.println("hello ........evaluation page2");
        System.out.println(id1);
        System.out.println(id1+""+id2);
        String m_id=null;
        String r_id=null;
        String s_q_id=null;
        String sam_id=null;
        try {

        Connection con= connect.connection.getcon();
        Statement st=con.createStatement();

        ResultSet rs = st.executeQuery("select Material_id from material_master where Material_Desc='"+id2+"'");
        while(rs.next())
        {
             m_id =rs.getString(1);
        }
        System.out.println(m_id);

        System.out.println(m_id);

        ResultSet rs1 = st.executeQuery("select Req_id from requirement_master where Material_Id='"+m_id+"'");
        while(rs1.next())
        {
            r_id=rs1.getString(1);
        }
    System.out.println(r_id);
        ResultSet rs2=st.executeQuery("select * from supplier_quatation_master where Req_id='"+r_id+"'and Supp_id='"+id1+"'");
        while(rs2.next())
        {
           s_q_id=rs2.getString(1);
        }
    System.out.println(s_q_id);
        ResultSet rs3=st.executeQuery("select * from sample_admin_request where Supp_Quatation_Id='"+s_q_id+"'");
        while(rs3.next())
        {
            sam_id=rs3.getString(1);
        }
        System.out.println(sam_id);
          se.setAttribute("s_id",sam_id);
        }
        catch(Exception e){
            e.printStackTrace();
        }

        return mapping.findForward("em");
    }
}
