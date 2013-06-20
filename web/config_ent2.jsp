<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="tabcolor()">
        <jsp:include page="config_ent_head.jsp"/>
        <div id="viewdata">
            <table id="viewtab" cellpadding="0" cellspacing="0">
                <caption>Organizations Details</caption>
                <tr>
                    <td height="5"></td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0">

                            <tr>
                                <td width="20">
                                <td>Organization Id</td>
                                <td>
                                    <h:form action="config2.do">
                                        <h:select styleClass="select" property="orgid" value="${param.orgid}" onchange="form.submit(this)">
                                            <h:option value="">---select---</h:option>
                                            <c:set var="list" value="${sessionScope.list}"></c:set>
                                            <c:forEach items="${list}" var="li">
                                                <h:option value="${li.orgId}">${li.orgId}</h:option>
                                            </c:forEach>
                                        </h:select>
                                        <c:set var="orgid" value="${param.orgid}" scope="session"></c:set>
                                    </h:form>
                                </td>
                                <td>
                                    <h:form action="view.do">
                                        <h:submit styleClass="submit2" property="ent" value="View All"/>
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
                            <c:set var="oid" value="${sessionScope.orgid}"></c:set>
                            <c:set var="list" value="${sessionScope.list}"></c:set>
                            <c:forEach items="${list}" var="li">
                                <c:if test="${li.orgId eq oid}">
                                    <tr id="headrow">
                                        <td>OrgId</td> <td>${li.orgId}</td>
                                    </tr>
                                    <tr>
                                        <td>OrgName</td> <td>${li.orgName}</td>
                                    </tr>
                                    <tr>
                                        <td>OrgAdd</td> <td>${li.orgAdd}</td>
                                    </tr>
                                    <tr>
                                        <td>Country</td> <td>${li.country}</td>
                                    </tr>
                                    <tr>
                                        <td>State</td> <td>${li.state}</td>
                                    </tr>
                                    <tr>
                                        <td>Pin/Zip</td> <td>${li.zipcode}</td>
                                    </tr>
                                    <tr>
                                        <td>Phone1</td> <td>${li.phone1}</td>
                                    </tr>
                                    <tr>
                                        <td>Phone2</td><td>${li.phone2}</td>
                                    </tr>
                                    <tr>
                                        <td>Fax</td> <td>${li.fax}</td>
                                    </tr>
                                    <tr>
                                        <td>Mail</td> <td>${li.mail}</td>
                                    </tr>
                                </c:if>
                            </c:forEach>
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

