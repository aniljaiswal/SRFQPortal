<%--
    Document   : final_sample_operational_approval
    Created on : 05-Nov-2011, 11:26:59
    Author     : kunal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="final1.do">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td width="19" height="29">&nbsp;</td>
      <td width="89">&nbsp;</td>
      <td width="56">&nbsp;</td>
      <td width="25">&nbsp;</td>
      <td width="46">&nbsp;</td>
      <td width="197">&nbsp;</td>
      <td width="162">&nbsp;</td>
      </tr>
          <tr>
            <td height="29">&nbsp;</td>
              <td colspan="5" valign="top">Final Sampling Operational Approval or Rejection </td>
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
            </tr>
          <tr>
            <td height="25">&nbsp;</td>
              <td colspan="3" valign="top">Approval Id </td>
              <td>&nbsp;</td>
              <td valign="top">
                  <input type="text" name="sampleProductionApprovalId" />
                    </td>
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
            <td height="22"></td>
              <td colspan="3" rowspan="2" valign="top">Quotation Id </td>
              <td></td>
              <td valign="top">
                <select name="suppQuatationId" id="select">
                  <core:forEach items="${sessionScope['obj']}" var="r">
                   <option value="${r.suppQuatationId}">${r.suppQuatationId}</option>
                   </core:forEach>
                   </select>
                    </td>
      <td></td>
            </tr>
          <tr>
            <td height="3"></td>
              <td></td>
              <td></td>
              <td></td>
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
              <td colspan="3" valign="top">Rating ID</td>
              <td>&nbsp;</td>
              <td valign="top">
                  <select name="ratingId" id="select">
                  <core:forEach items="${sessionScope['obj1']}" var="r">
                   <option value="${r.ratingId}">${r.ratingId}</option>
                   </core:forEach>
                   </select>
              </td>
      <td>&nbsp;</td>
            </tr>
          <tr>
            <td height="25"></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
          <tr>
            <td height="25"></td>
            <td colspan="3" valign="top">Final Approval </td>
            <td></td>
            <td valign="top"><label>
            YES  <input type="radio" name="rd" value="YES" />
            NO   <input type="radio" name="rd" value="NO" />
            </label></td>
            <td></td>
          </tr>
          <tr>
            <td height="25"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td height="35"></td>
            <td colspan="3" valign="top">Feedback</td>
            <td></td>
            <td valign="top"><textarea name="feedback"></textarea></td>
            <td></td>
          </tr>
          <tr>
            <td height="41"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td height="24"></td>
            <td>&nbsp;</td>
            <td valign="top"><label>
              <input type="submit" name="but" value="Submit" />
            </label></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td height="85"></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td></td>
            <td></td>
            <td></td>
          </tr>




        </table>
        </form>
        </body>
</html>
