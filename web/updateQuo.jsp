<%--
    Document   : NewQuotation
    Created on : Oct 19, 2011, 12:35:13 PM
    Author     : Amir
--%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<h:html>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<!--<head>
    <script type="text/javascript">
    function id_gen()
    {
        alert("you are successfully submit your Quotation");
    }
    </script>
</head>-->

<body >
    <h:form action="upq2" onsubmit="validateUpdateBean1(this);">
        <h:javascript formName="updateBean1"/>
<table width="676" border="0" cellpadding="0" cellspacing="0">

  <tr>
    <td width="79" height="16"></td>
    <td width="95"></td>
    <td width="67"></td>
    <td width="20"></td>
    <td width="153"></td>
    <td width="56"></td>
    <td width="206"></td>
  </tr>
  <tr>
    <td height="33"></td>
    <td></td>
    <td colspan="4" valign="top"><label><h1>Update Quotation</h1></label>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="30">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
     <td height="32">&nbsp;</td>
    <td valign="top"><label>Supplier Quotation Id</label>&nbsp;</td>
    <td>&nbsp;</td>
        <td colspan="2" valign="top"><label>
      <input type="text" name="txtid" />
    </label></td>
  </tr>
  <tr>
    <td height="38">&nbsp;</td>
    <td ><label>Material Group</label>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top">
               <select name="combMg" onchange="form.submit(this)">
            <option value="" >Material Group</option>
            <core:if test="${sessionScope['a']!= null}">
                <option selected>${sessionScope['a']}</option>
            </core:if>
            <core:forEach items="${sessionScope.mylist}" var="r">
             <option value="${r}">${r}</option>
            </core:forEach>

	</select>&nbsp;</td>

    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="13"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="26"></td>
    <td valign="top"><label>Material Name</label>&nbsp;</td>
    <td></td>
    <td colspan="2" valign="top">
        <select name="combMn">
            <option>Material Name</option>

            <core:forEach items="${sessionScope.it}" var="k">
             <option value="${k}">${k}</option>
            </core:forEach>

            </select>&nbsp;</td>
    <td></td>
    <td></td>
  </tr>

   <tr>
    <td height="13"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="26"></td>
    <td valign="top"><label>Unit</label>&nbsp;</td>
    <td></td>
    <td colspan="2" valign="top">
        <select name="combUn">
	<option>Unit Of Measure</option>
	<core:forEach items="${sessionScope.uom}" var="j">
             <option value="${j}">${j}</option>
            </core:forEach>
            </select>&nbsp;</td>
    <td></td>
    <td></td>
  </tr>

  <tr>

    <td height="14"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="23"></td>
    <td valign="top">Cost</td>
    <td></td>
    <td colspan="2" valign="top"><label>
      <input type="text" name="txtCost" />
    </label></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="14"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="23"></td>
    <td valign="top">Currency</td>
    <td></td>
    <td colspan="2" valign="top">
        <select name="combCurr">
	<option>Currency</option>
	<core:forEach items="${sessionScope.cd}" var="l">
             <option value="${l}">${l}</option>
            </core:forEach>
	</select>&nbsp;</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="18"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="24"></td>
    <td valign="top"><label>Technical Specification</label>&nbsp;</td>
    <td></td>
    <td colspan="2" valign="top"><textarea name="taTechSpecification"></textarea></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="21"></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="25"></td>
    <td valign="top">Remarks</td>
    <td></td>
    <td colspan="2" valign="top"><textarea name="taRemark"></textarea></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="32"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="31"></td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
            <input type="submit" name="button1" value="Submit"  />
    </label></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="21"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
     <%--  <font color="red"><h:errors/></font> --%>
    </h:form>

</body>
</h:html>

