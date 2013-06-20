/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;


import connect.connection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
public class rfq_Action extends org.apache.struts.action.Action {
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        HttpSession obj=request.getSession(true);
        Connection con=connection.getcon();
        Statement s=con.createStatement();
        ResultSet rs=s.executeQuery("select * from rfq_status_master");
        Result res=ResultSupport.toResult(rs);
        obj.setAttribute("rs", res);
        List<String> k=new ArrayList<String>();
          k.add("A");
          k.add("B");
          k.add("C");
          k.add("D");
          obj.setAttribute("k", k);
          List<String> st=new ArrayList<String>();
          st.add("RFQCreated");
          st.add("RFQInProcess");
          st.add("RFQApproved");
          st.add("RFQFailed");
          st.add("RFQSampleRequisition");
          obj.setAttribute("st",st );
          List<String> w=new ArrayList<String>();
          w.add("HighPriority");
          w.add("NormalPriority");
          w.add("LowPriority");
          obj.setAttribute("w", w);
          
        return mapping.findForward("success5");
    }
}
