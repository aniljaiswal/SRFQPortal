<%-- 
    Document   : ViewSampleApprovals
    Created on : 23 Oct, 2011, 12:37:55 AM
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
        <title>View Sample Approvals</title>
      <script type="text/javascript" src="tablecolor.js">
        </script>
        <style type="text/css">
            body{background-image: url("bg.gif")}
a:link {text-decoration:none;color:black}    /* unvisited link */
a:visited {text-decoration:none;} /* visited link */
a:hover {text-decoration:underline;color:#333333}   /* mouse over link */
a:active {text-decoration:underline;}  /* selected link */
</style>
    <body onload="tabcolor()">
        <a href="vsap.do">view Sample Approvals</a>
        <a href="gsap.do">Give Sample Approval</a>
        <h2 align="center" style="background-color:cadetblue">View Sample Approvals</h2>
        <table id="view" cellpadding="0" cellspacing="0" border="1" align="center">
                            <tr id="headrow">
                                <th>Sample_Admin_Approval_Id</th>
                                <th>Supp_Quatation_Id</th>
                                <th>Sample_Admin_Approved</th>
                                <th>Feedback</th>
                                <th>Sample_Admin_Approved_By</th>
                                <th>Date_On</th>
                              </tr>
                              <core:forEach items="${requestScope.ids}" var="r">
                                  <tr>
                               <td>
                                   ${r.sampleAdminApprovalId}
                                </td>
                               <td>
                                   ${r.supplierQuatationMaster.suppQuatationId}
                                </td>
                                <td>
                                   ${r.sampleAdminApproved}
                                </td>
                                <td>
                                   ${r.feedback}
                                </td>
                                <td>
                                   ${r.sampleAdminApprovedBy}
                                </td>
                                <td>
                                   ${r.dateOn}
                                </td>
                            </tr>
                              </core:forEach>
       </table>
    </body>
</html>
