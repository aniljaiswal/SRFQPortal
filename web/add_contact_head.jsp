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
                <h3>Configure Supplier contact Details</h3>
            </div>
            <div id="configentmenu">
                <ul>
                    <li><a href="contact.do">New</a></li>
                    <li><a href="contact1.do">View</a></li>
                    <li><a href="contact2.do">Edit</a></li>
                    <li><a href="contact3.do">Delete</a></li>
                </ul>
            </div>
    </body>
</html>
