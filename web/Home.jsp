<%-- 
    Document   : Home2
    Created on : Oct 15, 2011, 1:04:42 PM
    Author     : dell
--%>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="t" uri="http://struts.apache.org/tags-tiles" %>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>SRFQ-Home</title>
        <link rel="stylesheet" type="text/css" href="home.css"/>
         <link rel="stylesheet" type="text/css" href="forms.css"/>
         <link rel="stylesheet" type="text/css" href="style.css"/>
    </head>

    <body><div id="wrapper">
       <table width="1040" border="0" cellpadding="0" cellspacing="0">
  <!-- Start Header-->
  <tr>
    <td height="85" colspan="5" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      
      <tr>
        <td width="1040" height="85" valign="top">
          <t:insert attribute="h"/></td>
      </tr>
    </table>    </td>
  </tr>
      <!-- End Header-->
      
      <!-- Sub Menu -->
  <tr>
    <td height="33" colspan="5" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      
      <tr>
        <td width="1040" height="33" valign="top"><t:insert attribute="sbm"/></td>
          </tr>
    </table></td>
    </tr>
           <!--End Sub Menu-->
           
            <!-- Start Menu -->
  <tr>
    <td width="9" height="19">&nbsp;</td>
    <td width="231">&nbsp;</td>
    <td width="25">&nbsp;</td>
    <td width="766">&nbsp;</td>
    <td width="9">&nbsp;</td>
  </tr>
 
  <tr>
    <td height="2"></td>
    <td rowspan="2" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->

      <tr>
        <td width="231" height="253" valign="top">
          <t:insert attribute="m"/></td>
          </tr>
    </table></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
         <!--End Menu-->
  <!-- Start Body-->
  <tr>
    <td height="251">&nbsp;</td>
    <td>&nbsp;</td>
    <td rowspan="2" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->

      <tr>
        <td width="766" height="434" valign="top">
          <t:insert attribute="b"/></td>
          </tr>
    </table></td>
  <td></td>
  </tr>
         
  <tr>
    <td height="10">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>

  <tr>
    <td height="19">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

 <!--End Body-->
  <!-- Start Footer-->

  <tr>
    <td height="24" colspan="5" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="1040" height="24" valign="top"><t:insert attribute="f"/>
          </td>
      </tr>
    </table>    </td>
  </tr>
         
  <!-- End Footer-->

</table>
        </div>
    </body>
</html>
