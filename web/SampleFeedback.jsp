<%--
    Document   : technicalFeedback
    Created on : 3 Nov, 2011, 9:43:12 PM
    Author     : Kanika
--%>
<%@taglib prefix="core"  uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Sample technical Feedback</title>
    </head>
    <body>
        <form action ="sampl.do">
            <table border="0">

                <tr>
                    <td width="100" valign="center" align="center"> Supplier Quotation Id </td>
                    <td> <select name="suppQuatationId" >
                            <option value="select">.....Select.....</option>
                       
                            <core:forEach items="${sessionScope['obj1']}" var="sid">
                                <option value="${sid.suppQuatationId}">${sid.suppQuatationId}</option>
                            </core:forEach>
                        </select></td>
                </tr>


                <tr>
                    <td width="100" valign="center" align="center"> Rating Id </td>
                    <td> <select name="ratingId">
                             <option value="select">.....Select.....</option>
                            <core:forEach items="${sessionScope['obj3']}" var="ri">
                                <option value="${ri. ratingId}">${ri. ratingId}</option>
                            </core:forEach>
                        </select></td>
                </tr>

                  <tr>
                    <td width="100" valign="center" align="center"> Sample ID </td>
                    <td> <select name="sampleId">
                             <option value="select">.....Select.....</option>
                            <core:forEach items="${sessionScope['obj4']}" var="ri">
                                <option value="${ri.sampleId}">${ri.sampleId}</option>
                            </core:forEach>
                        </select></td>
                </tr>

               
                <tr>
                    <td width="100" valign="center" align="center"> Tech Approved </td>
                    <td><input type="radio" name="techApproved" value="YES"/>YES
                    <input type="radio" name="techApproved" value="NO"/>NO</td>
                </tr>
                <tr>
                    <td width="100" valign="center" align="center"> Feedback </td>
                    <td><textarea cols="" rows="" name="feedback"> </textarea></td>
                </tr>

                <tr>
                    <td width="100" valign="center" align="center"> Feedback by </td>
                    <td><textarea cols="" rows="" name="feedbackBy"> </textarea></td>
                </tr>

                <tr>
                    <td width="100" valign="center" align="center"> Feedback date </td>
                    <td><textarea cols="" rows="" name="feedBackDate"> </textarea></td>
                </tr>


            </table>
            ${requestScope.msg}
                     <input type="submit" name="but" value="Submit"/>
        </form>
    </body>
</html>
