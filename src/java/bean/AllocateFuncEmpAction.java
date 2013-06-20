/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import classes.NewHibernateUtil;
import java.sql.DriverManager;
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
 * @author dell
 */
public class AllocateFuncEmpAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
               Class.forName("com.mysql.jdbc.Driver");
                java.sql.Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/srfq","root","password"); 
                java.sql.Statement st=c.createStatement();
                String rid=null;
                String uid=null;
                int update=0;
                String rolename=null;
                String rescid=null;
                ArrayList al1=new ArrayList();
                HttpSession sess=request.getSession(false);
                ArrayList al2=new ArrayList();
                AllocateFuncEmpBean bn=(AllocateFuncEmpBean)form;
                String empid=bn.getEmpid();
                request.setAttribute("eid", empid);
                String[] resc=bn.getAllocresourceid();
                String roname=bn.getRolename();
                String submit=bn.getBut();
                System.out.println(submit);
                Session s=NewHibernateUtil.getSessionFactory().openSession();
                Iterator it;
               
                 List l=s.createQuery("select userId from UserMaster where employeeMaster='"+empid+"'").list();
                 it=l.iterator();
                 if(it.hasNext())
                 uid=(String)it.next();
                 System.out.println(uid);
             try{
             if(submit!=null){
                
                 for(int i=0;i<resc.length;i++)
                  {System.out.println("resources----"+resc[i]);   
                   List ll= s.createQuery("select rescId from ResourceMaster where gorupEnglish='"+resc[i]+"'").list();
                   System.out.println(ll);
                   it=ll.iterator();
                    if(it.hasNext())
                    al2.add(it.next());
                    
                  }
                 
                  it=al2.iterator();
 System.out.println(al2);
                  //if(submit.equalsIgnoreCase("Update"))
//                 {while(it.hasNext())
//                 { update=st.executeUpdate("update user_resource_map set Resc_id='"+it.next()+"' where User_id='"+uid+"'");
//                     
//                 }
//                 if(update>0)
//                 {System.out.println("Resources Successfully been updated");
//                 }
//                 }
//                 else 
                  if(submit.equalsIgnoreCase("Delete"))
                 {  while(it.hasNext())
                    { update=st.executeUpdate("delete from user_resource_map  where Resc_id='"+it.next()+"'");
                     
                    }
                     if(update>0)
                      System.out.println("Resources Successfully been deleted");
                 
                 }
                 else if(submit.equalsIgnoreCase("Insert"))
                 {  int i=0;
                    st.executeUpdate("delete from user_resource_map  where User_id='"+uid+"'");
                    while(it.hasNext())
                        { // System.out.println(uid+""+it.next());
                          // System.out.println(it.next());
                            i=st.executeUpdate("insert into  user_resource_map values('"+uid+"','"+(String)it.next()+"')");
                        }
                     if(i>0)
                         System.out.println("Resources Successfully been inserted");
                        
                 }
             }
             else{
                 try{
             
              java.sql.ResultSet rs=st.executeQuery("select Role_id from employee_role_map where Emp_id='"+empid+"'");
              if(rs.next())
              {   rid=rs.getString("Role_id");
                  System.out.println("id"+rid);
              }
                List l1=s.createQuery("select roleDesc from RoleMaster where roleId='"+rid+"'").list();
                it=l1.iterator();
                if(it.hasNext())
                rolename=(String)it.next();
                
                List l2=s.createQuery("select gorupEnglish from ResourceMaster").list();
                sess.setAttribute( "gorup",l2);
                
                rs=st.executeQuery("select Resc_id from user_resource_map where User_id='"+uid+"'");
                System.out.println("resourceidddd");
                ArrayList al=new ArrayList();
                while(rs.next())
                {rescid=rs.getString("Resc_id");
                   System.out.println(rescid);
                   Query q=s.createQuery("select gorupEnglish from ResourceMaster where rescId='"+rescid+"'");
                   List l4=q.list();
                   it=l4.iterator();
                   if(it.hasNext())
                   {
                    String rescname=(String)it.next();
                    System.out.println("values of resources"+rescname);
                    al1.add(rescname);
                    }
              } 
              sess.setAttribute("resources", al1);
              it=al1.iterator();
              while(it.hasNext())
              {System.out.println("hello");
               System.out.println(it.next());
              }
              sess.setAttribute("rname",rolename );
           //System.out.println(" resourcesssss");
                  
}
             catch(Exception e)
             {e.printStackTrace();
             }
        }
      }
             catch(Exception e)
             {e.printStackTrace();}             
             
             
              return mapping.findForward("allocemp");
    }
}
