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
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bhawna
 */
public class NewStrutsAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    List l2=null;
    List l3=null;
    List l_mid=null;
    List l_mdesc=null;
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
        try{
        HttpSession se=request.getSession(false);
        Session s=util.NewHibernateUtil.getSessionFactory().openSession();
        int i=0;



        ArrayList<String> ar_id=new ArrayList<String>();
        ArrayList<String> ar_mdesc=new ArrayList<String>();

        System.out.println("Query open");
        Query q1=s.createQuery("select supplierQuatationMaster.suppQuatationId from SampleAdminRequest ");
        List l1=q1.list();
        Iterator it1=l1.iterator();

        ArrayList<String> ar_sm[]=new ArrayList[l1.size()];

        int size=l1.size();
        int size_ff;
        int f_size=size%3;
        if(f_size!=0)
        {
            size_ff=size-f_size;
            se.setAttribute("start", size_ff);
            se.setAttribute("end", size);
        }
/* else
        {
            se.setAttribute("start", size-3);
            se.setAttribute("end", size);
 }*/
        

        while(it1.hasNext())
        {
            String s2=(String)it1.next();
            System.out.println(s2);

            Query q2=s.createQuery("select supplierMaster.suppId from SupplierQuatationMaster where suppQuatationId='"+s2+"'");
            l2=q2.list();

            Iterator it_id=l2.iterator();
             while(it_id.hasNext())
            {
            String s2_id=(String)it_id.next();
            ar_id.add(s2_id);
            System.out.println(s2_id);
            }


            Query q3=s.createQuery("select requirementMaster.reqId from SupplierQuatationMaster where suppQuatationId='"+s2+"'");
            l3=q3.list();
            Iterator it_rid=l3.iterator();
            while(it_rid.hasNext())
        {
            String s_rid=(String)it_rid.next();
            Query q_mid=s.createQuery("select materialMaster.materialId from RequirementMaster where reqId='"+s_rid+"'");
            l_mid=q_mid.list();
            //ar_rid.add(s_rid);
        }

            Iterator it_mid=l_mid.iterator();
             while(it_mid.hasNext())
        {
            String m_desc=(String)it_mid.next();
            Query q_mdesc=s.createQuery("select materialDesc from MaterialMaster where materialId='"+m_desc+"'");
            l_mdesc=q_mdesc.list();
            Iterator it_mdesc=l_mdesc.iterator();
            while(it_mdesc.hasNext())
            {
               String m_d=(String)it_mdesc.next();

               ar_mdesc.add(m_d);
            }
        }

        }
        

       /* Iterator it_rid=l3.iterator();
        //ArrayList<String> ar_rid=new ArrayList<String>();
        while(it_rid.hasNext())
        {
            String s_rid=(String)it_rid.next();
            Query q_mid=s.createQuery("select materialMaster.materialId from RequirementMaster where reqId='"+s_rid+"'");
            l_mid=q_mid.list();
            //ar_rid.add(s_rid);
        }

        Iterator it_mid=l_mid.iterator();
        while(it_mid.hasNext())
        {
           String m_desc=(String)it_mid.next();
           Query q_mdesc=s.createQuery("select materialDesc from MaterialMaster where materialId='"+m_desc+"'");
            l_mdesc=q_mdesc.list();
        }
*/

        /*Iterator it_mdesc=l_mdesc.iterator();
        Iterator it_suid=l2.iterator();
                while(it_mdesc.hasNext())
                {
                     it_suid.hasNext();
                     ar_sid[i]=new ArrayList<String>();
                    String a=it_mdesc.next().toString();
                    String b=it_suid.next().toString();
                    ar_sid[i].add(a);
                    ar_sid[i].add(b);
                      System.out.println(".."+ar_sid[i]);
                    //System.out.println("..."+b);

                    i++;
                 }
*/
        System.out.println("Array values");
        System.out.println(ar_id);
        System.out.println(ar_mdesc);

        Iterator it_sid=ar_id.iterator();
        Iterator it_mdesc=ar_mdesc.iterator();
        while(it_mdesc.hasNext())
        {
            it_sid.hasNext();
            ar_sm[i]=new ArrayList<String>();
            String a=it_sid.next().toString();
            String b=it_mdesc.next().toString();
            ar_sm[i].add(a);
            ar_sm[i].add(b);
            System.out.println("hi1.."+a);
            System.out.println("hi2..."+b);
            i++;

        }
         System.out.println(ar_sm);
         se.setAttribute("supid_mdesc", ar_sm);
         System.out.println("Query close");
        }catch(Exception e)
        {
            System.out.println("confirmation page"+e.getMessage());
        }
        return mapping.findForward("ed");
    }
}
