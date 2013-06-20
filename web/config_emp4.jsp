<%-- 
    Document   : config_emp4
    Created on : Nov 5, 2011, 1:24:23 PM
    Author     : dell
--%>

<%@page import="classes.EmployeeMaster"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="deltab()">
        <h:form action="configemp.do">
            <jsp:include page="config_emp_head.jsp"/>
            <div id="configemp">
                <table id="del" cellpadding="0" cellspacing="0">

                    <caption>Delete Organization</caption>
                    <tr id="headrow">
                        <td>Select</td>
                        <td>EmpId</td>
                        <td>FirstName</td>
                        <td>LastName</td>
                        <td>e-mail</td>
                        <td>Date of Joining</td>
                        <td>Date of Leaving</td>
                        <td>Status</td>
                    </tr>
                    <c:set var="list" value="${sessionScope.list}"/>
                    <c:forEach items="${list}" var="li">
                        <tr>
                            <td><h:checkbox property="delete" value="${li.empId}"/></td>
                            <td>${li.empId}</td>
                            <td>${li.empFname}</td>
                            <td>${li.empLname}</td>
                            <td>${li.emailId}</td>
                            <td>${li.dateOfJoining}</td>
                            <td>${li.dateOfLeaving}</td>
                            <td>${li.statusMaster.statusDesc}</td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td><h:submit styleClass="submit2" property="submit" value="Delete"/></td>
                    </tr>
                </table>
            </div>
        </h:form>
    </body>
</html>
