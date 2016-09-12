<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.myfooter{
background:#333333;
height:225px;
}
.myfooter h4{
  color:#EBFFEB;
  font-size: 16px;
  }
  .myfooter a{
  color:#EBFFEB;
  
  }
.wrap {
  overflow:hidden;
  width:1200px; /* Optional */
}

.left {
  float:left;
  width:350px;
}

.middle {
  float:left;
  min-width:500px;
}

.right {
  float:left;
  width:350px;
}

</style>

</head>
<body>
<div class="myfooter">
<footer>
  <div id="wrap">

   <div class="left">
  <h4>Quick Links</h4>
  <a href="registeration.do">Registration </a>
 
<p>  <a href="blog" >Blogs</a>
  <p>
  <a href="blog" >Join our Group</a>
  <p>
  <a href="blog" >About Us</a>
  
   </div>
   <div class="middle">
 <h4>Social Links</h4>
  <a href="registeration.do">FB </a>
 
<p>  <a href="blog" >Twitter</a>
  <p>
  <a href="blog" >Google+</a>
  <p>
  <a href="blog" >Instagram</a>
     
</div>
   <div class="right">
  <h4>Notification </h4>
 Email Alert: 
 <input type="text" name="FirstName" id="textbox" /><br><br/> 

   </div>

   <div class="clearBoth"></div>

</div>
  <!--footer ends here -->
</div>
</body>
</html>