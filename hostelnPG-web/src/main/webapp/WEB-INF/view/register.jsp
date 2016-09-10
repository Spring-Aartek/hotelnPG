<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.error {
	color: red;
	font-weight: bold;
}

.css-serial {
	counter-reset: serial-number; /* Set the serial number counter to 0 */
}

.css-serial td:first-child:before {
	counter-increment: serial-number;
	/* Increment the serial number counter */
	content: counter(serial-number); /* Display the counter */
}
</style>

<script type="text/javascript"
	src="js/jquery.dataTables.min.displaytag.js"></script>
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
	var confirmed = false;
	$(function() {
		/* Search functionality */
		var oTable = $('#campaignDisPlayTable').dataTable({
			"bPaginate" : false,
			"bLengthChange" : false,
			"bFilter" : true,
			"bSort" : false,
			"bInfo" : false,
			"bAutoWidth" : false,
			"bStateSave" : false
		});
		$("thead input").keyup(function() {
			/* Filter on the column (the index) of this element */
			oTable.fnFilter(this.value, $("thead input").index(this));
		});

		$("thead input").focus(function() {
			if (this.className == "search_init") {
				this.className = "";
				this.value = "";
			}
		});

		$("thead input").blur(function(i) {
			if (this.value == "") {
				this.className = "search_init";
				this.value = asInitVals[$("thead input").index(this)];
			}
		});
	});
</script>
</head>
<body>




<div align="center">

			<form:form action="userRegistration.do"
				modelAttribute="UserRegistration">


				<table width="30%" border="0">
					<tr>
						<td><label>
								<p>
									First Name<small class="required">*</small>
								</p> <form:input path="firstName" placeholder="First Name" />
						</label></td>
						<td><form:errors path="firstName" class="error"></form:errors></td>
					</tr>
					<tr>
						<td><label>
								<p>
									Last Name<small class="required">*</small>
								</p> <form:input path="lastName" placeholder="Last Name" />
						</label></td>
						<td><form:errors path="lastName" class="error"></form:errors></td>
					</tr>
					<tr>
						<td><label>
								<p>
									Email Id<small class="required">*</small>
								</p> <form:input path="emailId" placeholder="Email Id" />
						</label></td>

						<td><form:errors path="emailId" class="error"></form:errors></td>
					</tr>
					<tr>
						<td><label>
								<p>
									Mobile <small class="required">*</small>
								</p> <form:input path="mobile" placeholder="Mobile" />
						</label></td>
						<td><form:errors path="mobile" class="error"></form:errors></td>
					</tr>



					<tr>
						<td><label>
								<p>
									Password<small class="required">*</small>
								</p> <form:password path="password" placeholder="Password" />
						</label></td>
						<td><form:errors path="password" class="error"></form:errors></td>
					</tr>
					
					
  
  

					
					
						<tr>
						<td><label>
								<p>
									UserType :
								 <form:select path="userType">
								
								 <form:option value="HostelSeeker" label="Hostel Seeker"/>
								 <form:option value="ServiceProvider" label="Service Provider"/>
								
						</form:select>
						</label></td>
						<td><form:errors path="userType" class="error"></form:errors></td>
					</tr>
					
					<p>
						<br>
					<tr></tr>
					<tr>
						<td colspan="2"><input type="submit" value="Submit" /></td>
					</tr>
					
				</table>
			</form:form>


			</table>

</div>


	

	






</body>
</html>