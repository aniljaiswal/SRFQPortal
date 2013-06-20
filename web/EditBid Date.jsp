<%@taglib prefix="t" uri="http://struts.apache.org/tags-html"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Edit Bid date</title>
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
    <t:form action="ebdti.do">
        <a href="nbdt.do">New Bid Date</a>
        <a href="ebdt.do">Edit Bid Date</a><br/>
     ${requestScope.info}
    <core:forEach items="${requestScope.idr}" var="r">
        <core:set var="rid" value="${r.reqId}"></core:set>
        <core:set var="mid" value="${r.materialMaster.materialId}"></core:set>
        <core:set var="qualt" value="${r.quantity}"></core:set>
        <core:set var="uid" value="${r.unitMeasureMaster.unitId}"></core:set>
        <core:set var="opdt" value="${r.reqPostingOpeningDate}"></core:set>
        <core:set var="cldt" value="${r.reqPostingClosingDate}"></core:set>
        <core:set var="pstby" value="${r.postedBy}"></core:set>
        <core:set var="rpid" value="${r.requirementPriorityMaster.RPriorityId}"></core:set>
    </core:forEach>
<table width="100%" id="view" cellpadding="0" cellspacing="0"  align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="282" height="23">&nbsp;</td>
    <td width="133">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="8">&nbsp;</td>
    <td width="49">&nbsp;</td>
    <td width="14">&nbsp;</td>
    <td width="34">&nbsp;</td>
    <td width="113">&nbsp;</td>
    <td width="373">&nbsp;</td>
  </tr>
  <tr>
      <td height="41" colspan="9" valign="middle" style="background-color:cadetblue"><div align="center"><strong><u>EDIT THE SELECTED ENTRY OF BID DATE</u></strong></div></td>
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
    <td colspan="2" valign="top">Req_id</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
            <input type="text" name="textfield" value="${rid}" readonly="true"/>
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
            <input type="text" name="textfield2" value="${mid}" readonly="true"/>
    </label></td>
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
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td colspan="2" valign="top">Quantity</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
            <input type="text" name="textfield3" value="${qualt}" readonly="true"/>
    </label></td>
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
            <input type="text" name="textfield4" value="${uid}" readonly="true"/>
    </label></td>
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
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td colspan="2" valign="top">Req_posting_Opening_date</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
            <input type="text" name="textfield5" value="${opdt}"/>
    </label></td>
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
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td colspan="2" valign="top">Req_posting_closing_date</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
            <input type="text" name="textfield6" value="${cldt}"/>
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
    <td colspan="2" valign="top">Posted_by</td>
    <td></td>
    <td></td>
    <td></td>
    <td colspan="2" valign="top"><label>
            <input type="text" name="textfield7" value="${pstby}" readonly="true"/>
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="15"></td>
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
            <input type="text" name="textfield8" value="${rpid}" readonly="true"/>
    </label></td>
    <td></td>
  </tr>
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
  <tr>
    <td height="24"></td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
      <input type="submit" name="sve" value="Update" />
    </label></td>
    <td>&nbsp;</td>
    <td colspan="2" valign="top"><label>
      <input type="reset" name="Submit2" value="Reset" />
    </label></td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
            <tr>
    <td height="24"></td>
    <td></td>
    <td></td>
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
