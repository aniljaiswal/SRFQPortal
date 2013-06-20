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
                <h3>Configure Supplier</h3>
            </div>
            <div id="configentmenu">
                <ul>
                    <li><a href="consup.do">New</a></li>
                    <li><a href="sup1.do">View</a></li>
                    <li><a href="sup2.do">Edit</a></li>
                    <li><a href="sup3.do">Delete</a></li>
                </ul>
            </div>
    </body>
</html>
