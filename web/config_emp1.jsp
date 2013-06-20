<%-- 
    Document   : config_emp1
    Created on : Nov 5, 2011, 1:23:45 PM
    Author     : dell
--%>

<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="tabcolor();">
        <jsp:include page="config_emp_head.jsp"/>
        <div id="viewdata">
            <table id="viewtab" cellpadding="0" cellspacing="0">
                <caption>Employee Details</caption>
                <tr>
                    <td height="5"></td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="20">
                                <td>Employee Id</td>
                                <td>
                                    <h:form action="emp1.do">
                                        <h:select property="eid" styleClass="select" value="${param.eid}" onchange="form.submit(this)">
                                            <h:option value="">---select---</h:option>
                                            <c:set var="list" value="${sessionScope.list}"/>
                                            <c:forEach items="${list}" var="li">
                                                <h:option value="${li.empId}">${li.empId}</h:option>
                                            </c:forEach>
                                        </h:select>
                                        <c:set var="eid" value="${param.eid}" scope="session"/>
                                    </h:form>
                                </td>

                                <td>
                                    <h:form action="view.do">
                                        <h:submit value="View All" property="emp" styleClass="submit2"/>
                                    </h:form>
                                </td>
                            </tr>

                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="10"></td>
                </tr>
                <tr>
                    <td>
                        <table id="view" cellpadding="0" cellspacing="0">
                            <c:set var="eid" value="${sessionScope.eid}"/>
                            <c:forEach items="${list}" var="li">
                                <c:if test="${li.empId eq eid}">
                                    <tr id="headrow">
                                        <td>Emp Id</td><td>${li.empId}</td>
                                    </tr>
                                    <tr>
                                        <td>First Name</td><td>${li.empFname}</td>
                                    </tr>
                                    <tr>
                                        <td>Last Name</td><td>${li.empLname}</td>
                                    </tr>
                                    <tr>
                                        <td>Current Street Address</td><td>${li.currenStreetAddress}</td>
                                    </tr>
                                    <tr>
                                        <td>Current Country</td><td>${li.currentCountry}</td>
                                    </tr>
                                    <tr>
                                        <td>Current State</td><td>${li.currentState}</td>
                                    </tr>
                                    <tr>
                                        <td>Current City</td><td>${li.currentCity}</td>
                                    </tr>
                                    <tr>
                                        <td>Current Zip Code</td><td>${li.currentZipcode}</td>
                                    </tr>
                                    <tr>
                                        <td>Current Phone1</td><td>${li.currentPhone1}</td>
                                    </tr>
                                    <tr>
                                        <td>Current Phone2</td><td>${li.currentPhone2}</td>
                                    </tr>
                                    <tr>
                                        <td>Current Mobile</td><td>${li.currentMob}</td>
                                    </tr>
                                    <tr>
                                        <td>Current Fax</td><td>${li.currentFax}</td>
                                    </tr>
                                    <tr>
                                        <td>Permanent Street Address</td><td>${li.permStreetAddress}</td>
                                    </tr>
                                    <tr>
                                        <td>Permanent Country</td><td>${li.permCountry}</td>
                                    </tr>
                                    <tr>
                                        <td>Permanent State</td><td>${li.permState}</td>
                                    </tr>
                                    <tr>
                                        <td>Permanent City</td><td>${li.permCity}</td>
                                    </tr>
                                    <tr>
                                        <td>Permanent Zip Code</td><td>${li.permZipcode}</td>
                                    </tr>
                                    <tr>
                                        <td>Permanent Phone1</td><td>${li.permPhone1}</td>
                                    </tr>
                                    <tr>
                                        <td>Permanent Phone2</td><td>${li.permPhone2}</td>
                                    </tr>
                                    <tr>
                                        <td>Permanent Mobile</td><td>${li.permMob}</td>
                                    </tr>
                                    <tr>
                                        <td>Permanent Fax</td><td>${li.permFax}</td>
                                    </tr>
                                    <tr>
                                        <td>e-mail</td><td>${li.emailId}</td>
                                    </tr>
                                    <tr>
                                        <td>Date of Joining</td><td>${li.dateOfJoining}</td>
                                    </tr>
                                    <tr>
                                        <td>Date of Leaving</td><td>${li.dateOfLeaving}</td>
                                    </tr>
                                    <tr>
                                        <td>Status</td><td>${li.statusMaster.statusDesc}</td>
                                    </tr>
                                    <tr>
                                    </c:if>
                                </c:forEach>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="5"></td>
                </tr>
            </table>
        </div>
    </body>
</html>
