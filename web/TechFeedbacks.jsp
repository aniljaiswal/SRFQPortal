<%--
    Document   : technicalFeedback
    Created on : 3 Nov, 2011, 9:43:12 PM
    Author     : Kanika
--%>
<%@taglib prefix="core"  uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="h" uri="/WEB-INF/struts-html.tld" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>technical Feedback</title>
    </head>
    <h:javascript formName="TechFeedbacksBean"/>
    <body>
        <h:form action ="logg.do" onsubmit="validateTechFeedbacksBean(this);">
            <table border="0">

                <tr>
                    <td width="100" valign="center" align="center"> Supplier Quotation Id </td>
                    <td> <h:select property="suppQuatationId" >
                            <h:option value="select">.....Select......</h:option>
                            <core:forEach items="${sessionScope['obj1']}" var="sid">
                                <h:option value="${sid.suppQuatationId}">${sid.suppQuatationId}</h:option>
                            </core:forEach>
                        </h:select></td>
                </tr>

                <tr>
                    <td width="100" valign="center" align="center"> Material Goodwill Id </td>
                    <td> <h:select property="materialGoodwillId" >
                             <h:option value="select">.....Select......</h:option>
                            <core:forEach items="${sessionScope['obj2']}" var="mtgi">
                                <h:option value="${mtgi. materialGoodwillId}">${mtgi. materialGoodwillId}</h:option>
                            </core:forEach>
                        </h:select></td>
                </tr>

                <tr>
                    <td width="100" valign="center" align="center"> Rating Id </td>
                    <td> <h:select property="ratingId">
                             <h:option value="select">.....Select......</h:option>
                            <core:forEach items="${sessionScope['obj3']}" var="ri">
                                <h:option value="${ri. ratingId}">${ri. ratingId}</h:option>
                            </core:forEach>
                        </h:select></td>
                </tr>


                <tr>
                    <td width="100" valign="center" align="center"> Tech Feedback ID </td>
                    <td><h:textarea cols="" rows="" property="techFeedbackId"> </h:textarea></td>
                </tr>
                <tr>
                    <td width="100" valign="center" align="center"> Tech Approved </td>
                    
                     <td><input type="radio" name="techApproved" value="YES"/>YES
                    <input type="radio" name="techApproved" value="NO"/>NO</td>
                </tr>
                <tr>
                    <td width="100" valign="center" align="center"> Feedback </td>
                    <td><h:textarea cols="" rows="" property="feedback"> </h:textarea></td>
                </tr>

                <tr>
                    <td width="100" valign="center" align="center"> Feedback by </td>
                    <td><h:textarea cols="" rows="" property="feedbackBy"> </h:textarea></td>
                </tr>

               


            </table>
                ${requestScope.msg}
                    <h:submit value="submit" property="but"></h:submit>

        </h:form>
    </body>
</html>
