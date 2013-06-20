<%--
    Document   : header
    Created on : Sep 22, 2011, 7:09:50 PM
    Author     : MANI
--%>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="t" uri="http://struts.apache.org/tags-bean" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="SHORTCUT ICON" href="images/Icon.ico"/>
    </head>
<body>
 <table id="header" width="100%" border="0" cellpadding="0" cellspacing="0">
   <tr>
       <td width="900" height="120" valign="top" id="title"><h1><t:message key="heading" locale="lang"/></h1></td>
   </tr>
</table>
</body>
</html>

