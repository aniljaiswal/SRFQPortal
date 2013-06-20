<%@page import="bean.AllocateFuncEmpBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="classes.EmployeeMaster"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
if(session.getAttribute("empId") == null)
    response.sendRedirect("index.jsp");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>SRFQ-Allocate Functionality to Employee</title>
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
                            from.options[from.length] = new Option(to.options
[i].innerHTML,to.options[i].value);
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

    <body>
        <form action="Employeee.do">
            <table id="afrole_tb1"width="720" border="0" cellpadding="0" cellspacing="0" 
align="center">
                <!--DWLayoutTable-->
                <tr>
                    <td height="58" colspan="11" valign="top" id="afrole_heading1"> 
<h2>Allocate Functionality To Employee</h2>
                        </td>
                </tr>
                <tr>
                    <td width="41" height="16"></td>
                    <td width="105"></td>
                    <td width="20"></td>
                    <td width="92"></td>
                    <td width="21"></td>
                    <td width="74"></td>
                    <td width="27"></td>
                    <td width="33"></td>
                    <td width="110"></td>
                    <td width="81"></td>
                    <td width="47"></td>
                </tr>

                <tr>
                    <td height="25"></td>
                    <td rowspan="2" valign="top">Employee ID <span><font color="red">*</font></span></td>
                    <td></td>
                    <td colspan="3" rowspan="2" valign="top"><label>

                            
                            <select name="empid" onchange="form.submit(this)">
                                <option value="user">---select---</option>
                                <% HttpSession sess = request.getSession(true);
                                    String empid=(String)request.getAttribute("eid");
                                    ArrayList ob = (ArrayList) sess.getAttribute("empid");
                                    if (ob != null) {
                                        Iterator it = ob.iterator();
                                        while (it.hasNext()) {
                                            String eid=(String)it.next();
                                            if(empid != null && empid.equals(eid))
                                                {      %>
                                <option value="<%=eid%>" selected><%=eid%></option>
                                <% 
                                                               }else
                                                              {
                                                %>
                                                               
                                             <option value="<%=eid%>" ><%=eid%></option>
                                            <%
                                                                                       }
                                        }
                                    }
                                %>  
                               
                            </select>
                        </label></td>
                    <td></td>
                    <td></td>
                    <td></td>

                    <td></td>
                </tr>
                <tr>
                    <td height="2"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>

                <tr>
                    <td height="25">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>


                    <td></td>
                </tr>
                <tr>
                    <td height="25">&nbsp;</td>
                    <td valign="top">Select Role</td>
                    <td>&nbsp;</td>
                    <td colspan="2" valign="top"><label>
                            <select name="rolename">
                                <%  sess = request.getSession(false);
                                    String roname = (String) sess.getAttribute("rname");

                                    
                                %> <option ><%=roname%></option>

                            </select>
                        </label></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td></td>
                </tr>
                <tr>
                    <td height="30">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td></td>
                </tr>

                <tr>
                    <td height="118"></td>
                    <td colspan="3" rowspan="5" valign="top"><select class="list" 
name="allres" size="20" multiple="multiple">
                           <c:if test="${param.empid ne null}">      
                            <%System.out.println("byeeeee");
                                  
                                  sess = request.getSession(false);
                                    ArrayList ob1 = (ArrayList) sess.getAttribute
("gorup");
                                        Iterator it = ob1.iterator();
                                        while (it.hasNext()) {String str=(String)it.next
();
                                        System.out.println(str);
                                        %>
                                        <option value="<%=str%>" ><%=str%></option>
                                <%
                                         }
                                %>
                            </c:if>
                           
                        </select></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    
                    <td colspan="2" rowspan="5" valign="top"><select class="list" 
name="allocresourceid" size="16" multiple="multiple" >
                            <c:if test="${param.empid ne null}">      
                            <%//System.out.println("byeeeee");
                                  
                                  sess = request.getSession(false);
                                    ArrayList ob2 = (ArrayList) sess.getAttribute
("resources");
                                       Iterator it1 = ob2.iterator();
                                        while (it1.hasNext()) {String str=(String)
it1.next();
                                        //System.out.println(str);
                                        %>
                                        <option value="<%=str%>" ><%=str%></option>
                                <%
                                         }
                                %>
                            </c:if>
                        </select></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td height="41">&nbsp;</td>
                    <td></td>
                    <td colspan="2" valign="top"><label>
                            
                            <input type="button" class="sub_role" name="s1" value=">>" 
onclick="moveToRole(allres,allocresourceid);"/>
                        </label></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td height="32">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>

                    <td></td>
                </tr>
                <tr>
                    <td height="43">&nbsp;</td>
                    <td></td>
                    <td colspan="2" valign="top"><label>
                            <input type="button" class="sub_role" name="si" value="<<" 
onclick="moveFromRole(allocresourceid);"/>
                            <input type="hidden" name="method" value="callAction"/>

                        </label></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td height="99">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td></td>
                </tr>







               <tr>
                    <td height="35">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  
                    <td colspan="2" valign="top"><input type="submit" name="but" 
value="Insert" /></td>
                    
                    <td colspan="2" valign="top"><input  type="submit" name="but" 
value="Delete" /></td>
               
                </tr>
                <tr>
                    <td height="20">&nbsp;</td>
                    <td>&nbsp;</td>
                        <td></td>
                </tr>
            </table>
        </form>                    
    </body>
</html>
