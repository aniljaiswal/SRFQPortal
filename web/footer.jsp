<%-- 
    Document   : footer
    Created on : Sep 22, 2011, 7:10:01 PM
    Author     : MANI
--%>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   
</head>

<body>
    <div id="footer">
		
    <table class="ftab" width="100%" border="0" cellpadding="0" cellspacing="0">
        <!--DWLayoutTable-->
        <tr>
            <td width="100%" height="35">&nbsp;copyright © 2011 HPES | Designed By Java PBIT 2011</td>
            
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
</body>
</html>
