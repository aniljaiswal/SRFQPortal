<%-- 
    Document   : SelectEditBidDate
    Created on : 4 Nov, 2011, 10:50:24 AM
    Author     : Devvrat
--%>
<%@taglib prefix="t" uri="http://struts.apache.org/tags-html"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selection Of One Entry For Editing Bid date</title>
        <script type="text/javascript" src="tablecolor.js">
        </script>
        <style type="text/css">
            body{background-image: url("bg.gif")}
        a:link {text-decoration:none;color:black}    /* unvisited link */
a:visited {text-decoration:none;} /* visited link */
a:hover {text-decoration:underline;color:#333333}   /* mouse over link */
a:active {text-decoration:underline;}  /* selected link */
        </style>
    </head>
    <body onload="tabcolor()">
        <a href="nbdt.do">New Bid Date</a>
        <a href="ebdt.do">Edit Bid Date</a>
        <t:form action="bdt.do">
            <h3 align="center" style="background-color:cadetblue"><u>CHOOSE ONE ENTRY FOR EDITING BID DATE</u></h3>
            <table id="view" cellpadding="0" cellspacing="0"  align="center" border="1">
                            <tr>
                                <th>Select_Option</th>
                                <th>Req_Id</th>
                                <th>Material_Id</th>
                                <th>Quantity</th>
                                <th>unit_Id</th>
                                <th>Req_posting_Opening_Date</th>
                                <th>Req_posting_closing_Date</th>
                                <th>Posted_By</th>
                                <th>R_Priority_Id</th>
                            </tr>
                            <core:forEach items="${requestScope.ids}" var="r">
                             <tr>
                                 <td>
                                     <input name="radiobutton" type="radio" value="${r.reqId}" />
                                 </td>
                               <td>
                                   ${r.reqId}
                                </td>
                               <td>
                                   ${r.materialMaster.materialId}
                                </td>
                                <td>
                                   ${r.quantity}
                                </td>
                                <td>
                                   ${r.unitMeasureMaster.unitId}
                                </td>
                                <td>
                                   ${r.reqPostingOpeningDate}
                                </td>
                                <td>
                                   ${r.reqPostingClosingDate}
                                </td>
                                <td>
                                   ${r.postedBy}
                                </td>
                                <td>
                                    ${r.requirementPriorityMaster.RPriorityId}
                                </td>
                            </tr>
                            </core:forEach>
                        </table>
            <h5 align="center"><input type="submit" name="sub" value="Submit"/></h5>
        </t:form>
    </body>
</html>
