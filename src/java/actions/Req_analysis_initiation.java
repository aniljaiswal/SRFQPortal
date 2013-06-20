/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;
import classes.*;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author NITIKA
 */
public class Req_analysis_initiation extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */ 
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
           HttpSession s1=request.getSession(true);
Session s=NewHibernateUtil.getSessionFactory().openSession();


    Query q=s.createQuery("from RequirementAnalysisInitiation");
    List l=q.list();
   s1.setAttribute("obj",l);
            System.out.println("Hello");
            Iterator a=l.iterator();
            while(a.hasNext())
            {
             RequirementAnalysisInitiation ob=(RequirementAnalysisInitiation)a.next();
                System.out.println(ob.getReqId());
            }
    return mapping.findForward("in");
        }

        catch(Exception e)
         {
            e.printStackTrace();
             System.out.println("exception...."+e.getMessage());
            return mapping.findForward("in");
        }
    }
}


//Iterator it=l.iterator();
//    while(it.hasNext())
//    {
//        RequirementAnalysisInitiation r=(RequirementAnalysisInitiation)it.next();
//        String rid=r.getReqId();
//        String sid=r.getStatusId();
//        String rem=r.getRemark();
//        s1.se
//
//    }
