 <%-- 
    Document   : Menu.jsp
    Created on : Oct 19, 2011, 10:23:25 PM
    Author     : Rashi Gupta
--%>
<%@page pageEncoding="UTF-8" %>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
    <link href="SRFQResources/SRFQSytle.css"/>
<script type="text/javascript" src="SRFQResources/jquery-1.2.6.pack.js"></script>
<script type="text/javascript" src="SRFQResources/ddaccordion.js">
    

/***********************************************
* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
* This notice must stay intact for legal use
***********************************************/

</script>


<script type="text/javascript">


ddaccordion.init({
	headerclass: "silverheader", //Shared CSS class name of headers group
	contentclass: "submenu", //Shared CSS class name of contents group
	revealtype: "onclick", //Reveal content when user clicks or onmouseover the header? Valid value: "click" or "mouseover
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false
	defaultexpanded: [0], //index of content(s) open by default [index1, index2, etc] [] denotes no content
	onemustopen: true, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", "selected"], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["", "", ""], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})


</script>


<style type="text/css">
.applemenu{
margin: 5px 0;
padding: 0;
width: 230px; /*width of menu*/
border: 1px solid #036;
}

.applemenu div.silverheader a{
    background:url(SRFQResources/bg_menu.jpg);
   
	font: normal 12px Tahoma, "Lucida Grande", "Trebuchet MS", Helvetica, sans-serif;
	color:#FFF;
	display: block;
	position: relative; /*To help in the anchoring of the ".statusicon" icon image*/
	width: auto;
	padding-left: 8px;
	text-decoration: none;
	padding-top: 6px;
	padding-right: 0;
	padding-bottom: 6px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	border-top-color: #036;
	border-right-color: #036;
	border-bottom-color: #036;
	border-left-color: #036;
}


.applemenu div.silverheader a:visited, .applemenu div.silverheader a:active{
color:#036;
}
.applemenu div.submenu{ /*DIV that contains each sub menu*/
 background-color: #9A9A9A;	
    
	padding: 0px;/*height: 300px;*/ /*Height that applies to all sub menu DIVs. A good idea when headers are toggled via "mouseover" instead of "click"*/
	font-family: Verdana, Geneva, sans-serif;
	font-size: 12px;
	font-style: normal;
	font-weight: normal;
	font-variant: normal;
	text-decoration:none;
}
#menu a
{
	text-decoration:none;
	color:#FFF;
	font-size:12px;
}

#apDiv1 {
	position:absolute;
	left:0px;
	top:-5px;
	width:229px;
	height:1476px;
	z-index:1;
}
</style>

</head>

<body >


<div class="applemenu">
<div align="right" class="silverheader"><a href="#" style="font-weight:bold"><center>MAIN MENU</center></a></div>
<div class="submenu">
	<!--Some random content here<br />-->
  </div>
<c:if test="${ sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#"><bean:message key="menu.configure" locale="lang"/></a></div>
	<div class="submenu" >
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
  <tr>
   <td><a href="configNew.do" ><bean:message key="menu.1.1" locale="lang"/></a></td>
  </tr>
   <tr>
   <td><a href="confrole.do" ><bean:message key="menu.1.2" locale="lang"/></a></td>
  </tr>
   <tr>
   <td><a href="configemp.do" ><bean:message key="menu.1.3" locale="lang"/></a></td>
  </tr>

</table>
	</div>
	</div>
</c:if>
<c:if test="${ sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#" ><bean:message key="menu.Security" locale="lang"/></a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">

	<tr>
		<td><a href="role.do" ><bean:message key="menu.2.1" locale="lang"/></a></td>
	</tr>
	<tr>
		<td><a href="emp.do" ><bean:message key="menu.2.2" locale="lang"/></a></td>
	</tr>
	<tr>
		<td><a href="change.do" ><bean:message key="menu.2.3" locale="lang"/></a></td>
	</tr>

	</table>
	</div>
	</div>
</c:if>
<c:if test="${sessionScope.empRoleDesc eq 'Production' || sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#"><bean:message key="menu.reqspecification"/> </a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
	<tr>
            <td><a href="add.do" ><bean:message key="menu.3.1" locale="lang"/></a></td>
	</tr>

        <tr>
            <td><a href="log1.do" ><bean:message key="requirementview"/></a></td>


        </tr>
           <tr>
		<td><a href="viewv.do" >View and Update Posting</a></td>
	</tr>
        <tr>

            <td><a href="Spec.do" ><bean:message key="menu.3.2"/></a></td>
	</tr>
	</table>
	</div>
	</div>
</c:if>
<c:if test="${ sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#"><bean:message key="menu.configsupplier" locale="lang"/></a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
	        <tr><td><a href="consup.do">Suppliers/Contacts</a></td></tr>


	</table>
	</div>
	</div>
</c:if>
<c:if test="${sessionScope.empRoleDesc eq 'Supplier' || sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#"><bean:message locale="lang" key="menu.quotationposting"/></a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
	<tr><td><a href="AddQ.do" ><bean:message locale="lang" key="menu.5.1"/></a></td></tr>
	<tr><td><a href="upq.do" ><bean:message locale="lang" key="menu.5.2"/></a></td></tr>
	</table>
	</div>
	</div>
</c:if>
<c:if test="${sessionScope.empRoleDesc eq 'Technical' || sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#"><bean:message locale="lang" key="menu.techanalysis"/></a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
	        <tr><td><a href="reviewcomparePage.do"><bean:message locale="lang" key="menu.6.1"/></a></td></tr>
			<tr><td><a href="tf.do"><bean:message locale="lang" key="menu.6.2"/></a></td></tr>
			<tr><td><a href="suphi.do"><bean:message locale="lang" key="menu.6.3"/></a></td></tr>

	</table>
	</div>
	</div>
</c:if>
<c:if test="${sessionScope.empRoleDesc eq 'Finance' || sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#" >FINANCIAL ANALYSIS</a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
            <tr><td><a href="reviewandcompare1Page.do">Review Financial Specification & compare</a></td></tr>
			<tr><td><a href="quotationPage.do">Financial Feedback on supplier</a></td></tr>
			<tr><td><a href="suphi.do">View Supplier's Feedback History</a></td></tr>
			<tr><td><a href="approvedPage.do">Initial Financial Approval or Rejection</a></td></tr>

	</table>
	</div>
	</div>
</c:if>
<c:if test="${ sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#">ADMIN APPROVAL</a></div>
	<div class="submenu">
    <div id="menu">
    <table width="100%" border="0" cellspacing="0" cellpadding="3">
	        <tr><td><a href="view3.do">Approval for order or rejection</a></td></tr>
	        <tr><td><a href="viewRFQStatus.do">View RFQ Status & Compare</a></td></tr>
	</table>
	</div>
	</div>
</c:if>
<c:if test="${sessionScope.empRoleDesc eq 'Production' || sessionScope.empRoleDesc eq 'Administrator'}">
        <div class="silverheader"><a href="#"><bean:message key="menu.samplereq"/></a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">

        <tr><td><a href="demand.do" ><bean:message key="menu.9.1"/></a></td></tr>
    	</table>

	</div>
	</div>
</c:if>
<c:if test="${sessionScope.empRoleDesc eq 'Finance' || sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#">SUPPLIER SAMPLING CONFIRMATION</a></div>
	<div class="submenu">
    <div id="menu">
 <table width="97%" border="0" cellspacing="0" cellpadding="3">
 			<tr><td><a href="con2.do">Supplier Sample Confirmation</a></td></tr>
			<tr><td><a href="ev1.do"> Supplier Sample Evaluation</a></td></tr>

	</table>
	</div>
	</div>
</c:if>
<c:if test="${sessionScope.empRoleDesc eq 'Technical' || sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#"><bean:message locale="lang" key="menu.samptechapproval"/></a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
 			<tr><td><a href="samplereviewPage.do"><bean:message locale="lang" key="menu.11.1"/></a></td></tr>
			<tr><td><a href="sf.do"><bean:message locale="lang" key="menu.11.2"/></a></td></tr>
			<tr><td><a href="sa.do"><bean:message locale="lang" key="menu.11.3"/></a></td></tr>
	</table>
	</div>
	</div>
</c:if>
<c:if test="${sessionScope.empRoleDesc eq 'Finance' || sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#"><bean:message locale="lang" key="menu.sampfinanapproval"/></a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
	        <tr><td><a href="samplelinkPage.do"><bean:message locale="lang" key="menu.12.1"/></a></td></tr>
			<tr><td><a href="feedback.do"><bean:message locale="lang" key="menu.12.2"/></a></td></tr>
			<tr><td><a href="iar.do"><bean:message locale="lang" key="menu.12.3"/></a></td></tr>
	</table>
	</div>
	</div>
</c:if>
<c:if test="${sessionScope.empRoleDesc eq 'Production' || sessionScope.empRoleDesc eq 'Administrator'}">
        <div class="silverheader"><a href="#"><bean:message key="menu.sampoprapproval"/></a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
        <tr><td><a href="review.do"><bean:message key="menu.13.1"/></a></td></tr>
        <tr><td><a href="feed.do"><bean:message key="menu.13.2"/></a></td></tr>
        <tr><td><a href="final.do"><bean:message key="menu.13.3"/></a></td></tr>
        <tr><td><a href="suphi.do">View Supplier Feedback History</a></td></tr>

	</table>


	</div>
	</div>
</c:if>
<c:if test="${ sessionScope.empRoleDesc eq 'Administrator'}">
<div class="silverheader"><a href="#" ><bean:message locale="lang" key="menu.adminsamapproval"/></a></div>
	<div class="submenu">
    <div id="menu">
    <table width="97%" border="0" cellspacing="0" cellpadding="3">
        <tr><td><html:link action="view1.do"><bean:message locale="lang" key="menu.14.1"/></html:link></td></tr>
                         <tr><td><html:link action="view2.do"><bean:message locale="lang" key="menu.14.2"/></html:link></td></tr>
                         <tr><td><html:link action="view3.do"><bean:message locale="lang" key="menu.14.3"/></html:link></td></tr>
                         <tr><td><html:link action="sap.do"><bean:message locale="lang" key="menu.14.4"/></html:link></td></tr>
                         <tr><td><html:link action="bdm"><bean:message locale="lang" key="menu.14.5"/></html:link></td></tr>
	
      
    </table>
	</div>
	</div>
</div>
</c:if>
</body>
</html>