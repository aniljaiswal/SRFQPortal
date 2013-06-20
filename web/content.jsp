<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>

<html>
    <head>
        <script>
            function showLogin()
            {document.getElementById("loginwindow").style.display="block";
                document.getElementById("loginhead").style.display="block";
                
            }
             function openMail(){
                window.open("/SRFQPotel/Mail.jsp", "SendMail","menubar=no,location=yes,resizable=yes,scrollbars=no,status=yes,height=500,width=500")   
            }
             function Help(){
                window.open("/SRFQPotel/help.html", "Help Window","menubar=no,location=yes,resizable=yes,scrollbars=no,status=yes,height=500,width=300")   
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@taglib prefix="h" uri="http://struts.apache.org/tags-html" %>
    </head>
    <body>
        <div id="content">
            <div id="left">
                <h1><abbr title="For Getting help click here"><img src="images/help.jpg" onclick="Help()"/></a></abbr></h1>
            </div>
            <div id="right">
                <h1><abbr title="For mailing purpose click here"><img src="images/mail.jpg" onclick="openMail()"/></abbr></h1>
            </div>
            <div id="center" >
                <h1> <abbr title="For login click here"><a href="#" onclick="showLogin()"><img  src="images/login.jpg"/></a></abbr></h1>
            </div>
        </div>
    </body>
</html>
