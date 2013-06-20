<%@page import="com.srfq.hbt.SupplierContactMaster"%>
<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="deltab()">
        <h:form action="contactnew.do">
        <jsp:include page="add_contact_head.jsp"/>
        <div id="configsup">
            <table id="del" cellpadding="0" cellspacing="0" width="600">
                <caption>Delete Supplier Contact Details</caption>
                <tr id="headrow">
                    <td>select</td>
                    <td>Contact person Id</td>
                    <td>Supplier Id</td>
                    <td>first Name</td>
                    <td>Last Name</td>
                </tr>
                <c:set var="list" value="${sessionScope.list3}"/>
                <c:forEach items="${list}" var="li">
                <tr>
                <td><input type="checkbox" name="delete" value="${li.contactPersonId}"/></td>
                <td>${li.contactPersonId}</td>
                <td>${li.suppId}</td>
                <td>${li.contactPersonFname}</td>
                <td>${li.contactPersonLname}</td>
                </tr>
                 </c:forEach>
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

