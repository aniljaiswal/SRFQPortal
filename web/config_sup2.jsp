<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    </head>
    <body>
        <jsp:include page="config_sup_head.jsp"/>
        <div id="configsup">
            <table id="edit" cellpadding="0" cellspacing="0">
                <caption>Edit/Update Supplier</caption>
                <tr>
                    <td></td>
                </tr>

                <tr>
                    <td>Supplier Id<span>*</span></td>
                    <td>
                        <h:form action="sup2.do">
                            <h:select property="supid" styleClass="select" value="${param.supid}" onchange="form.submit(this)">
                                <h:option value="">---select---</h:option>
                                <c:set var="list2" value="${sessionScope.list2}"/>
                                <c:forEach items="${list2}" var="li">
                                    <h:option value="${li.suppId}">${li.suppId}</h:option>
                                </c:forEach>
                            </h:select>
                            <c:set var="sid" value="${param.supid}" scope="session"/>
                        </h:form>
                    </td>
                </tr>
                <c:set var="sid" value="${sessionScope.sid}"/>
                <c:forEach items="${list2}" var="li">
                    <c:if test="${li.suppId eq sid}">
                        <c:set var="sname" value="${li.suppName}"/>
                        <c:set var="status" value="${li.supplierStatusMaster.suppStatusDesc}"/>
                    </c:if>
                </c:forEach>
                <h:javascript formName="ConfigSupBean"/>
                 <h:form action="supnew.do" onsubmit="return validateConfigSupBean(this)">
                    <h:hidden property="supid" value="${sid}"/>
                    <tr>
                        <td>
                            Supplier Name<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="sname" value="${sname}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Status<span>*</span>
                        </td>
                        <td>
                            <h:select property="status" styleClass="select" value="${status}">
                                <h:option value="">---select---</h:option>
                                <c:set var="list" value="${sessionScope.list}"/>
                                <c:forEach items="${list}" var="li">
                                    <h:option value="${li.suppStatusDesc}">${li.suppStatusDesc}</h:option>
                                </c:forEach>
                            </h:select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h:submit styleClass="submit2" property="submit" value="Update"/>
                        </td>

                    </tr>
                </h:form>
            </table>
        </div>
    </body>
</html>
