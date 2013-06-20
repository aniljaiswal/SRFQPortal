<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
        <jsp:include page="add_contact_head.jsp"/>
        <div id="configsup">
            <table id="edit" cellpadding="0" cellspacing="0">
                <caption>Edit/Update Supplier</caption>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>Contact Person Id<span>*</span></td>
                    <td>
                        <h:form action="contact2.do">
                            <h:select property="cpid" styleClass="select" value="${param.cpid}" onchange="form.submit(this)">
                                <h:option value="">---select---</h:option>
                                <c:set var="list3" value="${sessionScope.list3}"/>
                                <c:forEach items="${list3}" var="li">
                                    <h:option value="${li.contactPersonId}">${li.contactPersonId}</h:option>
                                </c:forEach>
                            </h:select>
                            <c:set var="cpid" value="${param.cpid}" scope="session"/>
                        </h:form>
                    </td>
                </tr>
                <h:javascript formName="AddContactBean"/>
                <h:form action="contactnew.do" onsubmit="return validateAddContactBean(this)">
                    <h:hidden property="cpid" value="${sessionScope.cpid}"/>
                    <tr>
                        <td height="5"></td>
                    </tr>
                    <c:set var="cpid" value="${sessionScope.cpid}"/>
                    <c:forEach items="${list3}" var="li">
                        <c:if test="${li.contactPersonId eq cpid}">
                            <c:set var="fname" value="${li.contactPersonFname}"/>
                            <c:set var="lname" value="${li.contactPersonLname}"/>
                            <c:set var="func" value="${li.contactPersonFunction}"/>
                            <c:set var="contact" value="${li.contactPersonPhone}"/>
                            <c:set var="mail" value="${li.contactPersonEmail}"/>
                            <c:set var="sal" value="${li.salutaionMaster.salutationDesc}"/>
                            <c:set var="tc" value="${li.termsandcondition}"/>
                            <c:set var="supid" value="${li.suppId}"/>
                        </c:if>
                    </c:forEach>
                    <tr>
                        <td>Supplier Id<span>*</span></td>
                        <td>
                            <h:select property="supid" styleClass="select" value="${supid}">
                                <h:option value="">---select---</h:option>
                                <c:set var="list2" value="${sessionScope.list2}"/>
                                <c:forEach items="${list2}" var="li">
                                    <h:option value="${li.suppId}">${li.suppId}</h:option>
                                </c:forEach>
                            </h:select>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Salutation<span>*</span>
                        </td>
                        <td>
                            <h:select property="sal" styleClass="select" value="${sal}">
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
                            <h:text styleClass="textbox" property="fname" value="${fname}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Last name<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="lname" value="${lname}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Function<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="function" value="${func}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Contact No.<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="phone" value="${contact}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            E-Mail Id<span>*</span>
                        </td>
                        <td>
                            <h:text styleClass="textbox" property="email" value="${mail}"/>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            Terms & Conditions<span>*</span>
                        </td>
                        <td>
                            <h:textarea styleClass="tarea" property="tc" value=" ${tc}">
                            </h:textarea>
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

