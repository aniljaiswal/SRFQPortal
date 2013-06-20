<%-- welcome AllocateFuncRole.jsp  --%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="classes.EmployeeMaster"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>SRFQ-Allocate Functionality to Role</title>
<script type="text/javascript">
    function moveToRole(to,from)
    {
          for(i=0;i<to.length;i++)
          {
           if(to.options[i].selected==true)
           {
            flag = true;
            for(j=0;j<from.length;j++)
            {
             if(from.options[j].value == to.options[i].value)
             flag = false;
            }
            if(flag)
             from.options[from.length] = new Option(to.options[i].innerHTML,to.options[i].value);
           }
          }
    }
    function moveFromRole(from)
    {
          for(i=0;i<from.length;i++)
          {
           if(from.options[i].selected==true)
           {
               from.options[i] = null;
           }
          }
    }
   </script>
 <link href="allocate_fun_role.css" rel="stylesheet" type="text/css" />
</head>
    <%@taglib prefix="h" uri="http://struts.apache.org/tags-html" %>
<body>
    <h:form action="FuncRole.do">
    <table id="afrole_tb"width="690" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td height="58" colspan="11" valign="top" id="afrole_heading"><span class="style1"><h2>Allocate Functionality To Role</h2>
    </span></td>
    <td width="4">&nbsp;</td>
  </tr>
  <tr>
    <td width="42" height="20">&nbsp;</td>
    <td width="119">&nbsp;</td>
    <td width="39">&nbsp;</td>
    <td width="59">&nbsp;</td>
    <td width="24">&nbsp;</td>
    <td width="68">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="31">&nbsp;</td>
    <td width="94">&nbsp;</td>
    <td width="82">&nbsp;</td>
    <td width="53">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>







  <tr>
    <td height="10">&nbsp;</td>
    <td valign="top"><strong>Select Role </strong></td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top"><label>
            <h:select  property="roledesc" onchange="form.submit(this)">
                                 <option>---select---</option>
                                <%HttpSession sess = request.getSession(true);
                                    String role=(String)request.getAttribute("role");
                                    ArrayList ob = (ArrayList) sess.getAttribute("role");
                                    if (ob != null) {
                                        Iterator it = ob.iterator();
                                        while (it.hasNext()) {
                                            String rl=(String)it.next();
                                            if(role != null && role.equals(rl))
                                                {
                                            
                                %>
                                <option value="<%=rl%>" selected><%=rl%></option>
                                <% 
                                                               }else
                                                              {
                                                %>
                                                               
                                             <option value="<%=rl%>" ><%=rl%></option>
                                            <%
                                                                                       }
                                        }
                                    }
                                %>  
                               
            </h:select>   </label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    
    <td></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="20">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
     <td></td>
    <td>&nbsp;</td>
  </tr>

  <tr>
      <td height="118"></td>
    <td colspan="3" rowspan="5" valign="top"><select class="list" name="allres" size="20" multiple="multiple">
           <c:if test="${param.roledesc ne null}">      
                                   <c:forEach  var="a" items="${sessionScope.gorup1}">
                                       <option>${a}</option>
                                   </c:forEach>
                            </c:if>
    </select></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2" rowspan="5" valign="top"><select class="list" name="allocresourceid" size="16" multiple="multiple" >
                               <c:if test="${param.roledesc ne null}">      
                                   <c:forEach  var="a" items="${sessionScope.ress}">
                                       <option>${a}</option>
                                   </c:forEach>
                            </c:if>
                        </select></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td height="41">&nbsp;</td>
    <td></td>
    <td colspan="2" valign="top"><label>
            <input type="button" class="sub_role" name="s1" value=">>" onclick="moveToRole(allres,allocresourceid);"/>
    </label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    </tr>
  <tr>
    <td height="32">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="43">&nbsp;</td>
    <td></td>
    <td colspan="2" valign="top"><label>
	<input type="button" class="sub_role" name="si" value="<<" onclick="moveFromRole(allocresourceid);"/>
      <input type="hidden" name="method" value="callAction"/>

    </label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    </tr>
  <tr>
    <td height="85">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td>&nbsp;</td>
  </tr>

  <tr>
    <td height="35">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td ><input type="submit" name="but" value="Insert" /> </td><td><input type="submit" name="but" value="Delete" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
    <td>&nbsp;</td>
  </tr>
</table>
    </h:form></body>
</html>
