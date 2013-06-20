<%-- 
    Document   : config_emp_head
    Created on : Nov 5, 2011, 1:26:54 PM
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
                <h3>Configure Employee</h3>
            </div>
            <div id="configentmenu">
                <ul>
                    <li><a href="empl.do">New</a></li>
                    <li><a href="emp1.do">View</a></li>
                    <li><a href="emp2.do">Edit</a></li>
                    <li><a href="emp3.do">Status</a></li>
                    <li><a href="emp4.do">Delete</a></li>
                </ul>
            </div>
    </body>
</html>
