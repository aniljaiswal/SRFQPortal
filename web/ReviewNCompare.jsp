<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<c:if test="${sessionScope.empRoleDesc eq 'Technical' || sessionScope.empRoleDesc eq 'Administrator'}">
<%--DATABASE CONNECTION--%>
<sql:setDataSource driver="${initParam.driver}" url="${initParam.url}" user="${initParam.user}" password="${initParam.password}"/>
<c:set var="j" value="0"/>
<sql:query var="rs1" sql="select * from supplier_quatation_master"></sql:query>
<c:forEach var="data1" items="${rs1.rows}">
    <c:set var="j" value="${j+1}" />
</c:forEach>
<c:set var="matname" value=""/>
<c:set var="i" value="0"/>
<c:if test="${j>0}">
    <h1><bean:message locale="lang" key="reviewquat"/></h1>
    <div style="height : 400px; overflow : auto; ">
    <table class="table">
        <tr class="emen_tableheader">
            <th align="left"><bean:message locale="lang" key="p.sfbh.1"/></th>
            <th><bean:message locale="lang" key="materialname"/></th>
            <th><bean:message locale="lang" key="p.sfbh.3"/></th>
            <th align="left"><bean:message locale="lang" key="f.ifaor.4"/></th>
            <th align="left"><bean:message locale="lang" key="p.rsosc.3.2"/></th>
            <th align="left">Admin Approval</th>
            <th><bean:message locale="lang" key="reviewandcompare"/></th>
        </tr>
        <sql:query var="rs2" sql="select * from supplier_quatation_master"></sql:query>
        <c:forEach var="data2" items="${rs2.rows}" varStatus="st">
            <c:if test="${st.count%2 eq 0}">
            <tr class="emen_tablecontent2">
                 <c:set var="i" value="${i+1}"/>
                <td>${i}</td>
                <sql:query var="rs3" sql="select Material_Desc from material_master where Material_Id in(select Material_Id from requirement_master where Req_id in(Select Req_id from supplier_quatation_master where Supp_Quatation_Id='${data2.Supp_Quatation_Id}'))"></sql:query>
                <c:forEach var="data3" items="${rs3.rows}">
                    <td>${data3.Material_Desc}&nbsp&nbsp&nbsp&nbsp</td>
                    <c:set var="matname" value="${data3.Material_Desc}"/>
                </c:forEach>
                <sql:query var="rs4" sql="select Supp_name from supplier_master where Supp_id in(select Supp_id from supplier_quatation_master where Supp_id='${data2.Supp_id}')"></sql:query>
                <c:forEach var="data4" items="${rs4.rows}">
                    <td>${data4.Supp_name}</td>
                </c:forEach>
                    <td>${data2.Tech_Feedback_status}</td>
                    <c:if test="${data2.Tech_Feedback_status eq 'Done'}">
                        <sql:query var="rs3" sql="select * from technical_feedback_master where Supp_Quatation_Id='${data2.Supp_Quatation_Id}'"></sql:query>
                        <c:forEach var="data3" items="${rs3.rows}">
                            <td>${data3.Tech_Approved}</td>
                            <sql:query var="rs4" sql="select * from sample_admin_approval where Supp_Quatation_Id ='${data2.Supp_Quatation_Id}'"/>
                            <c:set var="adminappr" value="0"/>
                            <c:forEach var="data4" items="${rs4.rows}">
                                <c:if test="${data4.Sample_Admin_Approved eq 'yes'}">
                                    <td>Approved</td>
                                </c:if>
                                 <c:if test="${data4.Sample_Admin_Approved eq 'no'}">
                                    <td>Not Approved</td>
                                </c:if>
                                <c:set var="adminappr" value="1"/>
                            </c:forEach>
                                    <c:if test="${adminappr eq 0}"><td>Pending</td></c:if>
                        </c:forEach>
                    </c:if>
                     <c:if test="${data2.Tech_Feedback_status eq 'Pending'}">
                            <td>----</td>
                            <td>----</td>
                     </c:if>
                            <td align="center"><html:link action="reviewPage.do?suppQId=${data2.Supp_Quatation_Id}&reqId=${data2.Req_id}&matName=${matname}&suppId=${data2.Supp_id}"><img src="SRFQResources/viewinfo.png" height="20" title="Review and Compare"/></html:link></td>
            </tr>
            </c:if>
            <c:if test="${st.count%2 ne 0}">
            <tr class="emen_tablecontent1">
                 <c:set var="i" value="${i+1}"/>
                <td>${i}</td>
                <sql:query var="rs3" sql="select Material_Desc from material_master where Material_Id in(select Material_Id from requirement_master where Req_id in(Select Req_id from supplier_quatation_master where Supp_Quatation_Id='${data2.Supp_Quatation_Id}'))"></sql:query>
                <c:forEach var="data3" items="${rs3.rows}">
                    <td>${data3.Material_Desc}</td>
                    <c:set var="matname" value="${data3.Material_Desc}"/>
                </c:forEach>
                <sql:query var="rs4" sql="select Supp_name from supplier_master where Supp_id in(select Supp_id from supplier_quatation_master where Supp_id='${data2.Supp_id}')"></sql:query>
                <c:forEach var="data4" items="${rs4.rows}">
                    <td>${data4.Supp_name}</td>
                </c:forEach>
                    <td>${data2.Tech_Feedback_status}</td>
                    <c:if test="${data2.Tech_Feedback_status eq 'Done'}">
                        <sql:query var="rs3" sql="select * from technical_feedback_master where Supp_Quatation_Id='${data2.Supp_Quatation_Id}'"></sql:query>
                        <c:forEach var="data3" items="${rs3.rows}">
                            <td>${data3.Tech_Approved}</td>
                            <sql:query var="rs4" sql="select * from sample_admin_approval where Supp_Quatation_Id ='${data2.Supp_Quatation_Id}'"/>
                            <c:set var="adminappr" value="0"/>
                            <c:forEach var="data4" items="${rs4.rows}">
                                <c:if test="${data4.Sample_Admin_Approved eq 'yes'}">
                                    <td>Approved</td>
                                </c:if>
                                 <c:if test="${data4.Sample_Admin_Approved eq 'no'}">
                                    <td>Not Approved</td>
                                </c:if>
                                <c:set var="adminappr" value="1"/>
                            </c:forEach>
                                    <c:if test="${adminappr eq 0}"><td>Pending</td></c:if>
                        </c:forEach>
                    </c:if>
                        <c:if test="${data2.Tech_Feedback_status eq 'Pending'}">
                            <td>----</td>
                            <td>----</td>
                        </c:if>
                            <td align="center"><html:link action="reviewPage.do?suppQId=${data2.Supp_Quatation_Id}&reqId=${data2.Req_id}&matName=${matname}&suppId=${data2.Supp_id}"><img src="SRFQResources/viewinfo.png" height="20" title="Review and Compare"/></html:link></td>
            </tr>
            </c:if>
        </c:forEach>
    </table>
 </div>
</c:if>
   <c:if test="${j eq 0}">
    <h2><bean:message locale="lang" key="norecfound"/></h2>
</c:if>
</c:if>
<c:if test="${sessionScope.empRoleDesc ne 'Technical'  && sessionScope.empRoleDesc ne 'Administrator'}">
       <h2><bean:message locale="lang" key="autherization"/></h2>
</c:if>