<%-- 
    Document   : SampleTechApp
    Created on : 5 Nov, 2011, 9:27:46 PM
    Author     : Kanika
--%>
<%@taglib prefix="core"  uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sample Tech Approval</title>
    </head>
    <body>
        <form action ="vw.do">
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
                    <td width="100" valign="center" align="center"> Material Goodwill Id </td>
                    <td> <select name="materialGoodwillId" >
                              <option value="select">.....Select.....</option>
                            <core:forEach items="${sessionScope['obj2']}" var="mtgi">
                                <option value="${mtgi. materialGoodwillId}">${mtgi. materialGoodwillId}</option>
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
                    <td width="100" valign="center" align="center">Sample Tech approval ID </td>
                    <td><textarea cols="" rows="" name="sampleTechApprovalId"> </textarea></td>
                </tr>
                <tr>
                    <td width="100" valign="center" align="center">Sample Tech Approved </td>
                     <td><input type="radio" name="sampleTechApproved" value="YES"/>YES
                    <input type="radio" name="sampleTechApproved" value="NO"/>NO</td>
                </tr>
                <tr>
                    <td width="100" valign="center" align="center"> Feedback </td>
                    <td><textarea cols="" rows="" name="feedback"> </textarea></td>
                </tr>

                <tr>
                    <td width="100" valign="center" align="center">Sample Tech Approved By </td>
                    <td><textarea cols="" rows="" name="sampleTechApprovedBy"> </textarea></td>
                </tr>

              


            </table>
            <input type="submit" name="but" value="Submit"/>
        </form>
    </body>
</html>
