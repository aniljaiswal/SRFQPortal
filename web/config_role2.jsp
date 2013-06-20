<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    </head>
    <body>
        <jsp:include page="config_role_head.jsp"/>
        <div id="configrole">
            <table id="edit" cellpadding="0" cellspacing="0">
                <caption>Edit/Update Role</caption>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>Role Id<span>*</span></td>
                    <td>
                        <h:form action="role2.do">
                            <h:select property="roleid" styleClass="select" value="${param.roleid}" onchange="form.submit(this)">
                                <h:option value="">---select---</h:option>
                                <c:set var="list" value="${sessionScope.list}"/>
                                <c:forEach items="${list}" var="li">
                                    <h:option value="${li.roleId}">${li.roleId}</h:option>
                                </c:forEach>
                            </h:select>
                            <c:set var="rid" value="${param.roleid}" scope="session"/>
                        </h:form>
                </tr>
                <h:javascript formName="ConfigRoleBean"/>
                <h:form action="configrole.do" onsubmit="return validateConfigRoleBean(this)">
                    <c:set var="rid" value="${sessionScope.rid}"/>
                    <c:forEach items="${list}" var="li">
                        <c:if test="${li.roleId eq rid}">
                            <c:set var="rolename" value="${li.roleName}" scope="request"/>
                            <c:set var="roledesc" value="${li.roleDesc}" scope="request"/>
                            <c:set var="oid" value="${li.organizationMaster.orgId}" scope="request"/>
                        </c:if>
                    </c:forEach>
                    <tr>
                        <td>Role Name<span>*</span></td>
                        <td><h:text property="rolename" styleClass="textbox" value="${requestScope.rolename}"/></td>
                    </tr>
                    <tr>
                        <td>Role Description<span>*</span></td>
                        <td><h:text property="roledesc" styleClass="textbox" value="${requestScope.roledesc}"/></td>
                    </tr>
                    <tr>
                        <td>Organization Id<span>*</span></td>
                        <td>
                            <c:set var="list1" value="${sessionScope.list1}"/>
                            <h:select property="orgid" styleClass="select" value="${requestScope.oid}">
                                <h:option value="">---select---</h:option>
                                <c:forEach items="${list1}" var="li">
                                    <h:option value="${li.orgId}">${li.orgId}</h:option>
                                </c:forEach>
                            </h:select>
                        </td>
                    </tr>

                    <tr>
                        <td><h:submit property="submit" styleClass="submit2" value="Update"/></td>
                    </tr>
                </h:form>
            </table>
        </div>
    </body>
</html>
