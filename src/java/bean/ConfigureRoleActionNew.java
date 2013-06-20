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
public class ConfigureRoleActionNew extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
   ConfigRoleBean crb=(ConfigRoleBean)form;
   String rolename=crb.getRolename();
   String roledesc=crb.getRoledesc();
   String orgid=crb.getOrgid();
   String submit=crb.getSubmit();
   String[] check=crb.getCheck();
   Session ses=NewHibernateUtil.getSessionFactory().openSession();
   HttpSession session=request.getSession(false);
   if(submit.equals("Submit")){
       Query q=ses.createSQLQuery("insert into role_master values('RL006','"+rolename+"','"+roledesc+"','"+orgid+"','')");
       int result=q.executeUpdate();
       ses.beginTransaction().commit();
       request.setAttribute("msg","Record Successfully Submitted");
       return mapping.findForward("conrole");
   }
   if(submit.equals("Update")){
       Query q=ses.createQuery("update RoleMaster set roleName=:rolename, roleDesc=:roledesc, statusId=:statusid, organizationMaster.orgId=:orgid where roleId=:roleid");
       q.setParameter("roleid",session.getAttribute("rid"));
       q.setParameter("rolename",rolename);
       q.setParameter("roledesc",roledesc);
       q.setParameter("statusid"," ");
       q.setParameter("orgid",orgid);
       int result=q.executeUpdate();
       ses.beginTransaction().commit();
       request.setAttribute("msg","Record Successfully Updated");
       return mapping.findForward("conrole");
   }
   if(submit.equals("Delete")){
       int result[] = new int[check.length];
       for(int i=0;i<check.length;i++){
            Query q=ses.createQuery("delete RoleMaster where roleId=:id");
            q.setParameter("id",check[i]);
            result[i]=q.executeUpdate();
            ses.beginTransaction().commit();
       }
       request.setAttribute("msg","Record(s) Successfully Deleted");
       return mapping.findForward("conrole");
   }
   return mapping.findForward(SUCCESS);
    }
}
