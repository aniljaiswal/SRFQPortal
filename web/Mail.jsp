<%-- 
    Document   : Mail
    Created on : Nov 5, 2011, 12:50:27 PM
    Author     : Rashi Gupta
--%>
<%
        String msg=(String)request.getAttribute("ma");
        if(msg!=null){
           out.println("<script type='text/javascript'>alert('"+msg+"')</script>");
        }
      %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Mail To Admin</title>
<link rel="stylesheet" type="text/css" href="mail.css"/>
<link rel="stylesheet" type="text/css" href="home.css"/>
</head>

<body><div id="mail">
    <form action="mail.do">
        <table  id="afrole_tb" width="401" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
   <tr>
                    <td height="58" colspan="5" valign="top" id="afrole_heading"><span 
class="style1"><h2>Mailing</h2>
                    </span></td>
                <td width="4">&nbsp;</td>
   </tr>
   <tr>
     <td width="56" height="26">&nbsp;</td>
     <td width="26">&nbsp;</td>
     <td width="20">&nbsp;</td>
     <td width="24">&nbsp;</td>
     <td width="275">&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
  
  <tr>
    <td height="28">&nbsp;</td>
    <td valign="top">To</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <input type="text" name="to" />
    </label></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="19">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="28">&nbsp;</td>
    <td colspan="2" valign="top">From</td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <input type="text" name="from" />
    </label></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="35">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="24">&nbsp;</td>
    <td colspan="2" valign="top">Subject</td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <input type="text" name="sub" />
    </label></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="39">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="163">&nbsp;</td>
    <td colspan="4" valign="top"><label>
    <textarea name="msg" cols="50" rows="10"></textarea>
    </label></td>
    <td>&nbsp;</td>
    </tr>
  <tr>
      <td height="42"><input type="submit" values="send"/></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
</table>
      
    </form></div>
</body>
</html>
