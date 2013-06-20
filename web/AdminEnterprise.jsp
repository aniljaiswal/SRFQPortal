<%--
    Document   : admin_add_ent
    Created on : Sep 30, 2011, 9:36:07 PM
    Author     : DELL
--%>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Admin_Add_Ent.css" rel="stylesheet" type="text/css" />
    </head>
    <body><form action="enterprise1.do">
        <table id="bgtab" width="897" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="78" height="1">&nbsp;</td>
    <td width="717">&nbsp;</td>
    <td width="102">&nbsp;</td>
  </tr>
  <tr>
    <td height="904"></td>
    <td valign="top"><table id="admtab" width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td id="heading_econf" height="10" colspan="8" valign="top"><h2>Configure Enterprise</h2></td>
        </tr>
      <tr>
        <td width="175" height="80">&nbsp;</td>
        <td width="132">&nbsp;</td>
        <td width="29">&nbsp;</td>
        <td width="59">&nbsp;</td>
        
      </tr>




      <tr>
        <td height="31"></td>
          <td colspan="2" valign="top"><label>Organisation Name</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="orgname" />
          </label></td>
          <td width="144">&nbsp;</td>
        </tr>
     
      <tr>
        <td height="30">&nbsp;</td>
          <td colspan="2" valign="top"><label>Organisation Address</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="orgadd" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
     
      <tr>
        <td height="30">&nbsp;</td>
          <td colspan="2" valign="top"><label>Country</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <select name="country">
                <option value="India">India</option>
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
      
      <tr>
        <td height="33">&nbsp;</td>
          <td colspan="2" valign="top"><label>State</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <select name="state">
                <option value="UP">UP</option>
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
      
      <tr>

        <td height="34">&nbsp;</td>
          <td colspan="2" valign="top"><label>City</label>
            <!--DW<label></label>LayoutEmptyCell--></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <select name="city">
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
     
      <tr>
        <td height="33">&nbsp;</td>
          <td colspan="2" valign="top"><label>Pin/Zip Code</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="pincode" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
     
      <tr>
        <td height="30">&nbsp;</td>
          <td colspan="2" valign="top"><label>Phone 1</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="phone1" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
      
      <tr>
        <td height="31">&nbsp;</td>
        <td colspan="2" valign="top">Phone2</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="phone2" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
      
      <tr>
        <td height="30">&nbsp;</td>
          <td colspan="2" valign="top"><label>Fax</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="fax" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
      
      <tr>
        <td height="31">&nbsp;</td>
          <td colspan="2" valign="top"><label>e-mail</label>
          &nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input type="text" name="email" />
          </label></td>
          <td>&nbsp;</td>
        </tr>
      
      <tr>
        <td height="36">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <input id="sbt" type="submit" name="Submit" value="Submit" />
          </label></td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
     


    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="58">&nbsp;</td>
    
</table>
        </form>
</body>
</html>
