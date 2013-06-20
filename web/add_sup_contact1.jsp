<html>
    <head>
        <%@taglib uri="http://struts.apache.org/tags-html" prefix="h"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <script type="text/javascript" src="tablecolor.js"></script>
    </head>
    <body onload="tabcolor()">
        <jsp:include page="add_contact_head.jsp"/>
        <div id="viewdata">
            <table id="viewtab" cellpadding="0" cellspacing="0">
                <caption>Supplier Contact Details</caption>
                <tr>
                    <td height="5"></td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0">
                <tr>
                    <td width="10">
                    <td>Supplier Contact Id</td> 
                    <td>
                        <h:form action="contact1.do">
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
                    <td>
                        <h:form action="view.do">
                            <h:submit styleClass="submit2" property="contact" value="View All"/>
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
            <c:set var="cpid" value="${sessionScope.cpid}"/>
            <c:forEach items="${list3}" var="li">
                <c:if test="${li.contactPersonId eq cpid}">
            <tr id="headrow">
               <td>Contact person Id</td> <td>${li.contactPersonId}</td>
            </tr>
            <tr>
               <td>Supplier Id</td> <td>${li.suppId}</td>
                </tr>
            <tr>
                <td>first Name</td> <td>${li.contactPersonFname}</td>
                 </tr>
            <tr>
                <td>Last Name</td> <td>${li.contactPersonLname}</td>
                 </tr>
            <tr>
                <td>Function</td> <td>${li.contactPersonFunction}</td>
                 </tr>
            <tr>
               <td>Contact No</td> <td>${li.contactPersonPhone}</td>
                </tr>
            <tr>
                <td>E-Mail id</td> <td>${li.contactPersonEmail}</td>
                 </tr>
            <tr>
               <td>Terms and Conditions</td> <td>${li.termsandcondition}</td>
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
