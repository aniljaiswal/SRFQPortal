<%--
    Document   : demand_sample
    Created on : 31-Oct-2011, 12:15:51
    Author     : kunal
--%>

<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="demandb.do">
       <table width="100%" border="0" cellpadding="0" cellspacing="0">`
          <!--DWLayoutTable-->
          <tr>
           <td width="29" height="29">
    <td width="120">&nbsp;</td>
    <td width="18">&nbsp;</td>
    <td width="41">&nbsp;</td>
    <td width="240">&nbsp;</td>
    <td width="181">&nbsp;</td>
    </tr>
  <tr>
    <td height="31">&nbsp;</td>
    <td colspan="3" valign="top">Demand Sample </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="50">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Sample Id </td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <select name="sampleAdminRequest" size="1">
        <option>------</option>
    <core:forEach items="${sessionScope['obj']}" var="r">
    <option value="${r.sampleId}">${r.sampleId}</option>
    </core:forEach>
      </select>
    </label></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Expected  Date </td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <input type="text" name="sampleExpectedSendingDate"/> &nbsp yy-mm-dd
    </label></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Quantity</td>
    <td>&nbsp;</td>
    <td valign="top"><label>
    <input type="text" name="quantity" />
    </label></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Unit Id </td>
    <td>&nbsp;</td>
    <td valign="top"><label>
    <select name="unitMeasureMaster" size="1">
      <option>------</option>
    <core:forEach items="${sessionScope['obj1']}" var="r">
    <option value="${r.unitId}">${r.unitId}</option>
    </core:forEach>
    </select>
    </label></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="51">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="27">&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
      <input type="submit" name="but" value="Submit" />
    </label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="143">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

        </table>
        </form>
    </body>
</html>
