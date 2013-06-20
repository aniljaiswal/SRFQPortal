
<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
        <h:javascript formName="AddContactBean"/>
        <h:form action="contactnew.do" onsubmit="return validateAddContactBean(this)">
            <jsp:include page="add_contact_head.jsp"/>
            <div id="configsup">
                <table id="new" cellpadding="0" cellspacing="0">
                    <caption>Add Supplier Contact</caption>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            Supplier Id<span>*</span>
                        </td>
                        <td>
                            <h:select property="supid" styleClass="select" value="${param.supid}">
                                <h:option value="">---select---</h:option>
                                <c:set var="list2" value="${sessionScope.list2}"/>
                                <c:forEach var="li" items="${list2}">
                                    <h:option value="${li.suppId}">${suppId}</h:option>
                                </c:forEach>
                            </h:select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Salutation<span>*</span>
                        </td>
                        <td>
                            <h:select property="sal" styleClass="select" value="${param.sal}">
                                <h:option value="">---select---</h:option>
                                <c:set var="list1" value="${sessionScope.list1}"/>
                                <c:forEach items="${list1}" var="li">
                                    <h:option value="${li.salutationDesc}">${li.salutationDesc}</h:option>
                                </c:forEach>
                            </h:select>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            First name<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="fname" value=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Last name<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="lname" value=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Function<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="function" value=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact No.<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="phone" value=""/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            E-Mail Id<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="email" value=""/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Terms & Conditions<span>*</span>
                        </td>
                        <td>
                            <h:textarea styleClass="tarea" property="tc" value=""></h:textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h:submit property="submit" value="Submit" styleClass="submit2"/>
                        </td>
                    </tr>
                </table>
            </div>
        </h:form>
    </body>
</html>
