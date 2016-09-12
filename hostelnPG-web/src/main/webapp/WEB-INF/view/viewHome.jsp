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
	 alert("Country");
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
 
 
 function myFunc1() {
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
				     $('#area').append('<option value="' + response[i].area_id + '">' + response[i].area_name+ '</option>');
				  }
			  
		 },
		 
		  error: function(){      
		   alert('Error while request..');
		  }
		 });
	 

	 
	   }
 
 function sumbit() {
	 alert("submit check");
	 var country = document.getElementById('country')[document.getElementById('country').selectedIndex].innerHTML;
	 var city = document.getElementById('city')[document.getElementById('city').selectedIndex].innerHTML;
	 var area = document.getElementById('area')[document.getElementById('area').selectedIndex].innerHTML;
		
	 alert("step 2");
	 $.ajax({
		  type: "post",
		  url: "submitform",
		  data : {country: country,city:city,area:area  
		  
		  },
		
		  error: function(){      
		   alert('Error while request..');
		  }
		 });
	 

	 
	   }

 
</script>
    
</head>
<!--new changed -->
<br>
<p>
</p>
<body>
<form:form method="POST" modelAttribute="Country" action="SearchResult" >
	
		<center><table>

			<tr>
				<td>Country :</td>
				<td><form:select id="country"  name="country" onchange="myFunc()"  path="country_name" >
     <form:option      value="Nill" label="Select Country"  />
   <c:forEach var="countryList" items="${countryList}">
  
  
     <form:option      value="${countryList.country_id}" label="${countryList.country_name}"  />
   </c:forEach>
</form:select>
                                </td>
			
			<!-- file change   -->
		<td>City :</td>
	<td><form:select id="city"  name="city" onchange="myFunc1()"  path="country_name" >
    <form:option      value="Nill" label="Select City"  />
   <c:forEach var="cityList" items="${cityList}">
    
     <form:option      value="${cityList.city_id}" label="${cityList.city_name}"  />
   </c:forEach>
</form:select>
                                </td>
		
		   <td>Area :</td>
		   <td><form:select id="area"  name="area" onchange="myFunc2()"  path="country_name" >
    <form:option      value="Nill" label="Select Area"  />
   <c:forEach var="areaList" items="${areaList}">
    
     <form:option      value="${areaList.area_id}" label="${areaList.area_name}"  />
   </c:forEach>
</form:select>
                                </td>
				<td colspan="3"><input type="submit" value="Search"  /></td>
			</tr>
		</table></center>
	</form:form>


<center><h4><a href="searchfilter">Click to Filter</a>   |  <a href="showlogin">Login</a>  |  <a href="basic">Basic</a></center>

<div style="margin-top:100px;">
</div>

</body>
</html>