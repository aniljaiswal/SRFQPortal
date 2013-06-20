<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style type="text/css">
        h1{
       color: green;
      }
      h3
      {
          color: green;
      }
      th
      {
          color: green;
}
    </style>
<title>view rfq master</title>
</head>

<body>
<h1>RFQ STATUS MASTER</h1>
     
         RFQ_Status_id &nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;
         <form action="fin6.do">
         <input type="text" name="rfq_st_id"/>
         <select name="sel">
        <option value ="---------">------------</option>
     <core:if test="${sessionScope.rs ne null}">
         <core:forEach items="${rs.rows}" var="r">
    <option value="${r.rfq_status_id}">${r.rfq_status_id}</option>
    </core:forEach>
     </core:if>
           </select>
    <br/>
    <br/>
    RFQ_Status_remark  &nbsp;
    <input type="text" name="rfq_st_re"/>
    <br/>
    <br/>
    RFQ_Status &nbsp;&nbsp;
    <select name="rfq_st">
     <option value ="---------">------------</option>
     <core:if test="${sessionScope.st ne null}">
         <core:forEach items="${sessionScope.st}" var="st">
    <option value="${st}">${st}</option>
    </core:forEach>
     </core:if>
     </select>
    <br/>
    <br/>
    RFQ_Status_Weightage &nbsp;
    <select name="rfq_st_wt">
     <option value ="---------">------------</option>
     <core:if test="${sessionScope.w ne null}">
         <core:forEach items="${sessionScope.w}" var="rw">
    <option value="${rw}">${rw}</option>
    </core:forEach>
     </core:if>
     </select>
      <input type="submit"/>
        </form>
</body>
</html>