<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<script type="text/javascript" language="javascript" src="http://www.technicalkeeda.com/js/javascripts/plugin/jquery.js"></script>
<script type="text/javascript" src="http://www.technicalkeeda.com/js/javascripts/plugin/json2.js"></script>
<script type="text/javascript"  src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script src="js/jquery.autocomplete.js"></script>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
jQuery(function(){
$("#country").autocomplete("getArea");
});
</script>
 <script type="text/javascript" >
 function myFunc() {
	 alert("hello");
	 var name = $('#country').val();
	 alert(name);
	 $.ajax({
		  type: "post",
		  url: "selectcity",
		  data : {country_id: name},
		  cache: false,
		  success : function(response) {
		     
			 
				  for (var i = 0; i < response.length; i++) {
				     $('#city').append('<option value="' + response[i].city_id + '">' + response[i].city_name+ '</option>');
				  }
				 
			  
			  
			  
			  
		 },
		 
		  error: function(){      
		   alert('Error while request..');
		  }
		 });
	 

	 
	   }
 
 function myFunc2() {
	 alert("Area");
	 var name1 = $('#city').val();
	 alert(name1);
	 $.ajax({
		  type: "post",
		  url: "getArea",
		  data : {city_id: name1},
		  cache: false,
		  success : function(response) {
		     
			 
				  for (var i = 0; i < response.length; i++) {
				     $('#area').html('<option value="' + response[i].area_id + '">' + response[i].area_name+ '</option>');
				  }
			  
		 },
		 
		  error: function(){      
		   alert('Error while request..');
		  }
		 });
	 

	 
	   }

 function myFunc2() {
	 alert("Area");
	 var name1 = $('#city').val();
	 alert(name1);
	 $.ajax({
		  type: "post",
		  url: "getArea",
		  data : {city_id: name1},
		  cache: false,
		  success : function(response) {
		     
			 
				  for (var i = 0; i < response.length; i++) {
				     $('#area').html('<option value="' + response[i].area_id + '">' + response[i].area_name+ '</option>');
				  }
			  
		 },
		 
		  error: function(){      
		   alert('Error while request..');
		  }
		 });
	 

	 
	   }
 
</script>
    
</head>
<!--new changed -->
<body>
<form:form method="POST" modelAttribute="Country" action="searchfilter">
	
		<center><table>

			<tr>
				<td>Country :</td>
				<td><form:select id="country"  name="country" onchange="myFunc()"  path="country_name" >
   <c:forEach var="countryList" items="${countryList}">
    
     <form:option      value="${countryList.country_id}" label="${countryList.country_name}"  />
   </c:forEach>
</form:select>
                                </td>
			
			<!-- file change   -->
		<td>City :</td>
		<td><form:select id="city"  name="city"  path="country_name" onchange="myFunc2()">
  
     <form:option value="select City" label="Select City"  />
  
</form:select></td>
		
		   <td>Area :</td>
		   <td><form:select id="area" name="area" path="country_name" autocomplete="on">
  
        <form:option value="select Area" label="Select Area" />
  
        </form:select></td>
				<td colspan="3"><input type="submit" /></td>
			</tr>
		</table></center>
	</form:form>


<center><h4><a href="searchfilter">Click to Filter</a>   |  <a href="showlogin">Login</a>  |  <a href="basic">Basic</a></center>

</body>
</html>