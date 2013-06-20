<%@page import="classes.RequirementAnalysisInitiation"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View and Update Posting</title>
         
    </head>
    <body>
        <form action="button.do">
        <table>
          <tr>
              <td width="100" valign="ceer" align="center"> Requirement id </td>
              <td width="100" valign="center" align="center"> Status id </td>
              <td width="75" valign="center" align="center"> Remark </td></tr>
          <core:forEach items="${sessionScope['obj']}" var="val">
                       <tr><td width="100" valign="center" align="center"><input type="text" value="${val.reqId}" name="id" readonly/></td>
                           <td width="100" valign="center" align="center">
                         <select name="statusId" >
                             <core:forEach items="${sessionScope['obj']}" var="id">
                                 <core:if test="${val.statusId == id.statusId}">
                             <option value="${id.statusId}" selected>${id.statusId}</option>
                             </core:if>
                             <core:if test="${val.statusId != id.statusId}">
                             <option value="${id.statusId}">${id.statusId}</option>
                             </core:if>
                         </core:forEach>
                     </select>
                        </td>
<td width="100" valign="center" align="center"><textarea cols="" rows=""  name="remark" >${val.remark} </textarea></td>
<td width="50" valign="center" align="center"><input type="checkbox" value="${val.reqId}" name="ck" />


   </core:forEach>
        </table>
           <input type="submit" name="but" value="Remove" />
           <input type="submit" name="but" value="Update" />

       </form>
    </body>
</html>