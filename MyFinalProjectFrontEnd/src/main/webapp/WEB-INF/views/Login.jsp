<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.model.User"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->

<!-- <style>

body, html
{
    height: 100%;
    margin: 0;
}

.bg {
    
    background-image: url("resources/Headphone.jpg");    
    height: 100%;     
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

</style> -->
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<br>
<br>
<br>
<br>
<form action="perform_login" method="post">
<div class="container">
<div class="jumbotron">
<h1>Login</h1>
<!-- <div class="col-lg-12">-->
<div class="row"> 
<br>
<br>
<br>
<br>

<%-- <form action="perform_login" method="post"> --%>
<!-- <table align="center">
	
		<tr><td colspan="2"><center>Login Page</center></td></tr>
		<tr>
			<td><font color="red"> Login ID</font></td>
			<td> <input type="text" name="username" required/></td>
		</tr>
		<tr>
			<td> <font color="red">Password</font></td>
			<td> <input type="password" name="password" required/></td>
		</tr>
		<tr>
			<td colspan="2"><center><input type="submit" value="LOGIN"/></center>
		</tr>
</table> -->

  <div class="col-lg-12">
      <div class="form-group">
      <label>UserName</label>
      <input type="text" class="form-control" placeholder="Enter username" name="username" required>
      </div>
      <div class="form-group">
      <label>Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" name="password" required>
      </div>
    
    <a href="user">Create Account</a>
    <br>
    <br>
  <center><button type="submit" class="btn btn-lg btn-info">Submit</button></center>
  </div>

</div>
</div>
<!-- </div>-->
</div> 
</form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>