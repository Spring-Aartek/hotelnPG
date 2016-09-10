<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- login added  -->
<form:form  method="POST" action="verifylogin.do"
				modelAttribute="UserRegistration" >
					
							<table width="100%" border="0" >
					<tr>
						<td>
								<%-- <form:errors path="name"  class="label error-label"></form:errors> --%>
								<label>
									<p>
										UserName
									</p> <form:input path="emailId" 
										placeholder=" enter your email" 
										 id="emailId" />
								</label>
							</td>
					</tr>
					<tr>
						<td>
								<%-- <form:errors path="subject"  class="label error-label"></form:errors> --%>
								<label>
									<p>
										Password
									</p> <form:password path="password" 
										placeholder="Password" 
										id="password" />
								</label>
							</td>
					</tr>
				
					<tr>
						<td colspan="2"><input type="submit" value="Submit"
							 /> </td>
					</tr>
				</table>
			</form:form>
			<a href="registration.do">Register Here</a><p>
			<a href="registrationajax.do">Register Using AJAX</a>
			<p>
			<a href="view.do">View</a><p>
			
			
			<form action="employee.do?id=1" >
			
			<input type="button" value="submit"> 
			</form>
			
			
			
</body>
</html>