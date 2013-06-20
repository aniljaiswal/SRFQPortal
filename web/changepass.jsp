<html>
    <head>

    </head>
    <%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
     <%
        String msg=(String)request.getAttribute("msg");
        if(msg!=null){
           out.println("<script type='text/javascript'>alert('"+msg+"')</script>");
        }
      %>
    <body>
        <form action="changepwd.do">
            <table id="afrole_tb"width="400" border="0" cellpadding="0" cellspacing="0" align="center">
                <tr>
                         <td height="10" colspan="11" valign="top" id="afrole_heading"><span class="style1"><h2>Change Password</h2>
    </span></td>
                 </tr>
                 <tr>
                     <td height="10">&nbsp;</td></tr>
            <tr>
                <td>
                    Old Password
                </td>
                <td>
                    <input class="textbox" type="password" name="oldpass"/>
                </td>
            </tr>
             <tr>
                     <td height="10">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    New Password
                </td>
                <td>
                    <input class="textbox" type="password" name="newpass"/>
                </td>
            </tr>
             <tr>
                     <td height="10">&nbsp;</td>
            </tr>
            <tr>
                <td>
                 Confirm Password
                </td>
                <td>
                    <input class="textbox" type="password" name="confirmpass"/>
                </td>
            </tr>
             <tr>
                     <td height="10">&nbsp;</td>
            </tr>
            <tr>
                <td><input id="cpbutton" type="submit" value="Change Password" name="submit"/></td>
                <td><input class="submit2" type="reset"/></td>
              </tr>
            </table>
      
        </form>
    </body>
</html>

