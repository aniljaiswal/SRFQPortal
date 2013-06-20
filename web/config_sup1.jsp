<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="tabcolor()">
        <jsp:include page="config_sup_head.jsp"/>
        <div id="viewdata">
            <table id="viewtab" cellpadding="0" cellspacing="0">
                <caption>Supplier Details</caption>
                <tr>
                    <td height="5"></td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="20">
                                <td>Supplier Id</td>
                                <td>
                                    <h:form action="sup1.do">
                                        <h:select property="supid" styleClass="select" onchange="form.submit(this)" value="${param.supid}">
                                            <c:set value="${sessionScope.list2}" var="list2"/>
                                            <h:option value="">---select---</h:option>
                                            <c:forEach items="${list2}" var="li">
                                                <h:option value="${li.suppId}">${li.suppId}</h:option>
                                            </c:forEach>
                                            <c:set var="sid" value="${param.supid}" scope="session"/>
                                        </h:select>
                                    </h:form>
                                </td>
                                <td>
                                    <h:form action="view.do">
                                        <h:submit property="sup" styleClass="submit2" value="View All"/>
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
                            <c:set var="sid" value="${sessionScope.sid}"/>
                            <c:forEach items="${list2}" var="li">
                                <c:if test="${li.suppId eq sid}">
                                    <tr id="headrow">
                                        <td>Supplier Id</td> <td>${li.suppId}</td>
                                    </tr>
                                    <tr>
                                        <td>Supplier Name</td> <td>${li.suppName}</td>
                                    </tr>
                                    <tr>
                                        <td>Status</td> <td>${li.supplierStatusMaster.suppStatusDesc}</td>
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
