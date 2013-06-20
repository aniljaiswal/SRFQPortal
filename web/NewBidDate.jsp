<%@taglib prefix="t" uri="http://struts.apache.org/tags-html"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>New Entry For Bid Date</title>
<script type="text/javascript" src="tablecolor.js">
        </script>
        <style type="text/css">
            body{background-image: url("bg.gif")}
        a:link {text-decoration:none;color:black}    /* unvisited link */
a:visited {text-decoration:none;} /* visited link */
a:hover {text-decoration:underline;color:#333333}   /* mouse over link */
a:active {text-decoration:underline;}  /* selected link */
        </style>
</head>

<body onload="tabcolor()">
    <a href="nbdt.do">New Bid Date</a>
    <a href="ebdt.do">Edit Bid Date</a>
        <t:javascript formName="NBDTBean"/>
        <t:form action="nbdti.do" onsubmit="return validateNBDTBean(this)">
<table width="100%" id="view" cellpadding="0" cellspacing="0"  align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="192" height="26">&nbsp;</td>
    <td width="127">&nbsp;</td>
    <td width="42">&nbsp;</td>
    <td width="14">&nbsp;</td>
    <td width="59">&nbsp;</td>
    <td width="30">&nbsp;</td>
    <td width="28">&nbsp;</td>
    <td width="115">&nbsp;</td>
    <td width="292">&nbsp;</td>
  </tr>
  <tr>
      <td height="40" colspan="9" valign="middle" style="background-color:cadetblue"><div align="center"><b><u>NEW ENTRY FOR BID DATE </u></b></div></td>
  </tr>
  <tr>
    <td height="21">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td colspan="2" valign="top">Req_id</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
            <input type="text" name="textfield" value="${requestScope.a}" readonly="true" />
    </label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="16"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td colspan="2" valign="top">Material_Id</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
      <select name="select">
          <option value="">------------</option>
            <core:forEach items="${requestScope.ids}" var="r">
                <option value="${r}">${r}</option>
            </core:forEach>
      </select>
    </label></td>
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
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="19"></td>
    <td colspan="2" valign="top">Quantity</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
      <input type="text" name="textfield2" />
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td colspan="2" valign="top">Unit_Id</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
      <select name="select2">
          <option value="">------------</option>
            <core:forEach items="${requestScope.ids1}" var="r1">
                <option value="${r1}">${r1}</option>
            </core:forEach>
      </select>
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="19"></td>
    <td colspan="2" valign="top">Req_posting_Opening_date</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
      <input type="text" name="textfield3" />
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="19"></td>
    <td colspan="2" valign="top">Req_posting_closing_date</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
      <input type="text" name="textfield4" />
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="19"></td>
    <td colspan="2" valign="top">Posted_by</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
      <input type="text" name="textfield5" />
    </label></td>
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
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td colspan="2" valign="top">R_Priority_id</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
      <select name="select3">
          <option value="">------------</option>
            <core:forEach items="${requestScope.ids2}" var="r2">
                <option value="${r2}">${r2}</option>
            </core:forEach>
      </select>
    </label></td>
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
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="24"></td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
      <input type="submit" name="sv" value="Save" />
    </label></td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
      <input type="reset" name="Submit2" value="Reset" />
    </label></td>
    <td>&nbsp;</td>
    <td></td>
  </tr><b>${requestScope.info}</b>
  <tr>
    <td height="23"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
    </t:form>
</body>
</html>
