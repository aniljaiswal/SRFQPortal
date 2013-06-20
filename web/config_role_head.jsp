<%-- 
    Document   : config_role_head
    Created on : Nov 6, 2011, 1:09:00 PM
    Author     : dell
--%>

<html>
    <head>
         <%
        String msg=(String)request.getAttribute("msg");
        if(msg!=null){
           out.println("<script type='text/javascript'>alert('"+msg+"')</script>");
           }
        %>
    </head>
    <body>
        <div id="formhead">
                <h3>Configure Role</h3>
            </div>
                <div id="configentmenu">
                <ul>
                    <li><a href="role.do">New</a></li>
                    <li><a href="role1.do">View</a></li>
                    <li><a href="role2.do">Edit</a></li>
                    <li><a href="role3.do">Delete</a></li>
                </ul>
                </div>
    </body>
</html>
