<%-- 
    Document   : SampleFinancialFeedback
    Created on : 19 Oct, 2011, 12:35:55 PM
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
        <title>Sample Financial Feedback</title>
    </head>
    <body>
       <t:form action="vf.do">
           <core:if test="${requestScope.feedf eq null}">
        <select name="self" onchange="form.submit()">
            <option value="">------------</option>
            <jsp:scriptlet>
            </jsp:scriptlet>
            <core:forEach items="${requestScope.ids}" var="r">
                <option value="${r}">${r}</option>
            </core:forEach>
        </select>
        </core:if>
           <table border="1">
                            <tr>
                                <th>Sample_Id</th>
                                <th>Supp_Quatation_Id</th>
                                <th>Rating_Id</th>
                                <th>FIN_Approved</th>
                                <th>FeedBack</th>
                                <th>FeedBack_By</th>
                                <th>FeedBack_Date</th>
                            </tr>
                <core:if test="${requestScope.feedf ne null}">
                             <tr>
                               <td>
                                   ${requestScope.samplefid}
                                </td>
                               <td>
                                   ${requestScope.suppquatfid}
                                </td>
                                <td>
                                   ${requestScope.ratingfid}
                                </td>
                                <td>
                                   ${requestScope.finapp}
                                </td>
                                <td>
                                   ${requestScope.feedf}
                                </td>
                                <td>
                                   ${requestScope.postedfby}
                                </td>
                                <td>
                                   ${requestScope.postfdate}
                                </td>
                            </tr>
                        </table>
        </core:if>
        </t:form>
    </body>
</html>
