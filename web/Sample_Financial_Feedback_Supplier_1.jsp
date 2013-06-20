<%-- 
    Document   : Sample_Financial_Feedback_Supplier_1
    Created on : Nov 4, 2011, 11:33:59 PM
    Author     : RAKSHIT
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
        <td id="heading_econf" height="69" colspan="8" valign="top"><h2>Feedback Form</h2></td>
        </tr>
      <tr>
        <td width="175" height="80">&nbsp;</td>
        <td width="132">&nbsp;</td>
        <td width="29">&nbsp;</td>

        <td id="homelink_ec" colspan="2" valign="top" align="right"><h4><a href="home.jsp">Home</a></h4></td>
      </tr>


        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Sample Id</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <select name="select">
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>

      <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Supplier Quotation Id</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <select name="select">
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>

        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Rating Description</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <select name="select">
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Financially Approved</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top">
            Yes
      <label>
      <input name="radiobutton" type="radio" value="radiobutton" />
    No
    <input name="radiobutton" type="radio" value="radiobutton" />
      </label></td>
    <td>&nbsp;</td>

          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="60">&nbsp;</td>
          <td colspan="2" valign="top"><label>Feedback</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
          <textarea name="textarea" style="position:absolute; width: 160px; height: 40px;"></textarea>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Feedback By</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield1" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Feedback Date</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="textfield2" />
          </label></td>
          <td>&nbsp;</td>
        </tr>

      <tr>
        <td height="50">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top">

                 <label>
                  <input name="Submit" type="submit" id="Submit" value="Submit" />
                  <td valign="bottom" align="center"></td>

              </label>

      </tr>
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
