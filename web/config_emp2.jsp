<%-- 
    Document   : config_emp2
    Created on : Nov 5, 2011, 1:23:59 PM
    Author     : dell
--%>

<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <script type="text/javascript" src="validate.js"></script>
    </head>
    <body>
        <jsp:include page="config_emp_head.jsp"/>
        <div id="configemp">
            <table id="edit" cellpadding="0" cellspacing="0">
                <caption>Edit/Update Employee</caption>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <table width="100%" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td>Employee Id<span>*</span></td>
                                <td width="68"></td>
                                <td>
                                    <h:form action="emp2.do">
                                        <h:select styleId="sel" styleClass="select" property="eid" value="${param.eid}" onchange="form.submit(this)">
                                            <c:set var="list" value="${sessionScope.list}"/>
                                            <h:option value="">---select---</h:option>
                                            <c:forEach items="${list}" var="li">
                                                <h:option value="${li.empId}">${empId}</h:option>
                                            </c:forEach>
                                            </h:select>
                                            <h:errors/>
                                            <c:set var="eid" value="${param.eid}" scope="session"/>
                                            <c:forEach items="${list}" var="li">
                                                <c:if test="${eid eq li.empId}">
                                                    <c:set var="firstname" value="${li.empFname}" scope="request"/>
                                                    <c:set var="lastname" value="${li.empLname}" scope="request"/>
                                                    <c:set var="curstreetadd" value="${li.currenStreetAddress}" scope="request"/>
                                                    <c:set var="curcountry" value="${li.currentCountry}" scope="request"/>
                                                    <c:set var="curstate" value="${li.currentState}" scope="request"/>
                                                    <c:set var="curcity" value="${li.currentCity}" scope="request"/>
                                                    <c:set var="curzip" value="${li.currentZipcode}" scope="request"/>
                                                    <c:set var="curphone1" value="${li.currentPhone1}" scope="request"/>
                                                    <c:set var="curphone2" value="${li.currentPhone2}" scope="request"/>
                                                    <c:set var="curmobile" value="${li.currentMob}" scope="request"/>
                                                    <c:set var="curfax" value="${li.currentFax}" scope="request"/>
                                                    <c:set var="perstreetadd" value="${li.permStreetAddress}" scope="request"/>
                                                    <c:set var="percountry" value="${li.permCountry}" scope="request"/>
                                                    <c:set var="perstate" value="${li.permState}" scope="request"/>
                                                    <c:set var="percity" value="${li.permCity}" scope="request"/>
                                                    <c:set var="perzip" value="${li.permZipcode}" scope="request"/>
                                                    <c:set var="perphone1" value="${li.permPhone1}" scope="request"/>
                                                    <c:set var="perphone2" value="${li.permPhone2}" scope="request"/>
                                                    <c:set var="permobile" value="${li.permMob}" scope="request"/>
                                                    <c:set var="perfax" value="${li.permFax}" scope="request"/>
                                                    <c:set var="join" value="${li.dateOfJoining}" scope="request"/>
                                                    <c:set var="leave" value="${li.dateOfLeaving}" scope="request"/>
                                                    <c:set var="email" value="${li.emailId}" scope="request"/>
                                                    <c:set var="status" value="${li.statusMaster.statusDesc}" scope="request"/>
                                                </c:if>
                                            </c:forEach>
                                        
                                    </h:form>
                                </td>
                            </tr>
                        </table>
                    </td></tr>
                <h:javascript formName="ConfigEmpBean"/>
                <h:form action="configemp.do" onsubmit="return validateConfigEmpBean(this)">
                    <tr>
                        <td>
                            <table  cellpadding="0"cellspacing="0">
                                <tr>
                                    <td>First name<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="firstname" value="${requestScope.firstname}"/></td>
                                </tr>
                                <tr>
                                    <td>Last name<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="lastname" value="${requestScope.lastname}"/></td>
                                </tr>
                                <tr>
                                    <td>Current Street Address<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curstreetadd" value="${requestScope.curstreetadd}"/></td>
                                </tr>
                                <tr>
                                    <td>Current Country<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="curcountry" value="${requestScope.curcountry}">
                                            <h:option value="">---select---</h:option>
                                            <h:option value="India">India</h:option>
                                            <h:option value="US">US</h:option>
                                        </h:select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Current State<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="curstate" value="${requestScope.curstate}">
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
                                    <td>Current City<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="curcity" value="${requestScope.curcity}">
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
                                    <td>Current Zip Code<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curzip" value="${requestScope.curzip}"/></td>
                                </tr>
                                <tr>
                                    <td>Current Phone1<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curphone1" value="${requestScope.curphone1}"/></td>
                                </tr>
                                <tr>
                                    <td>Current Phone2<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curphone2" value="${requestScope.curphone2}"/></td>
                                </tr>
                                <tr>
                                    <td>Current Mobile<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curmobile" value="${requestScope.curmobile}"/></td>
                                </tr>
                                <tr>
                                    <td>Current Fax<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curfax" value="${requestScope.curfax}"/></td>
                                </tr>
                                <tr>
                                    <td>Permanent Street Address<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="perstreetadd" value="${requestScope.perstreetadd}"/></td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>Permanent Country<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="percountry" value="${requestScope.percountry}">
                                            <h:option value="">---select---</h:option>
                                            <h:option value="India">India</h:option>
                                            <h:option value="US">US</h:option>
                                        </h:select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Permanent State<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="perstate" value="${requestScope.perstate}">
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
                                    <td>Permanent City<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="percity" value="${requestScope.percity}">
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
                                    <td>Permanent Zip Code<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="perzip" value="${requestScope.perzip}"/></td>
                                </tr>
                                <tr>
                                    <td>Permanent Phone1<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="perphone1" value="${requestScope.perphone1}"/></td>
                                </tr>
                                <tr>
                                    <td>Permanent Phone2<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="perphone2" value="${requestScope.perphone2}"/></td>
                                </tr>
                                <tr>
                                    <td>Permanent Mobile<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="permobile" value="${requestScope.permobile}"/></td>
                                </tr>
                                <tr>
                                    <td>Permanent Fax<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="perfax" value="${requestScope.perfax}"/></td>
                                </tr>
                                <tr>
                                    <td>Date of Joining<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="joining" value="${requestScope.join}"/></td>
                                </tr>
                                <tr>
                                    <td>Date of Leaving<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="leaving" value="${requestScope.leave}"/></td>
                                </tr>
                                <tr>
                                    <td>Status<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="status" value="${requestScope.status}">
                                            <h:option value="">---select---</h:option>
                                            <c:set var="list1" value="${sessionScope.list1}"/>
                                            <c:forEach items="${list1}" var="li">
                                                <h:option value="${li.statusDesc}">${li.statusDesc}</h:option>
                                            </c:forEach>
                                        </h:select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>email-id<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="email" value="${requestScope.email}"/></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td><h:submit styleClass="submit2" property="submit" value="Update"/></td>
                    </tr>
                </h:form>
            </table>
        </div>
    </body>
</html>
