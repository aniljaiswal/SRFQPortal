<%-- 
    Document   : config_role
    Created on : Nov 6, 2011, 1:08:04 PM
    Author     : dell
--%>
<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    </head>
    <body>
   
        <h:form action="configrole.do" >
            <jsp:include page="config_role_head.jsp"/>
            <div id="configrole">
                <table id="new" cellpadding="0"cellspacing="0">
                    <caption>Add New Role</caption>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Role Name<span>*</span></td>
                        <td><h:text property="rolename" styleClass="textbox" value=""/></td>
                    </tr>
                    <tr>
                        <td>Role Description<span>*</span></td>
                        <td><h:text property="roledesc" styleClass="textbox" value=""/></td>
                    </tr>
                    <tr>
                        <td>Organization Id<span>*</span></td>
                        <td><h:select property="orgid" styleClass="select" value="${param.orgid}">
                                <h:option value="">---select---</h:option>
                                <c:set var="list1" value="${sessionScope.list1}"/>
                                <c:forEach items="${list1}" var="li">
                                    <h:option value="${li.orgId}">${li.orgId}</h:option>
                                </c:forEach>
                            </h:select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Status ID
                        </td>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td><h:submit property="submit" value="Submit" styleClass="submit2"/>
                        </td>
                    </tr>
                </table>
            </div>
        </h:form>
    </body>
</html>
