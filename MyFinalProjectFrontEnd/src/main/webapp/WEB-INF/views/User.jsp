<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>

<!-- <style>

body, html
{
    height: 100%;
    margin: 0;
}

.bg {
    
    background-image: url("resources/Signup BG.jpg");    
    height: 100%;     
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

</style> -->

</head>

<body>

<!-- <div class="bg"> -->

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<br>
<br>
<br>
<br>
<div class="container">
<div class="jumbotron">
<h2>Register</h2>
<div class="col-lg-12">
<div class="row">
<br>
<br>
<br>
<br>

<%-- <form:form action="AddUser" modelAttribute="user"> 
<div class="col-lg-8">

	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>    
    <input id="login-userName" type="text" class="form-control" name="userName" value="" placeholder="username or email">                                        
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>    
    <input id="userEmail" type="text" class="form-control" name="userEmail" value="" placeholder="Please enter your email">                                        
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>    
    <input id="userPassword" type="password" class="form-control" name="userPassword" value="" placeholder="Please type the password">                                        
    </div>
	
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>    
    <input id="userPhone" type="text" class="form-control" name="userPhone" value="" placeholder="Enter phone number">                                        
    </div>
    
	<div class="form-group">
	<div style="margin-bottom: 25px" class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>    
    <input id="userAddress" type="text" class="form-control" name="userAddress" value="" placeholder="Enter address">                                        
    </div>
		
	<br>
		<center>
	<button type="submit" class="btn btn-lg btn-info">Submit</button>
	<button type="reset"  class="btn btn-lg btn-info">Cancel</button>
	</center>	
		
</div>

</form:form> --%>
<form:form action="AddUser" modelAttribute="user"> 
<div class="col-lg-8">
		<div class="form-group">
	    <label>Username</label>
	    <form:input path="userName" placeholder="Enter UserName" class="form-control"  />
	    </div>
	
	    <div class="form-group">
	    <label>Email-ID</label>
	    <form:input path="userEmail" type="email" placeholder="Enter Email" class="form-control"/>
	    </div>
	
	    <div class="form-group">
	    <label>Password</label>
	    <form:input type="password" path="userPassword" placeholder="Enter password " class="form-control"/>
	    </div>
	
	    <div class="form-group">
	    <label>Phone Number</label>
	    <form:input path="userPhone" placeholder="Enter phone number " class="form-control"/>
	    </div>

	    <div class="form-group">
	    <label>Address</label>
	    <form:input path="userAddress" placeholder="Enter Address" class="form-control"></form:input>
	    </div>
	
	<br>
	<br>
	<center>
	<button type="submit" class="btn btn-lg btn-info">Submit</button>
	<button type="reset"  class="btn btn-lg btn-info">Cancel</button>
	</center>
	</div>


</form:form>
</div>
</div>
</div>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>