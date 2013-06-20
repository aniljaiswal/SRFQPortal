<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="h" %>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<h:html>

<%--<font color="red"><h:errors/></font>--%>

<body>
    <h:form action="ev3.do" onsubmit="validateEvaluationBean1(this);">
        <h:javascript formName="EvaluationBean1"/>
<table width="611" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="79" height="14"></td>
    <td width="122"></td>
    <td width="18"></td>
    <td width="31"></td>
    <td width="73"></td>
    <td width="21"></td>
    <td width="49"></td>
    <td width="89"></td>
    <td width="129"></td>
  </tr>
  <tr>
    <td height="31"></td>
    <td></td>
    <td colspan="6" valign="top"><label><h2>Sample Evaluation Form</h2></label>&nbsp;</td>

  </tr>
  <tr>
    <td height="23">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="29">&nbsp;</td>
    <td colspan="3" valign="top"><label>Sample Id</label>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top">
      <label>
      <label>
          <input type="text" name="sampleid" value="${sessionScope.s_id}" />
        </label>
        </label>
    
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="29">&nbsp;</td>
    <td colspan="3" valign="top"><label>Target Price</label>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top">
      <label>
        <input type="text" name="targetpr" />
        </label>
    </td>
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
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="30"></td>
    <td colspan="3" valign="top"><label>Sample Price</label>&nbsp;</td>
    <td></td>
    <td colspan="3" valign="top">
      <label>
        <input type="text" name="samplepr" />
        </label>
    </td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="27"></td>
    <td colspan="3" valign="top"><label>Quality</label>&nbsp;</td>
    <td></td>
    <td colspan="3" valign="top">
      <label>
        <input type="text" name="quality" />
        </label>
    </td>
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
    <td height="31"></td>
    <td colspan="3" valign="top"><label>Part Discripation</label>&nbsp;</td>
    <td></td>
    <td colspan="3" valign="top">
      <label>
        <input type="text" name="partdiscripation" />
        </label>
    </td>
    <td></td>
  </tr>
  <tr>
    <td height="24"></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="34"></td>
    <td colspan="3" valign="top"><label>Place for Production</label>&nbsp;</td>
    <td></td>
    <td colspan="3" valign="top">
      <label>
        <input type="text" name="placeprod" />
        </label>
    </td>
    <td></td>
  </tr>
  <tr>
    <td height="20"></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="30"></td>
    <td colspan="3" valign="top"><label>Part Life Time</label>&nbsp;</td>
    <td></td>
    <td colspan="3" valign="top">
      <label>
        <input type="text" name="partlt" />
        </label>
    </td>
    <td></td>
  </tr>
  <tr>
    <td height="19"></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="30"></td>
    <td colspan="3" valign="top"><label>Part Optimazation</label>
      &nbsp;</td>
    <td></td>
    <td colspan="3" valign="top">
      <label>
        <input type="text" name="partoptimization" />
        </label>
    </td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="27"></td>
    <td colspan="3" valign="top"><label>Devision</label>&nbsp;</td>
    <td></td>
    <td colspan="3" valign="top">
      <label>
        <input type="text" name="devision" />
        </label>
    </td>
    <td></td>
  </tr>
  <tr>
    <td height="29"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
        <tr></tr>
  <tr>
    <td height="33"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top">
      <label>
        <input type="submit" name="button1" value="Submit" onclick="msg()"/>
        </label>
    </td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="54"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
        
    </h:form>
</body>
</h:html>
