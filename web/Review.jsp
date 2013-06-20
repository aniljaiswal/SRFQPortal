<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<c:if test="${sessionScope.empRoleDesc eq 'Technical' || sessionScope.empRoleDesc eq 'Administrator'}">
<sql:setDataSource driver="${initParam.driver}" url="${initParam.url}" user="${initParam.user}" password="${initParam.password}"/>
<sql:query var="rs" sql="select * from supplier_master where Supp_id=('${param.suppId}')"></sql:query>
<h1><bean:message locale="lang" key="t.ss.4"/></h1>
<table>
        <tr>
            <th align="left"><bean:message locale="lang" key="materialname"/></th>
            <td>${param.matName}</td>
        </tr>
        <tr>
            <th align="left"><bean:message locale="lang" key="supplier"/></th>
            <td><c:forEach var="data1" items="${rs.rows}">${data1.Supp_name}</c:forEach></td>
        </tr>
    </table>
<sql:query var="rs" sql="select * from supplier_quatation_master where Supp_Quatation_Id='${param.suppQId}'"></sql:query>
<c:forEach var="data" items="${rs.rows}">
    
    <sql:query var="rs1" sql="select * from currency_master where Currency_id='${data.Currency_Id}'"/>
    <h3><bean:message locale="lang" key="technicalspecification"/></h3>
    <table>
        <tr>
            <th align="left" ><bean:message locale="lang" key="proposedcost"/></th>
            <td>${data.Proposedcost}</td>
            <td><c:forEach var="data1" items="${rs1.rows}">${data1.Currency_desc}</c:forEach></td>
        </tr>
        <tr>
            <th align="left"><bean:message locale="lang" key="technicalspecification"/></th>
            <td>${data.Tech_Specification}</td>
        </tr>
        <tr>
            <th align="left"><bean:message locale="lang" key="remark"/></th>
            <td>${data.Remarks}</td>
        </tr>
        <tr>
            <th align="left"><bean:message locale="lang" key="f.ifaor.4"/></th>
            <td>${data.Tech_Feedback_status}</td>
        </tr>
    </table>
</c:forEach>
        <br><br><br>
<sql:query var="rs1" sql="select * from requirement_master where Req_id='${param.reqId}'"></sql:query>
<sql:query var="rs2" sql="select Tech_desc from material_master where Material_id =(select Material_id from requirement_master where Req_id='${param.reqId}')"></sql:query>

<h3><bean:message locale="lang" key="t.ss.5"/></h3>
<table>
    <tr>
        <th align="left" ><bean:message locale="lang" key="t.rtsac.3"/></th>
        <c:forEach var="data" items="${rs2.rows}">
            <td>${data.Tech_desc}</td>
        </c:forEach>
    </tr>
    <tr>
        <th align="left"><bean:message locale="lang" key="quantity"/></th>
        <c:forEach var="data" items="${rs1.rows}">
            <td>${data.quantity}</td>
        </c:forEach>
    </tr>
</table>
<br><br>
<center><a href="reviewcomparePage.do"><bean:message locale="lang" key="back"/></a></center>
 </c:if>
<c:if test="${sessionScope.empRoleDesc ne 'Technical'  && sessionScope.empRoleDesc ne 'Administrator'}">
       <h2><bean:message locale="lang" key="autherization"/></h2>
</c:if>

