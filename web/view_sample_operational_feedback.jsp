<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="100%" height="94" valign="top" align="center"><h1>VIEW SAMPLE OPERATIONAL FEEDBACK </h1></td>
    <td width="423">&nbsp;</td>
  </tr>
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <th>  Sample_id</th>
  <th>Supp_Quatation_Id</th>
  <th>Rating_Id</th>
  <th> Op_Approved</th>
  <th>Feedback</th>
  <th>Feedback_by</th>
  <th> FeedBackDate</th>
</table>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
     <form action="fin4.do">
    <select name="select" onchange="form.submit(this)">
     <option value ="---------">------------</option>
     <core:if test="${sessionScope.rs ne null}">
    <core:forEach items="${rs.rows}" var="r">
        <option value="${r.Sample_id}">${r.Sample_id}</option>
    </core:forEach>
     </core:if>
    </select>
    <core:if test="${param.select ne null}">
        <core:if test="${sessionScope.rs1 ne null}">
        <core:forEach var="r1" items="${rs1.rows}">
        <td><input type="text" value="${r1.Sample_id}"/></td>
        <td><input type="text" value="${r1.Supp_Quatation_Id}"/></td>
        <td><input type="text" value="${r1.Rating_Id}"/></td>
        <td><input type="text" value="${r1.op_Approved}"/></td>
        <td><input type="text" value="${r1.Feedback}"/></td>
        <td><input type="text" value="${r1.Feedback_by}"/></td>
        <td><input type="text" value="${r1.FeedBackDate}"/></td>
    </core:forEach>
    </core:if>
    </core:if>
    </form>
  </tr>
</table>
</body>
</html>