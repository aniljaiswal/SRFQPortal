<%@page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="h" uri="http://struts.apache.org/tags-html" %>
<%@taglib prefix="bean" uri="http://struts.apache.org/tags-bean" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>

<html>
    <head>
       
        <title>Login Page</title>
       
        <script>
            function closeLogin()
            {
                document.getElementById("loginwindow").style.display="none";
                document.getElementById("loginhead").style.display="none";
            }
        </script>
        <script>
            function closeForget()
            {
                document.getElementById("forgetwindow").style.display="none";
                document.getElementById("forgethead").style.display="none";
            }
        </script>
        <script>
            function showForget()
            {  document.getElementById("loginwindow").style.display="none";
                document.getElementById("loginhead").style.display="none";
                document.getElementById("forgethead").style.display="block";
                document.getElementById("forgetwindow").style.display="block";
                
            }
        </script>
        <%
        String msg=(String)request.getAttribute("msgg");
        if(msg!=null){
           out.println("<script type='text/javascript'>alert('"+msg+"')</script>");
           }
         %>
         <%//
       // String msg1=(String)request.getAttribute("invalid");
        //if(msg1!=null){
         //  out.println("<script type='text/javascript'>alert('"+msg1+"')</script>");
         //  }
         %>
    </head>
    <body>
       
        <h:form action ="/log" >
            <fmt:setLocale value="${sessionScope.xyz}"/>
        <div id="main"> 
            <h1>${requestScope.invalid}</h1>
                        
            <div id="login">
                
               
              <table
                    
                <tr>
                    <td height="55">&nbsp;</td>
                </tr>
                <table id="loginhead" width="400">
                    <tr>
                        <td width="150">Login</td>
                        <td width="150"></td>
                        <td id="close"><a href="#" onclick="closeLogin()">×</a></td>
                    </tr>
                </table>
                
                <table id="loginwindow" width="350">
                    
                    <tr>
                     
                    </tr>
                     <tr>
                    <td height="20"></td>
                </tr>
                <tr> 
                    <td><bean:message locale="lang" key="loginid"/></td>
                    
                    <td> <h:text styleClass="textbox" property="id"/></td>
                    
                </tr>
                <tr>
                    <td height="10"></td>
                </tr>
                <tr>
                    <td><bean:message locale="lang" key="password"/></td>
                    <td><h:password styleClass="textbox" property="pass"/></td>
                   
                </tr>
                <tr>
                    <td height="10"></td>
                </tr>
                 
                               <tr>
                    <td height="10"><bean:message locale="lang" key="login"/><h:submit  styleClass="button"  property ="login" value="Login"/></td>
                    <td height="10"><a href="#" onclick="showForget()">Forgot Password?</a></td>
                </tr>
               <tr>
                    
                 </tr>
                <tr>
                    <td height="25"></td>
                </tr>
                 <tr>
                    <td height="25"></td>
                </tr>
               
            </table>
                    
                </table>
            </div>
            <div id="forgot">
                <table>
                <tr>
                    <td height="55">&nbsp;</td>
                </tr>
                <table id="forgethead" width="300">
                    <tr>
                        <td width="150">Forgot Password</td>
                        <td width="150"></td>
                        <td id="close"><a href="#" onclick="closeForget()">×</a></td>
                    </tr>
                </table>
                <table id="forgetwindow" width="300">
                    
                    <tr>
                        <td height="30"></td>
                    </tr>
                <tr> 
                    <td><label>Employee Id</label></td>
                    
                    <td><h:text property="empid"/></td>
                    
                </tr>
                <tr>
                    <td height="10"></td>
                </tr>
                
               
                <tr>
                    <td height="10"><h:submit property ="login" value="Submit"/></td>
                  
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