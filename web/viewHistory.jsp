<%-- 
    Document   : viewHistory
    Created on : 3 Nov, 2011, 8:18:41 PM
    Author     : Kanika
--%>

<%@page import="java.util.List"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View History</title>
    </head>
    <body>
        <form action="hist.do">


        <core:if test="${sessionScope.rec eq null}">
             <td width="100" valign="center" align="center"> Select Supplier Id </td>
        <select name="sel" onchange="form.submit()">
            <option value="">---Select---</option>
            <core:forEach items="${sessionScope.ids}" var="r">
                <option value="${r}">${r}</option>
            </core:forEach>
        </select>
        </core:if>
        <core:if test="${sessionScope.rec ne null}">
            <core:forEach var="r1" items="${sessionScope.rec}">
                <tr>
                <td>Status id</td>
                <td> <input type="text" value="${r1.statusId}"/></td>
            </tr>

                <tr>
                    <td> Status Description</td>
             
                    <td> <input type="text" value="${r1.statusDesc}"/></td>
        </tr>
             </core:forEach>
        </core:if>
        </form>
    </body>
</html>
