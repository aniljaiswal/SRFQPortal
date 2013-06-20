<%-- 
    Document   : config_emp3
    Created on : Nov 5, 2011, 1:24:11 PM
    Author     : dell
--%>

<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="tabcolor()">
        <h:form action="configemp.do">
            <jsp:include page="config_emp_head.jsp"/>
            <div id="configemp">
                <table id="view" cellpadding="0" cellspacing="0">
                    <caption>Change Status</caption>
                    <tr id="headrow">
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
                            <td>${li.empId}</td>
                            <td>${li.empFname}</td>
                            <td>${li.empLname}</td>
                            <td>${li.emailId}</td>
                            <td>${li.dateOfJoining}</td>
                            <td>${li.dateOfLeaving}</td>
                            <td>
                                <h:hidden property="eid" value="${li.empId}"/>
                                <h:select property="changestatus" styleClass="select2" value="${li.statusMaster.statusDesc}">
                                    <c:set var="list1" value="${sessionScope.list1}"/>
                                    <c:forEach items="${list1}" var="li1">
                                        <h:option value="${li1.statusDesc}">${li1.statusDesc}</h:option>
                                    </c:forEach>
                                </h:select>
                            </td>
                        </tr>

                    </c:forEach>
                    <tr>
                        <td><h:submit styleClass="submit2" property="submit" value="Change"/></td>
                    </tr>
                </table>
            </div>
        </h:form>
    </body>
</html>
