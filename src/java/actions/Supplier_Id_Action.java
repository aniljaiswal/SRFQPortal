/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import bean.Supplier_Id;
import util.NewHibernateUtil;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author shubhangi
 */
public class Supplier_Id_Action extends org.apache.struts.action.Action {
    
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

              HttpSession session=request.getSession(true);
              Session s=(Session)NewHibernateUtil.getSessionFactory().openSession();
              Supplier_Id obj=(Supplier_Id)form;
              String Suppid=obj.getSupid();
              System.out.println(Suppid);
              //FinancialFeedbackMaster ffm=new FinancialFeedbackMaster();
              //SupplierQuatationMaster sqm=null;
              //String id_s=obj.getSuppQuoId();
              //System.out.println(id_s);
             // Query q=s.createSQLQuery("select Supp_quatation_Id from supplier_quatation_master where Supp_id='"+Supplier_Id+"'");
              Query q=s.createQuery("select suppQuatationId from SupplierQuatationMaster where supplierMaster.suppId='"+Suppid+"'");
              List list=q.list();
              Iterator it=list.iterator();
              System.out.println("yellow.................");
//              while(it.hasNext())
//              {
////                  String s_id=(String)it.next();
////                  System.out.println(s_id);
//                  System.out.println("hi....."+it.next());
//              }
              session.setAttribute("list", list);
              return mapping.findForward("abcd");
    }
}
