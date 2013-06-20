/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import classes.NewHibernateUtil;
import classes.SalutaionMaster;
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
 * @author MANI
 */
public class AddContactActionNew extends org.apache.struts.action.Action {
    
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
        
        AddContactBean ab=(AddContactBean)form;
        String supid=ab.getSupid();
        String sal=ab.getSal();
        String fname=ab.getFname();
        String lname=ab.getLname();
        String function=ab.getFunction();
        String phone=ab.getPhone();
        String email=ab.getEmail();
        String tc=ab.getTc();
        String submit=ab.getSubmit();
        String cpid=ab.getCpid();
        String[] delete=ab.getDelete();
        HttpSession session=request.getSession(false);
        Session ses=NewHibernateUtil.getSessionFactory().openSession();
        String salid=null;
        List list1=(List)session.getAttribute("list1");
            Iterator it1=list1.iterator();
            while(it1.hasNext()){
                SalutaionMaster sm=(SalutaionMaster)it1.next();
                if(sm.getSalutationDesc().equals(sal)){
                    salid=sm.getSalutationId();
                }
            }
        if(submit.equals("Submit")){
             Query q=ses.createSQLQuery("insert into supplier_contact_master values('CPI009','"+supid+"','"+salid+"','"+fname+"','"+lname+"','"+function+"','"+email+"','"+tc+"','"+phone+"')");
             q.executeUpdate();
             ses.beginTransaction().commit();
            request.setAttribute("msg","Record Successfully Inserted");
        return mapping.findForward("add");
        }

         if(submit.equals("Update")){
             Query q=ses.createQuery("Update SupplierContactMaster set salutaionMaster.salutationId='"+salid+"', contactPersonFname='"+fname+"',contactPersonLname='"+lname+"',suppId='"+supid+"', contactPersonFunction='"+function+"', contactPersonEmail='"+email+"',termsandcondition='"+tc+"',contactPersonPhone='"+phone+"' where contactPersonId='"+cpid+"'");
            q.executeUpdate();
             ses.beginTransaction().commit();
             request.setAttribute("msg","Record Successfully Updated");
        return mapping.findForward("add");
        }

         if(submit.equals("Delete")){
             for(int i=0;i<delete.length;i++){
                Query q=ses.createQuery("delete from SupplierContactMaster where contactPersonId='"+delete[i]+"'");
                q.executeUpdate();
                ses.beginTransaction().commit();
            }
            request.setAttribute("msg","Record(s) Successfully Deleted");
        return mapping.findForward("add");
        }

        request.setAttribute("msg","DONE");
        return mapping.findForward("add");
    }
}
