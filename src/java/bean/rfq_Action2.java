/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import connect.connection;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author shashi
 */
public class rfq_Action2 extends org.apache.struts.action.Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
            rfq_Bean2 lb=(rfq_Bean2)form;
            String rfq_st_id=lb.getRfq_st_id();
            String  rfq_st_re=lb.getRfq_st_re();
            String  rfq_st=lb.getRfq_st();
            String  rfq_st_wt=lb.getRfq_st_wt();
            System.out.println(rfq_st_id);
            System.out.println(rfq_st_re);
            System.out.println(rfq_st);
            System.out.println(rfq_st_wt);
        
        try {
             Connection con=connection.getcon();
//             System.out.println("================"+con);
             Statement s=con.createStatement();
             String q="insert into rfq_status_master values('"+rfq_st_id+"','"+rfq_st_re+"','"+rfq_st+"','"+rfq_st_wt+"')";
             int i=s.executeUpdate(q);
             if(i>0)
             {
             return mapping.findForward("success6");
            }
             else
             {
              return mapping.findForward("error");
             }}
           catch(Exception e){
          System.out.println(e.getMessage());
          return mapping.findForward("error");
         
        }
      }
}
