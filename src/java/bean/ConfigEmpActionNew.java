/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import classes.NewHibernateUtil;
import classes.StatusMaster;
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
public class ConfigEmpActionNew extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
     static final String SUCCESS = "success";
    
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
        ConfigEmpBean ceb=(ConfigEmpBean)form;
        String submit=ceb.getSubmit();
     String firstname=ceb.getFirstname();
     String lastname=ceb.getLastname();
     String curstreetadd=ceb.getCurstreetadd();
     String curcountry=ceb.getCurcountry();
     String curstate=ceb.getCurstate();
     String curcity=ceb.getCurcity();
     String curzip=ceb.getCurzip();
     String curphone1=ceb.getCurphone1();
     String curphone2=ceb.getCurphone2();
     String curmobile=ceb.getCurmobile();
     String curfax=ceb.getCurfax();
     String perstreetadd=ceb.getPerstreetadd();
     String percountry=ceb.getPercountry();
     String perstate=ceb.getPerstate();
     String percity=ceb.getPercity();
     String perzip=ceb.getPerzip();
     String perphone1=ceb.getPerphone1();
     String perphone2=ceb.getPerphone2();
     String permobile=ceb.getPermobile();
     String perfax=ceb.getPerfax();
     String joining=ceb.getJoining();
     String leaving=ceb.getLeaving();
     String status=ceb.getStatus();
     String email=ceb.getEmail();
     String[] delete=ceb.getDelete();
     String[] change=ceb.getChangestatus();
     String[] emid=ceb.getEid();
     HttpSession session=request.getSession(false);
     String statusid=null;

     List list1=(List)session.getAttribute("list1");
     Iterator it=list1.iterator();
     while(it.hasNext()){
         StatusMaster sm=(StatusMaster)it.next();
         if(sm.getStatusDesc().equals(status)){
             statusid=sm.getStatusId();
         }
     }
        Session ses=NewHibernateUtil.getSessionFactory().openSession();
        try{
            if(submit.equals("Submit")){
             Query q=ses.createSQLQuery("insert into employee_master values('EMP008','"+firstname+"','"+lastname+"','"+curstreetadd+"','"+curcity+"','"+curstate+"','"+curzip+"','"+curcountry+"','"+curphone1+"','"+curphone2+"','"+curmobile+"','"+curfax+"','"+perstreetadd+"','"+percity+"','"+perstate+"','"+perzip+"','"+percountry+"','"+perphone1+"','"+perphone2+"','"+permobile+"','"+perfax+"','"+email+"','"+joining+"','"+leaving+"','"+statusid+"')");
             int result=q.executeUpdate();
             ses.beginTransaction().commit();
             request.setAttribute("msg","Record Successfully Inserted");
             return mapping.findForward("conemp");
            }
            if(submit.equals("Update")){
             Query q=ses.createQuery("update EmployeeMaster set empFname='"+firstname+"',empLname='"+lastname+"',currenStreetAddress='"+curstreetadd+"',currentCity='"+curcity+"',currentState='"+curstate+"',currentZipcode='"+curzip+"',currentCountry='"+curcountry+"',currentPhone1='"+curphone1+"',currentPhone2='"+curphone2+"',currentMob='"+curmobile+"',currentFax='"+curfax+"',permStreetAddress='"+perstreetadd+"',permCity='"+percity+"',permState='"+perstate+"',permZipcode='"+perzip+"',permCountry='"+percountry+"',permPhone1='"+perphone1+"',permPhone2='"+perphone2+"',permMob='"+permobile+"',permFax='"+perfax+"',emailId='"+email+"',dateOfJoining='"+joining+"',dateOfLeaving='"+leaving+"',statusMaster.statusId='"+statusid+"' where empId='"+session.getAttribute("eid")+"'");
             q.executeUpdate();
             ses.beginTransaction().commit();
             request.setAttribute("msg","Record Successfully Updated");
             return mapping.findForward("conemp");
            }
            if(submit.equals("Change")){
                for(int i=0;i<change.length;i++){
                    String st=null;
                    list1=(List)session.getAttribute("list1");
                    Iterator it1=list1.iterator();
                    while(it1.hasNext()){
                     StatusMaster sm=(StatusMaster)it1.next();
                     if(sm.getStatusDesc().equals(change[i])){
                     st=sm.getStatusId();
                    }
                    }
                    Query q=ses.createQuery("update EmployeeMaster set statusMaster.statusId='"+st+"' where empId='"+emid[i]+"'");
                    q.executeUpdate();
                    ses.beginTransaction().commit();
                }
             request.setAttribute("msg","Status Successfully Changed");
             return mapping.findForward("conemp");
            }
            if(submit.equals("Delete")){
                int result[] = new int[delete.length];
                        for(int i=0;i<delete.length;i++){
                            String eid=delete[i];
                            Query q=ses.createQuery("delete EmployeeMaster where empId=:empid");
                            q.setParameter("empid",eid);
                            result[i]=q.executeUpdate();
                            ses.beginTransaction().commit();
                            }
             request.setAttribute("msg","Record(s) Successfully Deleted");
             return mapping.findForward("conemp");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return mapping.findForward(SUCCESS);
    }
}
