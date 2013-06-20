<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
        <h:javascript formName="ConfigSupBean"/>
        <h:form action="supnew.do" onsubmit="return validateConfigSupBean(this)">
        <jsp:include page="config_sup_head.jsp"/>
        <div id="configsup">
            <table id="new" cellpadding="0" cellspacing="0">
                <caption>Add New Supplier</caption>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        Supplier Name<span>*</span>
                    </td>
                    <td>
                        <h:text styleClass="textbox" property="sname" value=""/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Status<span>*</span>
                    </td>
                    <td>
                        <h:select property="status" styleClass="select" value="${param.status}">
                            <c:set var="list" value="${sessionScope.list}"/>
                             <h:option value="">---select---</h:option>
                            <c:forEach items="${list}" var="li">
                                <h:option value="${li.suppStatusDesc}">${li.suppStatusDesc}</h:option>
                            </c:forEach>
                        </h:select>
                    </td>
                </tr>
                <tr>
                    <td height="5"></td>
                </tr>
                
                <tr>
                    <td>
                        <h:submit styleClass="submit2" property="submit" value="Submit"/>
                    </td>

                </tr>
            </table>
        </div>
        </h:form>
    </body>
</html>
