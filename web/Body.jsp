<%-- 
    Document   : Body
    Created on : Oct 15, 2011, 12:39:06 PM
    Author     : dell
--%>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div id="body">
        <blockquote><h1> Welcome SRFQ</h1></blockquote>
         </div>
                </body>
</html>
