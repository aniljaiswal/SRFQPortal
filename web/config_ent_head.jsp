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
                <h3>Configure Enterprise</h3>
            </div>
            <div id="configentmenu">
                <ul>
                    <li><a href="configNew.do">New</a></li>
                    <li><a href="config2.do">View</a></li>
                    <li><a href="config1.do">Edit</a></li>
                    <li><a href="config3.do">Delete</a></li>
                </ul>
            </div>
    </body>
</html>
