<%-- 
    Document   : Footer1
    Created on : Oct 16, 2011, 7:14:38 AM
    Author     : dell
--%>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div id="footer">
		copyright © 2011 HPES | Designed By Java PBIT 2011
		    </div>
    </body>
</html>
