<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="deltab()">
        <h:form action="supnew.do">
        <jsp:include page="config_sup_head.jsp"/>
        <div id="configsup">
            <table id="del" cellpadding="0" cellspacing="0" width="400">
                <caption>Delete supplier</caption>
                <tr id="headrow">
                    <td width="5">Select</td>
                    <td>Supplier Id</td>
                    <td>Supplier Name </td>
                    <td>Status</td>
                </tr>
                <c:set var="list2" value="${sessionScope.list2}"/>
                <c:forEach items="${list2}" var="li">
                <tr>
                <td><h:checkbox property="delete" value="${li.suppId}"/></td>
                <td>${li.suppId}</td>
                <td>${li.suppName}</td>
                <td>${li.supplierStatusMaster.suppStatusDesc}</td>
                </c:forEach>
                </tr>
                <tr>
                    <td>
                        <h:submit property="submit" value="Delete" styleClass="submit2"/>
                    </td>
                </tr>
            </table>
        </div>
        </h:form>
    </body>
</html>
