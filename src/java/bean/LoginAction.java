/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import Services.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import srfq.alog.SHA;

/**
 *
 * @author dell
 */
public class LoginAction extends org.apache.struts.action.Action {

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
                
          LoginBean lb=(LoginBean)form;
          String uid=lb.getId();
          String pass=lb.getPass();
          String button=lb.getLogin();
          String empid=lb.getEmpid();
          srfq.alog.SHA ob=new SHA();
          String p=ob.encrypt(pass);
           System.out.println(p);
           System.out.println(p.equals(ob.encrypt(pass)));
        Connection con = connect.connection.getcon();
          Statement st=con.createStatement();
          ResultSet r1=st.executeQuery("select * from user_master");
          while(r1.next()){
              System.out.println(r1.getString("password"));
          }
         if(button.equals("Login"))
         {
           String query = "select * from user_master where User_Id ='"+uid+"' and Password='"+ob.encrypt(pass)+"'";
            
       ResultSet rs = DBServices.selectData(query);

        if(rs.next())
        {
            System.out.println("ok");
        //VALID USER
        HttpSession session = request.getSession(true);
        String userId = rs.getString("User_id");
        String empId = rs.getString("Emp_id");
        query = "select rm.role_id,rm.role_desc,em.emp_fname,em.emp_lname "
                + "from role_master rm,"
                + "employee_master em,"
                + "employee_role_map erm "
                + "where erm.emp_id=em.emp_id "
                + "and erm.role_id=rm.role_id "
                + "and em.emp_id='"+empId+"'";

        ResultSet rs1 = DBServices.selectData(query);
         if(rs1.next())
         {
              String empRoleId = rs1.getString("role_id");
              String empRoleDesc = rs1.getString("role_desc");
              String empName = (rs1.getString("emp_fname")+" "+rs1.getString("emp_lname")).toUpperCase();

              //Set User Data In Session Object For Further User.
              session.setAttribute("usrId", userId);
              session.setAttribute("empId",empId);
              session.setAttribute("empRoleId",empRoleId);
              session.setAttribute("empRoleDesc",empRoleDesc);
              session.setAttribute("empName",empName);

              //Code For Update Login Time in Login Detail Table

              query = "select *from Login_Detail where User_id = '"+userId+"'";
              ResultSet rs2 = DBServices.selectData(query);
              if(rs2.next())
              {
                query = "update login_detail set login_time=now() where user_id='"+userId+"'";
                DBServices.updateData(query);
              }
              else
              {
                //FOR EMPLOYEE FIRST LOGIN
                query = "insert into login_detail values('"+userId+"',now())";
                DBServices.updateData(query);
              }

              //CODE TO SEND AUTHENTIC USER TO USER'S HOME
              if(empRoleDesc.equals("Administrator"))
                  return mapping.findForward("admin");
              if(empRoleDesc.equals("Finance"))
                  return mapping.findForward("financial");
              if(empRoleDesc.equals("Technical"))
                  return mapping.findForward("technical");
              if(empRoleDesc.equals("Production"))
                  return mapping.findForward("production");
         }
         else
         {
            //USER DESCRIPTION NOT FOUND
          request.setAttribute("invalid","UnAuthoriszed User");
          return mapping.findForward("master");
         }
        }
        else
        {
          //INVALID USER
          request.setAttribute("invalid","Data Not Matched..");
          return mapping.findForward("master");
        }
         
    
    }
          else
        {
            try{ResultSet rs=DBServices.selectData("select Password from user_master where Emp_id='"+empid+"'");
                if(rs.next())
                   {    String pass1=rs.getString("Password");
                        System.out.println(pass1);
      //                   rs=DBServices.selectData("select Email_id from employee_master where Emp_id='"+empid+"'");
        //                System.out.println(rs.getString("Email_id"));
                        request.setAttribute("msgg","Password will be Email to You");
                    }
       return mapping.findForward("master");
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
       } return mapping.findForward("admin");
    }
   
}

