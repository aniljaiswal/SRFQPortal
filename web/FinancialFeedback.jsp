<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="h" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Financial Analysis</title>
        <link href="admin_add_ent.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form action="finanfeed.do">
        <table id="bgtab" width="897" border="0" cellpadding="0" cellspacing="0" align="center">
  <!--DWLayoutTable-->
  <tr>
    <td width="78" height="51">&nbsp;</td>
    <td width="717">&nbsp;</td>
    <td width="102">&nbsp;</td>
  </tr>
  <tr>
    <td height="904"></td>
    <td valign="top"><table id="admtab" width="100%" border="0" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td id="heading_econf" height="69" colspan="8" valign="top"><h2>Financial Feedback on Supplier</h2></td>
        </tr>
      <tr>
        <td width="175" height="80">&nbsp;</td>
        <td width="132">&nbsp;</td>
        <td width="29">&nbsp;</td>

        <td id="homelink_ec" colspan="2" valign="top" align="right"><h4><a href="home.jsp">Home</a></h4></td>
      </tr>
<tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Feedback Feedback Id</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
                  <input type="text" name="finanFeedId" value="${FinanFeedId}" />
         
          </label></td>
          <td>&nbsp;</td>
        </tr>
<tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Supplier Quotation Id</label></td>
          <td>&nbsp;</td>
          <c:catch var="rs">
          <td colspan="3" valign="top"><label>
                  
                      <select name="suppQuoId">
                        <c:set var="id" value="${param.SuppQuoId}"/>
                           <option value="----">-----</option>
                           <c:if test="${sessionScope.list ne null}">
                           <c:forEach items="${sessionScope.list}" var="r1">
                               <option value="${r1}">${r1}</option>
                           </c:forEach>
                           </c:if>
                               </c:catch>
                                   <c:out value="${rs}"/>
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <%-- <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Supplier Id</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
                      <select name="SuppId">
             <option value="${param.sup_id}">${param.sup_id}</option>
              
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        --%>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Financial Goodwill Description</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <select name="finanGoodDesc">
                <c:set var="id" value="${param.FinanGoodDesc}"/>
                
                <option value="----">-Select Option-</option>
                <option value="Very Expensive">Very Expensive</option>
                <option value="Expensive">Expensive</option>
                <option value="Reasonable">Reasonable</option>
                <option value="Econmical">Econmical</option>
                <option value="New Entry">New Entry</option>
                             
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Rating Description</label></td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
            <select name="ratingDesc">
                 <c:set var="id" value="${param.RatingDesc}"/>
                
                <option value="----">-Select Option-</option>
                <option value="Very High">Very High</option>
                <option value="High">High</option>
                <option value="Average">Average</option>
                <option value="Low">Low</option>
                <option value="Very Low">Very Low</option>
                
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="60">&nbsp;</td>
          <td colspan="2" valign="top"><label>Feedback</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
          <textarea name="feedback"  style="position:absolute; width: 160px; height: 40px;">


          </textarea>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Feedback By</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
                  <input type="text" name="feedbackBy"  />
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
        <td height="50">&nbsp;</td>
          <td colspan="2" valign="top"><label>Feedback Date(yyyy/mm/dd)</label>&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top"><label>
                  <input type="text" name="feedbackDate" />
          
          </label></td>
          <td>&nbsp;</td>
        </tr>

      <tr>
        <td height="50">&nbsp;</td>
          <td>&nbsp;</td>
          <td colspan="3" valign="top">

                 <label>
                     ${requestScope.msg}
                  <input name="Submit" type="submit" id="Submit" value=Submit />

                  <td valign="bottom" align="center"></td>

              </label>

      </tr>
        </table>
    </td>
          <td>&nbsp;</td>
        </tr>
      <tr>
        <td height="60">&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>

        </tr>
 </table>
        </form>
</body>
</html>
