<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style type="text/css">
.myform{
 background: #ffffff none repeat scroll 0 0;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
    margin: 0 auto 70px;
    margin-top:60px;
    max-width: 360px;
    padding: 25px;
    position: relative;
    text-align: center;
    z-index: 1;
}

.login-myform{
background: #f2f2f2 none repeat scroll 0 0;
    border: 0 none;
    box-sizing: border-box;
    font-family: "Roboto",sans-serif;
    font-size: 14px;
    margin: 0 0 15px;
    outline: 0 none;
    padding: 15px;
    width: 100%;
}

.mybutton{background: #4caf50 none repeat scroll 0 0;
    border: 0 none;
    color: #ffffff;
    cursor: pointer;
    font-family: "Roboto",sans-serif;
    font-size: 14px;
    outline: 0 none;
    padding: 15px;
    text-transform: uppercase;
    width: 100%;

}
</style>
</head>
<body style="background:rgba(0, 0, 0, 0) linear-gradient(to left, #76b852, #8dc26f) repeat scroll 0 0">
<!-- login added  -->
<div>
<div class="myform">
<form:form  method="POST" action="verifylogin.do"
				modelAttribute="UserRegistration" >
					
							<table width="100%" border="0" >
					<tr>
						<td>
								<%-- <form:errors path="name"  class="label error-label"></form:errors> --%>
								<label>
									<p>
									
									</p> <form:input class="login-myform" path="emailId" 
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
									
									</p> <form:password class="login-myform" path="password" 
										placeholder="Password" 
										id="password" />
								</label>
							</td>
					</tr>
				
					<tr>
						<td colspan="2"><input class="mybutton" type="submit" value="LOGIN"
							 /> </td>
					</tr>
				</table>
			</form:form>
			<a href="registration.do">Register Here</a><p>
		
			<p>
</div>			
</div>			
</body>
</html>