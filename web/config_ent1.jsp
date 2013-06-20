<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
        <jsp:include page="config_ent_head.jsp"/>
        <div id="configEnt">
            <table id="edit" cellpadding="0" cellspacing="0">
                <caption>Edit/Update Organization</caption>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>Organization Id<span>*</span></td>
                    <td>

                        <h:form action="config1.do">
                            <h:select styleClass="select" property="orgid" value="${param.orgid}" onchange="form.submit(this)">
                                <c:set var="list" value="${sessionScope.list}"/>
                                <h:option value="">--select--</h:option>
                                <c:forEach items="${list}" var="li">
                                    <h:option value="${li.orgId}">${li.orgId}</h:option>
                                </c:forEach>
                            </h:select>
                            <c:forEach items="${list}" var="li">
                                <c:if test="${li.orgId eq param.orgid}">
                                    <c:set var="orgid" value="${param.orgid}" scope="session"/>
                                    <c:set var="orgname" value="${li.orgName}" scope="request"/>
                                    <c:set var="orgname" value="${li.orgName}" scope="request"/>
                                    <c:set var="orgadd" value="${li.orgAdd}" scope="request"/>
                                    <c:set var="country" value="${li.country}" scope="request"/>
                                    <c:set var="state" value="${li.state}" scope="request"/>
                                    <c:set var="zip" value="${li.zipcode}" scope="request"/>
                                    <c:set var="phone1" value="${li.phone1}" scope="request"/>
                                    <c:set var="phone2" value="${li.phone2}" scope="request"/>
                                    <c:set var="fax" value="${li.fax}" scope="request"/>
                                    <c:set var="mail" value="${li.mail}" scope="request"/>
                                </c:if>
                            </c:forEach>
                        </h:form>
                    </td>
                </tr>
                <div id="editform">
                    <h:javascript formName="ConfigEntBean"/>
                    <h:form action="confignew.do" onsubmit="return validateConfigEntBean(this)">
                        <tr>
                            <td>Organization Name<span>*</span>
                            </td>
                            <td><h:text property="orgname" styleClass="textbox" value="${requestScope.orgname}"/></td>
                        </tr>
                        <tr>
                            <td>Organization Address<span>*</span></td>
                            <td><h:text property="orgadd" styleClass="textbox" value="${requestScope.orgadd}"/></td>
                        </tr>
                        <tr>
                            <td>Country<span>*</span></td>
                            <td><h:select property="country" styleClass="select" value="${requestScope.country}">
                                    <h:option value="">---select---</h:option>
                                    <h:option value="India">India</h:option>
                                    <h:option value="US">US</h:option>
                                </h:select>
                            </td>
                        </tr>
                        <tr>
                            <td>State<span>*</span></td>
                            <td><h:select styleClass="select" property="state" value="${requestScope.state}">
                                    <h:option value="">---select---</h:option>
                                    <h:option value="delhi">Delhi</h:option>
                                    <h:option value="Punjab">Punjab</h:option>
                                    <h:option value="UP">UP</h:option>
                                    <h:option value="Haryana">Haryana</h:option>
                                    <h:option value="J&K">J&K</h:option>
                                    <h:option value="HP">HP</h:option>
                                </h:select>
                            </td>
                        </tr>
                        <tr>
                            <td>City<span>*</span></td>
                            <td><h:select styleClass="select" property="city" value="${requestScope.city}">
                                    <h:option value="">---select---</h:option>
                                    <h:option value="delhi">Delhi</h:option>
                                    <h:option value="Jallandhar">Jallandhar</h:option>
                                    <h:option value="Noida">Noida</h:option>
                                    <h:option value="Ambala">Ambala</h:option>
                                    <h:option value="Jammu">Jammu</h:option>
                                    <h:option value="Shimla">Shimla</h:option>
                                </h:select>
                            </td>
                        </tr>
                        <tr>
                            <td>Pin/Zip Code<span>*</span></td>
                            <td><h:text property="pcode" styleClass="textbox" value="${requestScope.zip}"/></td>
                        </tr>
                        <tr>
                            <td>Phone 1<span>*</span></td>
                            <td><h:text property="phone1" styleClass="textbox" value="${requestScope.phone1}"/></td>
                        </tr>
                        <tr>
                            <td>Phone 2<span>*</span></td>
                            <td><h:text property="phone2" styleClass="textbox" value="${requestScope.phone2}"/></td>
                        </tr>
                        <tr>
                            <td>Fax<span>*</span></td>
                            <td><h:text property="fax" styleClass="textbox" value="${requestScope.fax}"/></td>
                        </tr>
                        <tr>
                            <td>E-Mail<span>*</span></td>
                            <td><h:text property="mail" styleClass="textbox" value="${requestScope.mail}"/></td>
                        </tr>
                        <tr>
                            <td>
                                <h:submit property="submit" styleClass="submit2" value="Update"/>
                            </td>
                        </tr>

                    </h:form>
                </div>

            </table>
        </div>
    </body>
</html>
