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
import javax.transaction.Transaction;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import srfq.alog.SHA;

/**
 *
 * @author dell
 */
public class ChangePwdAction extends org.apache.struts.action.Action {

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
        ChangePwdBean l1=(ChangePwdBean)form;
        String uid=l1.getUid();
        String old=l1.getOld();
        String new1=l1.getNew1();
        String new2=l1.getNew2();
         String userid=null;
         int i=0;
         String passw=null;
        System.out.println(uid+old+new1+new2);
        Session s= NewHibernateUtil.getSessionFactory().openSession();
        srfq.alog.SHA ob=new SHA();
        try{
             List l = s.createQuery("from UserMaster where userId='"+uid+"' ") .list();
              Iterator it= l.iterator();
              if(it.hasNext())
              {UserMaster um=(UserMaster)it.next();
                userid=(String)um.getUserId();
                passw=(String)um.getPassword();
                System.out.println(userid);
                System.out.println(passw);
              }
              if(new1.equals(new2)&&passw.equals(ob.encrypt(old)))
              {
                Query q= s.createQuery("update UserMaster set password='"+ob.encrypt(new1)+"' where userId='"+uid+"'");
                 i=q.executeUpdate();
                s.beginTransaction().commit();
                System.out.println("password successfully updated");
                
              }
              
            //s.update(str, s);
            
        }
        catch(Exception e)
        {System.out.println(e.getMessage());
        
        
        }
        if(i>0)
        {
        request.setAttribute(  "msg", "Password successfully changed");
        return mapping.findForward("change");
        }
        else
        {request.setAttribute(  "msg", "Password not changed");
        return mapping.findForward("change");
        }
        //return mapping.findForward("master");
    }
}
