<%-- 
    Document   : review_sampling
    Created on : 05-Nov-2011, 16:15:37
    Author     : kunal
--%>

<%@taglib prefix="core" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="reviewb.do">
         <h1>Review Sampling Operational Specification & Compare</h1>
        <table border="1">
          <tr>
              <td width="100" valign="center" align="center"> Requirement id </td>
              <td width="100" valign="center" align="center"> Sample id </td>
              <td width="75" valign="center" align="center"> Technical feedback </td>
              <td width="75" valign="center" align="center"> Financial feedback </td>
          </tr>
    
        <tr>
            <core:if test="${requestScope['sem'] ne null}">
            <core:forEach var="r" items="${requestScope.sem.rows}">
            <td valign="top" align="center"><input type="text" value="${r.req_Id}" name="rid" readonly/></td>
             
            <td valign="top" align="center"><input type="text" value="${r.Sample_id}" name="sid" readonly/></td>
            
            <td valign="top" align="center"><input type="text" value="${r.Feedback}" name="te" readonly/></td>
            
            <td valign="top" align="center"><input type="text" value="${r.Feedback}" name="fi" readonly/></td>
            

             <td valign="top" align="center"><label>
                <input type="checkbox" value="${r.sample_Id}" name="ck" />
                </label></td>
                </core:forEach>
            </core:if>
    </tr>
          </table>
        <input type="submit" name="but" value="Add" />
        </form>
    </body>
</html>

