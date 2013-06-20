<%--
    Document   : submenu
    Created on : Sep 24, 2011, 9:09:18 AM
    Author     : MANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
<body>
<table id="sbtab" width="100%" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <a href="home.do"><td class="sbtd" width="150" height="25" valign="top">Home</td></a>
    <a href="help.html" target="_blank"><td class="sbtd" width="150" valign="top">Help</td></a>
    <a href="changepass.do"><td class="sbtd" width="150" valign="top">Change Password</td></a>
    <a href="logout.do"><td class="sbtd" width="150" valign="top">Logout</td></a>
    <td width="100">&nbsp;</td>
    <td id="time" width="300" valign="top"><script type="text/javascript">document.write(Date())</script></td>
  </tr>
</table>
</body>
</html>
