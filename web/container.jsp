<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="container">
            <div id="lcontain">
                <h1>OUR NEWS</h1>
                <h2>Oct 10,2011</h2>
                <p>Some News...<a href="#">more</a></p>
                <h2>Oct 11,2011</h2>
                <p>Some News...<a href="#">more</a></p>

            </div>
            <div id="rcontain">
                <h1>IMPROVE BUSINESS WITH CONSULTING SERVICES</h1>
                <p>
			  Some Message
                </p>
                &nbsp;
                <div class="col">
                    <ul>
                        <li><a href="#">Click</a></li>
                        <li><a href="#">Click</a></li>
                        <li><a href="#">Click</a></li>
                    </ul>
                </div>
                <div class="col">
                    <ul>
                        <li><a href="#">Click</a></li>
                        <li><a href="#">Click</a></li>
                        <li><a href="#">Click</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
