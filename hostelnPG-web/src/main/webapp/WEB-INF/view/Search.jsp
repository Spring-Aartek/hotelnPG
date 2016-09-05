<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>


  <script type="text/javascript" src="js/jquery-1.js"></script>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">//<![CDATA[
$(window).load(function(){
$("input:checkbox").click(function () {
    var showAll = true;
    $('tr').not('.first').hide();
    $('input[type=checkbox]').each(function () {
        if ($(this)[0].checked) {
            showAll = false;
            var status = $(this).attr('rel');
            var value = $(this).val();            
            $('td.' + status + '[rel="' + value + '"]').parent('tr').show();
        }
    });
    if(showAll){
        $('tr').show();
    }
});
});//]]> 

</script>


</head>
<body>

<input class="prod_status " rel="status" value="Discontinued" type="checkbox">No Of Rooms

<br>
<input class="Email" rel="Email" value="Email" type="checkbox">Email
<br>
<input class="prod_capacity" rel="capacity" value="2" type="checkbox">2
<br>
<input class="prod_capacity" rel="capacity" value="1" type="checkbox">1
<br>

<br>
<br>
<br>






	   <c:choose>
    <c:when test="${empty userList}">
        <p>No Such Record Found.......!<p>
    </c:when>
    <c:otherwise>
       
<table class="someclass" summary="bla" border="0" cellpadding="0" cellspacing="0" >
    <thead>
   <th>Serial No.</th>
    <th scope="row">FirstName</th>
     <th scope="row">LastName</th>
      <th scope="row">Email</th>
       <th scope="row">Mobile</th>
    	 <th scope="row">Edit Profile</th>
		<th scope="row">Delete</th>
  </tr>
   
				  </thead>						
 <tbody>
  <tr>
  <c:forEach items="${userList}" var="userList">
    <td></td>

   <td><h6>${userList.firstName}</h6></td>
    <td ><h6>${userList.lastName}</h6></td>
    <td class="Email" rel="emailId"><h6>${userList.emailId}</h6></td>
    <td class="Mobile" rel="mobile"><h6>${userList.mobile}</h6></td>
      <td><h6><a href="updateprofile.do?id=${userList.id}">Edit Profile</a></h6></td>
    <td><h6><a href="deleteProfile.do?id=${userList.id}">Delete Profile</a></h6></td>
  </tr>
   </c:forEach>

    </c:otherwise>
 </c:choose> 
</tbody>
</table>

</body>
</html>