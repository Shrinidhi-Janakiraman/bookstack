<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- <style>

.navbar {
  min-height: 80px;
}

.navbar-brand {
  padding: 0 15px;
  height: 80px;
  line-height: 80px;
}

.navbar-toggle {
  /* (80px - button height 34px) / 2 = 23px */
  margin-top: 23px;
  padding: 9px 10px !important;
}

@media (min-width: 768px) {
  .navbar-nav > li > a {
    /* (80px - line-height of 27px) / 2 = 26.5px */
    padding-top: 26.5px;
    padding-bottom: 26.5px;
    line-height: 27px;
  }
}
</style> -->
<style>
 .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }

</style>
</head>
<body>
<nav id ="navbar-red" class="navbar navbar-inverse navbar-static-top" role="navigation">
<div class="container">
     
<ul class="nav navbar-nav">
  
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-nav">
<span class="icon bar"></span>
<span class="icon bar"></span>
<span class="icon bar"></span>
<span class="icon bar"></span>
</button>
</ul>
</div>
    <!-- <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp"><img src="resources/logo-201705-01.png"></a>
    </div> -->
  <div class="navbar-header">
      <a class="navbar-brand" href="#">BOOK STACK</a>
    </div>  
<div class="collapse navbar-collapse" id="bs-example-nav">
	
<ul class="nav navbar-nav">
	
   <li><a href="adminHome">Home</a></li>
   <li><a href="adding"><i class="fa fa-plus-square" aria-hidden = "true"></i>Admin</a></li>
     <li><a href="category">Category</a></li>
      <li><a href="product">Product</a></li>
      <li><a href="supplier">Supplier</a></li>
      
</ul> 
    <ul class="nav navbar-nav navbar-right">    
     <li><a href="#"><span class="glyphicon glyphicon-user"></span>Welcome admin!!!</a></li>
      <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> SignOut</a></li>
    </ul>
</div>
</nav>
</body>
</html>