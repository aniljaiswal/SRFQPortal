/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import Services.DBServices;
import classes.NewHibernateUtil;
import classes.ResourceMaster;
import classes.RoleMaster;

import connect.connection;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
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
public class AllocateFuncRoleAction extends org.apache.struts.action.Action {

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
        try{
                Connection con=connection.getcon();
                Statement st=con.createStatement();
                
                 HttpSession sess=request.getSession(false);
                 ArrayList arr=new ArrayList();
                 AllocateFuncRoleBean bn=(AllocateFuncRoleBean)form;
                 String roledesc=bn.getRoledesc();
                 request.setAttribute("role", roledesc);
                 String[] resc=bn.getAllocresourceid();
                 String submit=bn.getBut();
                 System.out.println(submit);
                 Session s=NewHibernateUtil.getSessionFactory().openSession();
                 Iterator it;
                 String rrmid=null;
                 String roleid=null;
                 ArrayList al2=new ArrayList();
                 int update=0;
                  List l1=s.createQuery("select roleId from RoleMaster where roleDesc='"+roledesc+"'").list();
                 it=l1.iterator();
                 if(it.hasNext())
                 {roleid=(String)it.next();
                   System.out.println("role id"+roleid);
                 }
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
                       if(submit.equalsIgnoreCase("Delete"))
                 {  while(it.hasNext())
                    { update=st.executeUpdate("delete from role_resource_map  where Resc_id='"+it.next()+"'");
                     
                    }
                     if(update>0)
                      System.out.println("Resources Successfully been deleted");
                 
                 }
                 else if(submit.equalsIgnoreCase("Insert"))
                 {  
                     int i=0;
                    st.executeUpdate("delete from role_resource_map  where Role_id='"+roleid+"'");
                    Connection con1=s.connection();
                    Statement st1=con1.createStatement();
                    while(it.hasNext())
                        { List l= s.createSQLQuery("select rrm_id()").list();
                          Iterator it1=l.iterator();
                          if(it1.hasNext())
                          {   rrmid=(String)it1.next();  
                             System.out.println( "rolermm"+rrmid);
                          }
                            // System.out.println(uid+""+it.next());
                          // System.out.println(it.next());
                         
                            //ResultSet rs2= st.executeQuery("select rrm_id()");
                          i=st.executeUpdate("insert into  role_resource_map values('"+rrmid+"', '"+roleid+"','"+(String)it.next()+"')");
                        con1.commit();
                        
                     if(i>0)
                         System.out.println("Resources Successfully been inserted");
                        }
                 }
             }
            
                 
                else
    {
        
                
                 
                  ResultSet rs=DBServices.selectData("Select Resc_id from role_resource_map where Role_id='"+roleid+"'");
                  while(rs.next())
                          {ResultSet rs1=DBServices.selectData("select Gorup_English from resource_master where Resc_id='"+rs.getString("Resc_id") +"'");
                           while(rs1.next())
                           {String resc1=rs1.getString("Gorup_English");
                              System.out.println( "resources"+resc1);
                              arr.add(resc1);
                           }
                          }sess.setAttribute("ress",arr ); 
                          List l2=s.createQuery("select gorupEnglish from ResourceMaster").list();
                            sess.setAttribute( "gorup1",l2);
                             System.out.println("group desc"+l2);
           }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        System.out.println(" Forward");
                return mapping.findForward("allocrole");
    }
}
