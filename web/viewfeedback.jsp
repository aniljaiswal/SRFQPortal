<%--
    Document   : first
    Created on : 20 Oct, 2011, 11:48:14 AM
    Author     : Kanika
--%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Feedbacks</title>
        <link href="view_update_request.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form action="vtf.do">

            <h1>View feedbacks</h1>
            <table border="1">
                <tr bgcolor="#0099FF">
                    <td width="50" valign="center" align="center"> Tech Feedback ID </td>
                    <td width="50" valign="center" align="center"> Supplier Quot Id  </td>
                    <td width="50" valign="center" align="center"> Material Goodwill Id </td>
                    <td width="50" valign="center" align="center"> Rating id </td>
                    <td width="50" valign="center" align="center"> Tech Approved </td>
                    <td width="50" valign="center" align="center"> Feedback </td>
                    <td width="50" valign="center" align="center"> Feedback By </td>
                    <td width="50" valign="center" align="center"> Feedback Date </td>



                </tr>
                <core:forEach var="r" items="${sessionScope['obj']}">
                    <tr>
                        <td valign="top" align="center">${r.techFeedbackId}</td>
                        <td valign="top" align="center">${r.supplierQuatationMaster.suppQuatationId}</td>
                        <td valign="top" align="center">${r.materialTechGoodwillMaster.materialGoodwillId}</td>
                        <td valign="top" align="center">${r.ratingMaster.ratingId}</td>
                        <td valign="top" align="center">${r.techApproved}</td>
                        <td valign="top" align="center">${r.feedback}</td>
                        <td valign="top" align="center">${r.feedbackBy}</td>
                        <td valign="top" align="center">${r.feedBackDate}</td>
                    </tr>
                </core:forEach>
            </table>

        </form>
    </body>
</html>

