<%--
    Document   : evaluationdesc
    Created on : 4 Nov, 2011, 11:55:23 AM
    Author     : Bhawna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" uri="http://struts.apache.org/tags-html" %>

<h:html>
    <head>
    
        </style>

        <script type="text/javascript">
            function msg()
            {
                alert("you selected yes");
            }
            </script>
    </head>
    <body>
        <form action="con2.do">

        <%!
static int ii=0;

   %>

   <center><h1>Sample Confirmation</h1></center>
        <table border="1">


            <%--    <core:if test="${param.id ne null}">
${param.id}
                     <core:set var="start" value="${param.id}"></core:set>
                     ${start}
                     <core:set var="end" value="${param.id+5}"></core:set>
                 ${end}
            </core:if>
            <core:if test="${param.id eq null}">
                <core:set var="start" value="1"></core:set>
            <core:set var="end" value="5"></core:set>
            </core:if>

            <core:if test="${param.id_start eq null} && ${param.id_pre eq null} && ${param.id_next eq null} && ${param.id_end eq null}">
                <% ii=6;%>
                <core:set var="start" value="1"></core:set>
                <core:set var="end" value="5"></core:set>
            </core:if>
            --%>
               
            <core:if test="${param.id_start ne null} ">
                <% ii=4;%>
                <core:set var="start" value="1"></core:set>
                <core:set var="end" value="3"></core:set>
            </core:if>


           <core:if test="${param.id_next eq null}">
                <core:set var="start" value="1"></core:set>
                <core:set var="end" value="3"></core:set>
                <% ii=4;%>
            </core:if>


            <core:if test="${param.id_next ne null}">

                <core:set var="start" value="${param.id_next}"></core:set>
                <core:set var="end" value="${param.id_next+2}"></core:set>
                <%
                ii=ii+2;
                  %>
                  <core:if test="${param.id_next gt 4}">
                      <core:set var="start" value="${sessionScope.start}"></core:set>
                      <core:set var="end" value="${sessionScope.end}"></core:set>
                      <% ii=4; %>
                  </core:if>
            </core:if>


            <core:if test="${param.id_pre ne null}">

                <core:set var="start" value="${param.id_pre}"></core:set>
                <core:set var="end" value="${param.id_pre+2}"></core:set>
                <%
                ii=ii-5;
                %>
                <core:if test="${param.id_pre lt 0}">
                    <core:set var="start" value="1"></core:set>
                    <core:set var="end" value="3"></core:set>
                 <%ii=1;
                 %>
                </core:if>
            </core:if>



            <core:if test="${param.id_end ne null}">
                <% ii=4;%>
                <core:set var="start" value="${sessionScope.start}"></core:set>
                <core:set var="end" value="${sessionScope.end}"></core:set>
             </core:if>

            <tr>
                <td>
                    <label>Supplier_Id</label>
                </td>
                <td>
                    <label>Material Description</label>
                </td>
                <td >
                    <label> Decision</label>
                </td>
            </tr>

      <core:if test="${sessionScope.supid_mdesc ne null}">
          <core:forEach  begin="${start}" var="r1" items="${sessionScope.supid_mdesc}" end="${end}">
            <tr>
                        <td>
                            <input type="text" name="supp_id" value="${r1[0]}"/>
                        </td>
                             <td>
                                 <input type="text" name="m_desc" value="${r1[1]}"/>
                            </td>
                        <td>

                            <input type="radio" name="radio1" value="yes" onclick="form.submit(this)"/>Yes
                            <input type="radio" name="radio1" value="no"  onclick="form.submit(this) "/>No
                        </td>
                       


        </tr>

                        </core:forEach>
        </core:if>
   <%--
        <core:forEach var="r1" items="${sessionScope.sup_id}" step="5" >
            <a href="new_evaluationdesc.jsp?id=<%=ii %>"><% out.print(ii);ii=ii+5;%></a>

        </core:forEach>
                <tr>
        <core:if  test="${sessionScope.mdesc ne null}">
                        <core:forEach var="r2" items="${sessionScope.mdesc}" >

                            <td>
                                 <input type="text" value="${r2}"/>
                            </td>

                        </core:forEach>
         </core:if>
--%>
</table>
<table >
<tr>
    <td>
<a href="con2.do?id_start=1">First</a>
    </td>
    <td>
<a href="con2.do?id_pre=<%=ii-5%>">Previous</a>
    </td>
    <td>
<a href="con2.do?id_next=<%=ii%>">Next</a>
    </td>
    <td>
<a href="con2.do?id_end=1">Last</a>
    </td>
</tr>




                </table>


        </form>
    </body>
</h:html>