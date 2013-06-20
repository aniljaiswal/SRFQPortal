/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.review_samplingbean;
import classes.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;

/**
 *
 * @author kunal
 */
public class review_samplingbutton extends org.apache.struts.action.Action {
    
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
        try {
            HttpSession hs=request.getSession(false);

         review_samplingbean rb=(review_samplingbean)form;
            HttpSession s1=request.getSession(false);
            Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
//        Connection c=s.connection();
//           Class.forName("com.mysql.jdbc.Driver");
//            java.sql.Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/srfq","root","password");
//        Statement st=c.createStatement();
     String but=rb.getBut();
     String ck[]=rb.getCk();
     String sample_Id =rb.getSample_Id();
if(but.equalsIgnoreCase("Add") )
{
         for(int i=0;i<ck.length;i++)
         {
            hs.setAttribute("SessionSampleId",sample_Id);
         }
 }



        }
        catch(Exception e)
        {
            System.out.println("exception"+e.getMessage());
        }

        return mapping.findForward("in5");
    }
}