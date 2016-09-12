<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<style type="text/css">
.mybody2{
  height:330px;
  background: rgba(0, 0, 0, 0) url("images/rooms.jpg") repeat-y scroll 0 0 / cover ;
}
table {
    border-collapse: collapse;
    margin:0 auto;
}
</style>

  <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
    <link rel="stylesheet" type="text/css" href="js/result-light.css">
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" type="text/css" href="js/jquery-ui.css">
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <link rel="stylesheet" type="text/css" href="js/jquery.dataTables_themeroller.css">
    <link rel="stylesheet" type="text/css" href="js/jquery.dataTables.css">
    <script type="text/javascript" src="js/TableTools.min.js"></script>
<script type="text/javascript">//<![CDATA[
$(window).load(function(){
$('#sharing').on('click', function () {
    var $rowsNo = $('#mytable tbody tr').filter(function () {
        return $.trim($(this).find('td').eq(3).text()) === "NO"
    }).toggle();
});
$('#boys').on('click', function () {
    var $rowsNo = $('#mytable tbody tr').filter(function () {
        return $.trim($(this).find('td').eq(4).text()) === "Female"
    }).toggle();
});
$('#girls').on('click', function () {
    var $rowsNo = $('#mytable tbody tr').filter(function () {
        return $.trim($(this).find('td').eq(4).text()) === "Male"
    }).toggle();
});

});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOSTELS</title>
</head>
<body>
<div class="mybody2">
<div style="height:auto;margin:0 auto;">
<h1 style="color:#2A2E33"><b>SEARCH YOUR HOSTELS</b></h1>
	 <input type="checkbox" id="sharing">Yes Need Sharing ?</>  
	  <input type="checkbox" id="boys">Boys Hostel</>
	   <input type="checkbox" id="girls">Girls Hostel</>


	     <c:choose>
    <c:when test="${empty hostelnPGPost}">
        <p>No Such Record Found.......!<p>
    </c:when>
    <c:otherwise>
       
<table id="mytable" class="someclass" summary="bla" border="1" cellpadding="1" cellspacing="1" style="width:500px;">
    <thead>
 
    <th scope="row">S.No.</th>
     <th scope="row">Hostel Name</th>
      <th scope="row">Accomodation Type</th>
       <th scope="row">Sharing Type</th>
       <th scope="row">Boys /Girls</th>
           <th scope="row">Area</th>
    	
  </tr>
   
				  </thead>						
 <tbody>

    
  <tr>
  <c:forEach items="${hostelnPGPost}" var="hostelnPGPost">
   
  <!-- changes type -->
  <td >${hostelnPGPost.id}</td>
    <td>${hostelnPGPost.hostel_name}</td>
    <td>${hostelnPGPost.accommodation_type}</td>
        <td>${hostelnPGPost.sharing_type}</td>
         <td>${hostelnPGPost.hostel_gender}</td>
           <td>${hostelnPGPost.area}</td>
   
  </tr>
 
  
   </c:forEach>

    </c:otherwise>
 </c:choose> 

</tbody>
</table>  
<div style="margin-top:100px;">
</div>
</div>
</div>
</body>
</html>