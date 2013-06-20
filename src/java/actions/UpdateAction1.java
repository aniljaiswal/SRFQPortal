/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.NewHibernateUtil;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import classes.*;

/**
 *
 * @author Bhawna
 */
public class UpdateAction1 extends org.apache.struts.action.Action {
    
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
       
        System.out.println("heloo action.....");
        HttpSession se=request.getSession(false);
        Session s=NewHibernateUtil.getSessionFactory().openSession();


        System.out.println("before query");
        Query q=s.createQuery("select materialGroupName from MaterialGroupMaster ");

        System.out.println("after query");
        List l=q.list();
        MaterialGroupMaster ob=new MaterialGroupMaster();
        Iterator it=l.iterator();
        ArrayList<String> ar=new ArrayList<String>();
        while(it.hasNext()){
        ar.add((String) it.next());

         }



        se.setAttribute("mylist", ar);



        Query q1=s.createQuery("select unitOfMeasure from UnitMeasureMaster");
        List l1=q1.list();
        UnitMeasureMaster umm = new UnitMeasureMaster();
        Iterator it1=l1.iterator();
        ArrayList<String> uom = new ArrayList<String>();
        while(it1.hasNext())
        {
            uom.add((String)it1.next());
        }

        se.setAttribute("uom",uom);


        Query q2=s.createQuery("select currencyDesc from CurrencyMaster ");
        List l2= q2.list();
        Iterator it2=l2.iterator();
        ArrayList<String> cd = new ArrayList<String>();

        while(it2.hasNext())
        {
            cd.add((String)it2.next());
        }
        se.setAttribute("cd",cd);

        return mapping.findForward("uq");
 
       
    }
}
