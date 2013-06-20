<%@taglib prefix="t" uri="http://struts.apache.org/tags-html"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Give Sample Approval</title>
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
    <a href="vsap.do">view Sample Approvals</a>
    <a href="gsap.do">Give Sample Approval</a>
     <t:javascript formName="GSAPBean"/>
     <t:form action="gsapi.do" onsubmit="return validateGSAPBean(this)">
         <table width="100%" id="view" cellpadding="0" cellspacing="0"  align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="111" height="57">&nbsp;</td>
    <td width="180">&nbsp;</td>
    <td width="57">&nbsp;</td>
    <td width="40">&nbsp;</td>
    <td width="14">&nbsp;</td>
    <td width="57">&nbsp;</td>
    <td width="93">&nbsp;</td>
    <td width="470">&nbsp;</td>
  </tr>
  <tr>
      <td height="40" colspan="9" valign="middle" style="background-color:cadetblue"><div align="center"><b><u>GIVE SAMPLE APPROVAL</u></b></div></td>
  </tr>
  <tr>
    <td height="27">&nbsp;</td>
    <td valign="top">Sample_Admin_Approval_Id</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top"><label>
            <input type="text" name="textfield" value="${requestScope.a}" />
    </label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
    <td valign="top">Supp_Quotation_Id</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top"><label>
      <select name="select">
          <option value="">------------</option>
            <core:forEach items="${requestScope.ids}" var="r">
                <option value="${r}">${r}</option>
            </core:forEach>
      </select>
    </label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="22">&nbsp;</td>
    <td valign="top">Sample_Admin_Approved</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top"><label>
      <input type="text" name="textfield2" />
    </label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="35">&nbsp;</td>
    <td valign="top">Feedback</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top"><label>
      <textarea name="textarea"></textarea>
    </label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
    <td valign="top">Sample_Admin_Approved_By</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top"><label>
      <input type="text" name="textfield3" />
    </label></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="36">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <input type="submit" name="sav" value="Save" />
    </label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <input type="reset" name="Submit2" value="Reset" />
    </label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="44">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
            ${requestScope.msg}
  </t:form>
</body>
</html>
