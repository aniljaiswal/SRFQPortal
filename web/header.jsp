<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<%@page pageEncoding="UTF-8" %>
<html>
    <head>
        <link rel="SHORTCUT ICON" href="images/Icon.ico"/>
        <%@taglib prefix="h" uri="http://struts.apache.org/tags-html" %>
        <%@taglib prefix="t" uri="http://struts.apache.org/tags-bean" %>
       
        <title>header</title>
    </head>
    <body>
        <div id="header">
            <div id="top">
                <div id="logo">
                    <h1><t:message key="heading" locale="lang"/></h1>
                   
                </div>
                
                
                     
            </div>
            <div id="lang"><h:link action="abc?language=english">English</h:link>|<h:link action="abc?language=german">Deutsch</h:link>|<h:link action="abc?language=hindi">??????</h:link></div>
        </div>
    </body>
</html>
