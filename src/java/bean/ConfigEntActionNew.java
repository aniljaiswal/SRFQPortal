/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import classes.NewHibernateUtil;
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
public class ConfigEntActionNew extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Session s=NewHibernateUtil.getSessionFactory().openSession();
        ConfigEntBean ceb=(ConfigEntBean)form;
        String orgname=ceb.getOrgname();
        String orgadd=ceb.getOrgadd();
        String country=ceb.getCountry();
        String state=ceb.getState();
        String city=ceb.getCity();
        String pcode=ceb.getPcode();
        String phone1=ceb.getPhone1();
        String phone2=ceb.getPhone2();
        String fax=ceb.getFax();
        String mail=ceb.getMail();
        String[] delete=ceb.getDelete();
        String orgid=ceb.getOrgid();
        try{
            if(ceb.getSubmit().equals("Submit")){
                        Query q=s.createSQLQuery("insert into organization_master values('ORG006','"+orgname+"','"+orgadd+"','"+state+"','"+pcode+"','"+country+"','"+phone1+"','"+phone2+"','"+fax+"','"+mail+"')");
                        int result=q.executeUpdate();
                        s.beginTransaction().commit();
                        request.setAttribute("msg","Record  Sucessfully Inserted");
                        return mapping.findForward("config");
             }
            if(ceb.getSubmit().equals("Delete")){
                        int result[] = new int[delete.length];
                        for(int i=0;i<delete.length;i++){
                            String oid=delete[i];
                            Query q=s.createQuery("delete OrganizationMaster where org_id=:orgid");
                            q.setParameter("orgid",oid);
                            result[i]=q.executeUpdate();
                            s.beginTransaction().commit();
                            }
                         request.setAttribute("msg","Record(s) Sucessfully Deleted");
                         return mapping.findForward("config");
             }
            if(ceb.getSubmit().equals("Update")){
                HttpSession session=request.getSession(false);
                String oid=(String)session.getAttribute("orgid");
                System.out.println(orgid);
                         Query q=s.createQuery("update OrganizationMaster set orgName=:orgname,orgAdd=:orgadd,state=:state,zipcode=:zipcode,country=:country,phone1=:phone1,phone2=:phone2,fax=:fax,mail=:mail where orgId=:orgid");
                         q.setParameter("orgid",oid);
                         q.setParameter("orgname",orgname);
                         q.setParameter("orgadd",orgadd);
                         q.setParameter("state",state);
                         q.setParameter("zipcode",pcode);
                         q.setParameter("country",country);
                         q.setParameter("phone1",phone1);
                         q.setParameter("phone2",phone2);
                         q.setParameter("fax",fax);
                         q.setParameter("mail",mail);
                         int result=q.executeUpdate();
                         s.beginTransaction().commit();
                         request.setAttribute("msg","Record Sucessfully Updated");
                         return mapping.findForward("config");
             }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return mapping.findForward(SUCCESS);
    }
}
