<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>

<html>
    <head>
        <title>Financial Analysis</title>
        <link href="admin_add_ent.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <table id="bgtab" width="897" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="78" height="51">&nbsp;</td>
    <td width="717">&nbsp;</td>
    <td width="102">&nbsp;</td>
  </tr>
  <tr>
    <td height="904"></td>
    <td valign="top"><table id="admtab" width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td id="heading_econf" height="69" colspan="6" valign="top"><h2>Financial Feedback on Supplier</h2></td>
        </tr>
      <tr>
        <td width="172" height="80">&nbsp;</td>
        <td width="157">&nbsp;</td>
        <td width="8">&nbsp;</td>
        <td width="350">&nbsp;</td>
        <td width="8">&nbsp;</td>
        <td width="16">&nbsp;</td>
      </tr>


        <tr>
        <td height="79">&nbsp;</td>
          <td valign="top"><label>Supplier Id</label></td>
          <td>&nbsp;</td>
          <td colspan="2" valign="top"><label>
                  <form action="feedback.do">
                      <select name="supid" onchange="form.submit(this)">
                          <c:set var="id" value="${param.supid}"/>
                <option value="----">${param.supid}</option>
                <c:if test="${sessionScope.list ne null}">
                      <c:forEach items="${list}" var="li">
                          <option value="${li.suppId}">${li.suppId}</option>
                          <c:set var="r" value="{}"/>
                      </c:forEach>
                </c:if>
                      </select>
                      <c:forEach items="${list}" var="li">
                          <c:if test="${li.suppId eq param.supid}">
                            <c:set var="sname" value="${li.suppName}"/>
                            <c:set var="status" value="${li.supplierStatusMaster.suppStatusId}"/>
                          </c:if>
                      </c:forEach>
                  </form>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td valign="top"><label>Supplier Name</label></td>
          <td>&nbsp;</td>
          <td colspan="2" valign="top"><label>
            <select name="supname">
                <option value="${sname}">${sname}</option>
                <c:if test="${sessionScope.list ne null}">
                      <c:forEach items="${list}" var="li">
                          <option value="${li.suppName}">${li.suppName}</option>
                      </c:forEach>
                </c:if>
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>

        <tr>

        <td height="50">&nbsp;</td>
          <td valign="top"><label>Supplier Status Id</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="2" valign="top"><label>
                  <input type="text" name="supstatusid" value="${status}"/>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td height="27"></td>
          <td>&nbsp;</td>
          <td></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td></td>
        </tr>
        <tr>
          <td height="20"></td>
          <td>&nbsp;</td>
          <td></td>
          <td id="homelink_ec" colspan="2" valign="top" align="right"><h3><h:link action="abcdef?supid=${id}"> Financial Feedback</h:link></h3>          <td>&nbsp;</td>
          <td></td>
        </tr>

        </table>
    </td>
          <td>&nbsp;</td>
        </tr>
      <tr>
        <td height="60">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>

        </tr>
 </table>
</body>
</html>
