/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import classes.NewHibernateUtil;

import classes.SupplierStatusMaster;
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
public class ConfigSupActionNew extends org.apache.struts.action.Action {
    
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
        ConfigSupBean csb=(ConfigSupBean)form;
        String sname=csb.getSname();
        String status=csb.getStatus();
        String supid=csb.getSupid();
        String[] delete=csb.getDelete();
        String submit=csb.getSubmit();
        Session ses=NewHibernateUtil.getSessionFactory().openSession();
        HttpSession session=request.getSession(true);
        try{
        if(submit.equals("Show")){

            request.setAttribute("msg","Done");
        return mapping.findForward("sup");
        }
        String statusid=null;
        
           List list=(List)session.getAttribute("list");
            Iterator it=list.iterator();
            while(it.hasNext()){
                SupplierStatusMaster ssm=(SupplierStatusMaster)it.next();
                if(ssm.getSuppStatusDesc().equals(status)){
                statusid=ssm.getSuppStatusId();
            }
            }
            
            if(submit.equals("Submit")){

            Query q=ses.createSQLQuery("insert into supplier_master values('SI007','"+sname+"','"+statusid+"')");
            q.executeUpdate();
           
            ses.beginTransaction().commit();
            request.setAttribute("msg","Record Sucessfully Inserted");
        return mapping.findForward("sup");
        }

        if(submit.equals("Update")){
            Query q=ses.createQuery("update SupplierMaster set suppName=:sname ,supplierStatusMaster.suppStatusId=:sid where suppId=:supid");
            q.setParameter("sname",sname);
            q.setParameter("sid",statusid);
            q.setParameter("supid",supid);
            q.executeUpdate();
            ses.beginTransaction().commit();
            request.setAttribute("msg","Record Sucessfully Updated");
        return mapping.findForward("sup");
        }

        if(submit.equals("Delete")){
            for(int i=0;i<delete.length;i++){
                Query q=ses.createQuery("delete from SupplierMaster where suppId='"+delete[i]+"'");
                q.executeUpdate();
                ses.beginTransaction().commit();
            }
            request.setAttribute("msg","Record(s) Sucessfully Delete");
        return mapping.findForward("sup");
        }
        }catch(Exception e){
            e.printStackTrace();
        }   
        return mapping.findForward(SUCCESS);
    }
}
