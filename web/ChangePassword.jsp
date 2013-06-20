<%--
    Document   : changePassword
    Created on : Sep 30, 2011, 12:04:08 AM
    Author     : DELL
--%>
<%
        String msg=(String)request.getAttribute("msg");
        if(msg!=null){
           out.println("<script type='text/javascript'>alert('"+msg+"')</script>");
        }
      %>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<%@taglib prefix="h" uri="http://struts.apache.org/tags-html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>SRFQ-ChangePassword</title>

</head>

<body>
   
    <form action="pwd.do">
<table id="afrole_tb" width="70%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
           <tr>
        <td id="afrole_heading" height="5" colspan="7" valign="top"><h2>Change Password</h2></td>
          </tr>
      <tr>
        <td width="125" height="43">&nbsp;</td>
        <td width="123">&nbsp;</td>
        <td width="48">&nbsp;</td>
        <td width="71">&nbsp;</td>
        <td width="69">&nbsp;</td>
           </tr>
      <tr>
        <td height="20">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td width="117">&nbsp;</td>
        <td width="92">&nbsp;</td>
      </tr>
      <tr>
        <td height="33">&nbsp;</td>
            <td colspan="2" valign="top"><span>*</span>User Id </td>
            <td>&nbsp;</td>
            <td colspan="2" valign="top"><label>
                   <input class="tb" type="text" name="uid" />
            </label></td>
            <td>&nbsp;</td>
          </tr>
      
      <tr>
        <td height="33">&nbsp;</td>
            <td colspan="2" valign="top"><span>*</span>Old Password </td>
            <td>&nbsp;</td>
            <td colspan="2" valign="top"><label>
              <input class="tb" type="password" name="old" />
            </label></td>
            <td>&nbsp;</td>
          </tr>
      
      <tr>
        <td height="33">&nbsp;</td>
            <td colspan="2" valign="top"><span>*</span>New Password </td>
            <td>&nbsp;</td>
            <td colspan="2" valign="top"><label>
              <input class="tb" type="password" name="new1" />
            </label></td>
            <td>&nbsp;</td>
          </tr>
      

      <tr>
        <td height="28">&nbsp;</td>
            <td colspan="2" valign="top"><span>*</span>Confirm Password </td>
            <td>&nbsp;</td>
            <td colspan="2" valign="top"><label>
              <input class="tb" type="password" name="new2" />
            </label></td>
            <td>&nbsp;</td>
          </tr>
      <tr>
        <td height="40">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
      <tr>
        <td height="0">&nbsp;</td>
            <td>&nbsp;</td>
            <td colspan="3" valign="top"><label>
                    <input id="sub" type="submit" name="Submit" value="Change Password"/>
            </label></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
      <tr>
        <td height="30"></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>

    </table>
    </form>
</body>
</html>
