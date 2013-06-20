<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="h" uri="http://struts.apache.org/tags-html" %>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h:form action="addb.do">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">

          <tr>
           <td width="36" height="29">
    <td width="167">&nbsp;</td>
    <td width="21">&nbsp;</td>
    <td width="42">&nbsp;</td>
    <td width="15">&nbsp;</td>
    <td width="204">&nbsp;</td>
    <td width="299">&nbsp;</td>
  </tr>
  <tr>
    <td height="31">&nbsp;</td>
    <td colspan="3" valign="top"><span class="form1">Add New Request </span></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
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
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Material Id </td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
            <h:select property="materialMaster" size="1">
                <h:option value="sel">---------</h:option>

    <core:forEach items="${sessionScope['obj']}" var="r">
    <h:option value="${r.materialId}">${r.materialId}</h:option>
    </core:forEach>
      </h:select>
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
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Quantity</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
            <h:text property ="quantity"/>
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
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Unit Id </td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
            <h:select property="unitMeasureMaster" size="1">
                <h:option value="sel">---------</h:option>
    <core:forEach items="${sessionScope['obj1']}" var="r">
    <h:option value="${r.unitId}">${r.unitId}</h:option>
    </core:forEach>
      </h:select>
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
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Opening Date </td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top"><label>
            <h:text property="reqPostingOpeningDate" />&nbsp yy-mm-dd
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
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Closing Date </td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top"><label><h:text property="reqPostingClosingDate" />&nbsp yy-mm-dd
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
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Posted By </td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
            <h:text property="postedBy" />
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
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td colspan="2" valign="top">Priority</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
            <h:select property="requirementPriorityMaster" size="1">
                <h:option value="sel"> -------</h:option>
    <core:forEach items="${sessionScope['obj2']}" var="r">
    <h:option value="${r.RPriorityId}">${r.RPriorityId}</h:option>
    </core:forEach>
      </h:select>
    </label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="17"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="28"></td>
    <td></td>
    <td colspan="3" valign="top"><label> <br />
            ${requestScope.msg}
            <h:submit property="but" value="Submit" />
    </label></td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="16"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
        </table>
        </h:form>
    </body>
</html>
