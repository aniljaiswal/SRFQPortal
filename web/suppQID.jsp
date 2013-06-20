<%-- 
    Document   : suppQID
    Created on : 2 Nov, 2011, 1:50:49 PM
    Author     : Bhawna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib  prefix ="core" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function showId()
            {

            }
        </script>
    </head>
    <body >
        <h1>
            Hello! ${sessionScope.supp_name} ....
          </h1>
          <br/>
          <h2>
              Your Quotation Id is ${sessionScope.sqid}
          </h2>
          <br/>
          
          <h2>
              Thank You for submitting your Quotation...
          </h2>
    </body>
</html>
