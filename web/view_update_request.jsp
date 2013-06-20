<%-- 
    Document   : view_update_request
    Created on : 02-Nov-2011, 00:57:07
    Author     : kunal
--%>

<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View and Update Request</title>
   <link href="view_update_request.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form action="view.do">

        <h1>VIEW AND UPDATE REQUEST</h1>
        <table>
          <tr>
              <td width="76" valign="center" align="center"> Requirement id </td>
              <td width="75" valign="center" align="center"> Material id </td>
              <td width="75" valign="center" align="center"> Quantity </td>
              <td width="75" valign="center" align="center"> Unit id </td>
              <td width="75" valign="center" align="center"> Opening date </td>
              <td width="75" valign="center" align="center"> Closing date </td>
              <td width="75" valign="center" align="center"> Posted By </td>
              <td width="75" valign="center" align="center"> Priority </td>



          </tr>
    <core:forEach var="r" items="${sessionScope['obj']}">
        <tr>
            <td valign="top" align="center"><input type="text" value="${r.reqId}" name="id" readonly/></td>
            <td valign="top" align="center"><select name="select" size="1" name="m_id">
                              <core:forEach items="${sessionScope['obj']}" var="rl">
                                  <core:if test="${r.materialMaster eq rl.materialMaster}">
                                      <option value="${rl.materialMaster.materialId}" selected>${rl.materialMaster.materialId}</option>
                                  </core:if>
                              <core:if test="${r.materialMaster ne rl.materialMaster}">
                                      <option value="${rl.materialMaster.materialId}" >${rl.materialMaster.materialId}</option>
                                  </core:if>
                              </core:forEach>

                </select></td>
            <td valign="top" align="center"><input type="text" value="${r.quantity}" name="qu"/></td>
            <td valign="top" align="center"><select name="unit_Id" size="1">
                    <core:forEach items="${sessionScope['obj']}" var="rl">
                                  <core:if test="${r.unitMeasureMaster eq rl.unitMeasureMaster}">
                                      <option value="${rl.unitMeasureMaster.unitId}" selected>${rl.unitMeasureMaster.unitId}</option>
                                  </core:if>
                              <core:if test="${r.unitMeasureMaster ne rl.unitMeasureMaster}">
                                      <option value="${rl.unitMeasureMaster.unitId}" >${rl.unitMeasureMaster.unitId}</option>
                                  </core:if>
                              </core:forEach>
                </select></td>
            <td valign="top" align="center"><input type="text" value="${r.reqPostingOpeningDate}"/></td>
            <td valign="top" align="center"><input type="text" value="${r.reqPostingClosingDate}"/></td>
            <td valign="top" align="center"><input type="text" value="${r.postedBy}"/></td>
            <td valign="top" align="center"><select name="prriority_id" size="1">
                              <core:forEach items="${sessionScope['obj']}" var="rl">
                                  <core:if test="${r.requirementPriorityMaster eq rl.requirementPriorityMaster}">
                                      <option value="${rl.requirementPriorityMaster.RPriorityId}" selected>${rl.requirementPriorityMaster.RPriorityId}</option>
                                  </core:if>
                              <core:if test="${r.requirementPriorityMaster ne rl.requirementPriorityMaster}">
                                      <option value="${rl.requirementPriorityMaster.RPriorityId}" >${rl.requirementPriorityMaster.RPriorityId}</option>
                                  </core:if>
                              </core:forEach>
                </select></td>
             <td valign="top" align="center"><label>
                <input type="checkbox" value="${r.reqId}" name="ck" />
                </label></td>
    </tr>
    </core:forEach>
          </table>
        <input type="submit" name="but" value="Remove" />
        <input type="submit" name="but" value="Update" />

    
        </form>
    </body>
</html>

