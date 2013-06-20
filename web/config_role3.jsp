<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="deltab()">
        <h:form action="configrole.do">
            <jsp:include page="config_role_head.jsp"/>
            <div id="configrole">
                <table id="del" cellpadding="0" cellspacing="0">
                    <caption>Delete Role</caption>
                    <tr id="headrow">
                        <td>Select</td>
                        <td>Role Id</td>
                        <td>Role Name</td>
                        <td>Role Desc</td>
                        <td>Org Id</td>
                        <td>Status Id</td>
                    </tr>
                    <c:set var="list" value="${sessionScope.list}"/>
                    <c:forEach items="${list}" var="li">
                        <tr>
                            <td><h:checkbox property="check" value="${li.roleId}"/></td>
                            <td>${li.roleId}</td>
                            <td>${li.roleName}</td>
                            <td>${li.roleDesc}</td>
                            <td>${li.organizationMaster.orgId}</td>
                            <td>${li.statusId}</td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td><h:submit property="submit" styleClass="submit2" value="Delete"/></td>
                    </tr>
                </table>
            </div>
        </h:form>
    </body>
</html>
