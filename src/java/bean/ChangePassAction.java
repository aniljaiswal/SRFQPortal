/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;


import classes.NewHibernateUtil;
import classes.UserMaster;
import java.sql.Statement;
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
import org.hibernate.engine.Mapping;

/**
 *
 * @author MANI
 */
public class ChangePassAction extends org.apache.struts.action.Action {
    
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
        HttpSession ses = request.getSession(false);
        ChangePassBean cpb=(ChangePassBean)form;
        String oldpass=cpb.getOldpass();
        String newpass=cpb.getNewpass();
        String confirmpass=cpb.getConfirmpass();
        String submit=cpb.getSubmit();
        String uid=(String) ses.getAttribute("usrId");
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        if(submit.equals("Change Password")){
            try{
           Query q=s.createQuery("from UserMaster where userId='"+uid+"'");
           List l = q.list();
            Iterator it = l.iterator();
            if (it.hasNext()) {
                UserMaster um=(UserMaster)it.next();
                if(oldpass.equals(um.getPassword())){
                    if(newpass.equals(confirmpass)){
                        Query q1=s.createQuery("update UserMaster set password=:password where userId=:userId");
                        q1.setParameter("password",newpass);
                        q1.setParameter("userId",uid);
                        int result=q1.executeUpdate();
                        s.beginTransaction().commit();
                        if(result>0){
                        request.setAttribute("msg","Password Successfully Changed");
                        return mapping.findForward("home");
                        }else{
                            request.setAttribute("msg","Password Cannot be Changed!");
                            return mapping.findForward("home");
                        }


                    }else{
                        request.setAttribute("msg","Incorrect Password Combination!");
                        return mapping.findForward("change");
                    }
                }else{
                    request.setAttribute("msg","Incorrect Password!");
                    return mapping.findForward("change");
                }
            }
        }
         catch(Exception e){
            e.printStackTrace();
        }
        }
        return mapping.findForward(SUCCESS);
 }
}
