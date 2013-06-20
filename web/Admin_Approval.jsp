<%@taglib prefix="core" uri="http://java.sun.com/jstl/core_rt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>ADMIN APPROVAL</title>
</head>

<body>
    <h3 align="center">FINANCIAL FEEDBACK MASTER</h3>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <th>Supp_Quatation_Id</th>
  <th>Financ_Feedback_Id</th>
  <th>Financ_GoodWill_Id</th>
 <th>Rating_Id</th>
 <th>Financ_Approved</th>
 <th>Feedback</th>
 <th>Feedback_by</th>
 <th>FeedBackDate</th>
  <form action="fin5.do">
    <select name="sel" onchange="form.submit(this)">
     <option value ="---------">------------</option>
     <core:if test="${sessionScope.rs ne null}">
    <core:forEach items="${rs.rows}" var="r">
        <option value="${r.Supp_Quatation_Id}">${r.Supp_Quatation_Id}</option>
    </core:forEach>
     </core:if>
    </select>
    <core:if test="${sessionScope.sel ne null}">
    <core:if test="${sessionScope.rs1 ne null}">
    <core:forEach var="t" items="${rs1.rows}">
        <tr>  <td>${t.Supp_Quatation_Id}</td>
        <td>${t.Financ_Feedback_Id}</td>
        <td>${t.Financ_GoodWill_Id}</td>
        <td>${t.Rating_Id}</td>
        <td>${t.Financ_Approved}</td>
        <td>${t.Feedback}</td>
        <td>${t.Feedback_by}</td>
        <td>${t.FeedBackDate}</td></tr>
    </core:forEach>
    </core:if>
    </core:if>
    </form>

    <h3 align="center">TECHNICAL FEEDBACK MASTER</h3>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <th>Supp_Quatation_Id</th>
  <th>Tech_Feedback_Id</th>
  <th>Material_Goodwill_id</th>
 <th>Rating_Id</th>
 <th>Tech_Approved</th>
 <th>Feedback</th>
 <th>Feedback_by</th>
 <th>FeedBackDate</th>
   <core:if test="${sessionScope.sel ne null}">
    <core:if test="${sessionScope.rs2 ne null}">
        <core:forEach var="r2" items="${rs2.rows}">
            <tr> <td>${r2.Supp_Quatation_Id}</td>
        <td>${r2.Tech_Feedback_Id}</td>
        <td>${r2.Material_Goodwill_id}</td>
        <td>${r2.Rating_Id}</td>
        <td>${r2.Tech_Approved}</td>
        <td>${r2.Feedback}</td>
        <td>${r2.Feedback_by}</td>
        <td>${r2.FeedBackDate}</td></tr>
    </core:forEach>
    </core:if>
    </core:if>
    <h3 align="center">SUUPLIER QUATATION MASTER</h3>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
  <th>Supp_Quatation_Id</th>
  <th> Supp_id</th>
  <th>Req_id</th>
  <th> Proposedcost</th>
  <th> Currency_Id</th>
  <th>Unit_id</th>
  <th> Tech_Specification</th>
  <th>Remarks</th>
  <th> Tech_Feedback_status</th>
  <th> Financ_Feedback_status</th>
        <core:if test="${sessionScope.sel ne null}">
   <core:if test="${sessionScope.rs3 ne null}">
        <core:forEach var="r1" items="${rs3.rows}">
        <tr>
        <td>${r1.Supp_Quatation_Id}</td>
        <td>${r1.Supp_id}</td>
        <td>${r1.Req_id}</td>
        <td>${r1.Proposedcost}</td>
        <td>${r1.Currency_Id}</td>
        <td>${r1.Unit_id}</td>
        <td>${r1.Tech_Specification}</td>
        <td>${r1.Remarks}</td>
        <td>${r1.Tech_Feedback_status}</td>
        <td>${r1.Financ_Feedback_status}</td>
        </tr>
    </core:forEach>
    </core:if>
    </core:if>
  
  </table>
  
    <h3 align="center">Rating Master</h3>
    <table width="100%" border="1" cellpadding="0" cellspacing="0">
    <tr>
        <th>Rating_Id</th>
        <th> Rating_desc</th>
    </tr>
    
    <core:if test="${sessionScope.sel ne null}">
    <core:if test="${sessionScope.rs4 ne null}">
    <core:forEach var="k" items="${rs4.rows}">
        <tr>
        <td>${k.Rating_Id}</td>
        <td>${k.Rating_desc}</td>
        </tr>
       
    </core:forEach>
    </core:if>
     </core:if>
</table>
    
</body>
</html>