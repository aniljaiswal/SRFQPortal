<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<%@taglib  prefix="h" uri="http://struts.apache.org/tags-html" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h:javascript formName="LoginBean"/>
        <h:form action ="master">
        <div id="main">
               <div id="login">
                <table>
                <tr>
                    <td height="55">&nbsp;</td>
                </tr>
                <table id="loginwindow" width="300">
                    <tr><td id="heading" height="10" colspan="9" valign="top"><h2>Forgot Password</h2></td></tr>
                    <tr>
                        <td height="30"></td>
                    </tr>
                <tr> 
                    <td><label>User Id</label></td>
                    
                    <td><h:text property="id"/></td>
                    
                </tr>
                <tr>
                    <td height="10"></td>
                </tr>
                
                <tr>
                    <td height="10"></td>
                </tr>
                <tr>
                    <td height="10"><h:submit property ="Login" value="Submit"/></td>
                  
                </tr>
                <tr>
                    <td height="25"></td>
                </tr>

            </table>
                </table>
            </div>
            </div>
        </h:form>
</body>
</html>