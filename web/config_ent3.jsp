<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="deltab()">
        <h:form action="confignew.do">
            <jsp:include page="config_ent_head.jsp"/>
            <div id="configEnt">
                <table id="del" cellpadding="0" cellspacing="0">
                    <caption>Delete Organization</caption>
                    <tr id="headrow">
                        <td>Select</td>
                        <td>OrgId</td>
                        <td>OrgName</td>
                        <td>OrgAdd</td>
                        <td>Country</td>
                        <td>State</td>
                    </tr>
                    <c:set var="list" value="${sessionScope.list}"></c:set>
                    <c:forEach items="${list}" var="li">
                        <tr>
                            <td><h:checkbox property="delete" value="${li.orgId}"/>
                            <td>${li.orgId}</td>
                            <td>${li.orgName}</td>
                            <td>${li.orgAdd}</td>
                            <td>${li.country}</td>
                            <td>${li.state}</td>
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
