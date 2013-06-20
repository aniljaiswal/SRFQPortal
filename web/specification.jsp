<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
    Document   : specification
    Created on : 21 Oct, 2011, 2:11:36 PM
    Author     : NITIKA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
        function msg(){
            alert("Selected Records Deleted Successfully");
        }
        </script>
    </head>
    <body>
        <form action ="Specb.do">
        <table border="0">
            <tr>
              <td width="100" valign="center" align="center"> Requirement Id </td>
              <td> <select name="reqId" >
                             <core:forEach items="${sessionScope['obj']}" var="id">
                             <option value="${id.reqId}">${id.reqId}</option>
                             </core:forEach>
                     </select></td>
            </tr>
          <tr>
              <td width="100" valign="center" align="center"> Status Id </td>
              <td> <select name="statusId" >
                             <core:forEach items="${sessionScope['obj1']}" var="sid">
                             <option value="${sid.statusId}">${sid.statusId}</option>
                             </core:forEach>
                     </select></td>
          </tr>
          <tr>
              <td width="75" valign="center" align="center"> Remark </td>
              <td><textarea cols="" rows="" name="remark"> </textarea></td>
          </tr>
        </table>

        <input type="submit" name="but" value="Submit"/>
        </form>
    </body>
</html>
