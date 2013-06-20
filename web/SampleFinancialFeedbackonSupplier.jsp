<%--
    Document   : Review Financial Specification and Compare
    Created on : Oct 20, 2011, 11:34:15 PM
    <%--Author     : RAKSHIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample Financial Approval</title>
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
        <td id="heading_econf" height="69" colspan="8" valign="top"><h2>Sample Financial Feedback on Supplier</h2></td>
        </tr>
      <tr>
        <td width="175" height="80">&nbsp;</td>
        <td width="132">&nbsp;</td>
        <td width="29">&nbsp;</td>

        
      </tr>


        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Supplier Id</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
                  <form action="feedback.do">
                      <select name="supid" onchange="form.submit(this)">
                <option value="----">${param.supid}</option>
                <c:if test="${sessionScope.list ne null}">
                      <c:forEach items="${list}" var="li">
                          <option value="${li.suppId}">${li.suppId}</option>
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
  <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Supplier Name</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
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
          <td colspan="2" valign="top"><label>Supplier Status Id</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
                  <input type="text" name="supstatusid" value="${status}"/>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        
        
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Sample Id</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <select name="supname">
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Target Price</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
<tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Sample Price</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Quality</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Part Description</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
      <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Place For Production</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Devision</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="36">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
                  <td id="homelink_ec" colspan="2" valign="top" align="left"><h4><a href="Sample_Financial_Feedback_Supplier_1.jsp">Click here for Feedback</a></h4></td>
          </label></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>

             <td>&nbsp;</td>
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
