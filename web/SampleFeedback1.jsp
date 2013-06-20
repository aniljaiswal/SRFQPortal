<%--
    Document   : admin_add_ent
    Created on : Sep 30, 2011, 9:36:07 PM
    Author     : MANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <form action="SampleFeedbackInsert.jsp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert or Update Sample Feedback</title>
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
        <td id="heading_econf" height="69" colspan="8" valign="top"><h2>Sample Feedback</h2></td>
        </tr>
      <tr>
        <td width="175" height="80">&nbsp;</td>
        <td width="132">&nbsp;</td>
        <td width="29">&nbsp;</td>
        
        <td id="homelink_ec" colspan="2" valign="middle"><a href="home.jsp">Home</a></td>
      </tr>


       <tr>
        <td height="33">&nbsp;</td>
          <td colspan="2" valign="top"><label>Sample Id</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield3" />
          </label></td>
          <td>&nbsp;</td>
        </tr>


        <tr>
        <td height="33">&nbsp;</td>
          <td colspan="2" valign="top"><label>Supplier Quotation Id</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield3" />
          </label></td>
          <td>&nbsp;</td>
        </tr>

      <tr>
        <td height="36">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
                  <input name="Submit" type="submit" id="Submit" value="Insert" />
                 <input name="Submit" type="submit" id="Submit" value="Update" />
               </label></tr></td>
          <td>&nbsp;</td>
        </tr>
      <tr>
        <td height="50">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        
        </tr>
 </table> 

          <core:if test="${param.ck ne null}">

              <core:if test="${param.Submit == 'Insert'}">
                  <form action="SampleFeedbackInsert.jsp"></form>
        
             </core:if>

                  <core:if test="${param.Submit eq 'Update'}">

                      <form action="SampleFeedbackUpdate.jsp"></form>
                  </core:if>
              </core:if>


</body>
</html>
