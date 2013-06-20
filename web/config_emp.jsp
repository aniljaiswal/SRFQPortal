<%-- 
    Document   : config_emp
    Created on : Nov 5, 2011, 1:23:03 PM
    Author     : dell
--%>

<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
            <h:form action="configemp.do" >
            <jsp:include page="config_emp_head.jsp"/>
            <div id="configemp">
                <table id="new" cellpadding="0" cellspacing="0">
                    <caption>Add New Employee</caption>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <table  cellpadding="0"cellspacing="0">
                                <tr>
                                    <td>First name<span>*</span></td>
                                    <td><h:text property="firstname" styleClass="textbox" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Last name<span>*</span></td>
                                    <td><h:text property="lastname" styleClass="textbox" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Current Street Address<span>*</span></td>
                                    <td><h:text property="curstreetadd" styleClass="textbox" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Current Country<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="curcountry" value="${param.curcountry}">
                                            <h:option value="">---select---</h:option>
                                            <h:option value="India">India</h:option>
                                            <h:option value="US">US</h:option>
                                        </h:select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Current State<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="curstate" value="${param.curstate}">
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
                                        <h:select styleClass="select" property="curcity" value="${param.curcity}">
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
                                    <td><h:text styleClass="textbox" property="curzip" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Current Phone1<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curphone1" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Current Phone2<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curphone2" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Current Mobile<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curmobile" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Current Fax<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="curfax" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Permanent Street Address<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="perstreetadd" value=""/></td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>Permanent Country<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="percountry" value="${param.percountry}">
                                            <h:option value="">---select---</h:option>
                                            <h:option value="India">India</h:option>
                                            <h:option value="US">US</h:option>
                                        </h:select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Permanent State<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="perstate" value="${param.perstate}">
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
                                        <h:select styleClass="select" property="percity" value="${param.percity}">
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
                                    <td><h:text styleClass="textbox" property="perzip" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Permanent Phone1<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="perphone1" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Permanent Phone2<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="perphone2" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Current Mobile<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="permobile" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Permanent Fax<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="perfax" value=""/></td>
                                </tr>
                                <tr>
                                    <td>Date of Joining<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="joining" value="yyyy-mm-dd"/></td>
                                </tr>
                                <tr>
                                    <td>Date of Leaving<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="leaving" value="yyyy-mm-dd"/></td>
                                </tr>
                                <tr>
                                    <td>Status<span>*</span></td>
                                    <td>
                                        <h:select styleClass="select" property="status" value="${param.status}">
                                            <h:option value="">---select---</h:option>
                                            <c:set var="list1" value="${sessionScope.list1}"/>
                                            <c:forEach items="${list1}" var="li">
                                                <h:option value="${li.statusDesc}">${li.statusDesc}</h:option>
                                            </c:forEach>
                                        </h:select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Email-id<span>*</span></td>
                                    <td><h:text styleClass="textbox" property="email" value=""/></td>
                                </tr>
                            </table>
                        </td>
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