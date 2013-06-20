<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="tabcolor()">
        <jsp:include page="config_role_head.jsp"/>
        <div id="viewdata">
            <table id="viewtab" cellpadding="0" cellspacing="0">
                <caption>Role Details</caption>
                <tr>
                    <td height="5"></td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="20">
                                <td>Role Id</td>
                                <td>
                                    <h:form action="role1.do">
                                        <h:select property="roleid" styleClass="select" value="${param.roleid}" onchange="form.submit(this)">
                                            <h:option value="">---select---</h:option>
                                            <c:set var="list" value="${sessionScope.list}"/>
                                            <c:forEach items="${list}" var="li">
                                                <h:option value="${li.roleId}">${li.roleId}</h:option>
                                            </c:forEach>
                                            <c:set var="rid" value="${param.roleid}" scope="session"/>
                                        </h:select>
                                    </h:form>
                                </td>
                                <td>
                                    <h:form action="view.do">
                                        <h:submit property="role" styleClass="submit2" value="View All"/>
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
                            <c:set var="rid" value="${sessionScope.rid}"/>
                            <c:forEach items="${list}" var="li">
                                <c:if test="${li.roleId eq rid}">
                                    <tr id="headrow">
                                        <td>Role Id</td><td>${li.roleId}</td>
                                    </tr>
                                    <tr>
                                        <td>Role Name</td><td>${li.roleName}</td>
                                    </tr>
                                    <tr>
                                        <td>Role Desc</td><td>${li.roleDesc}</td>
                                    </tr>
                                    <tr>
                                        <td>Org Id</td><td>${li.organizationMaster.orgId}</td>
                                    </tr>
                                    <tr>
                                        <td>Status Id</td><td>${li.statusId}</td>
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
