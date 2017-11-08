<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>

<jsp:include page="UserHeader.jsp"></jsp:include>
<div class="container">
<div class="row">
<div class="col-xs-4 item-photo">
</div>

<div class="col-xs-5" style="border:0px solid gray">

<h3>${product.productName}</h3>
<h4>${product.productDesc }</h4>
<h4>Rs.${product.price }/-</h4>
<img src="<c:url value="resources/images/${product.productId}.jpg"/>" width="150px" height="150px">
<%-- <h5>${product.supplier.supplierName }</h5> --%>
<div class="section" style="padding-bottom:20px;">

<form action="${pageContext.request.contextPath }/addToCart" method="post">
	<input type="hidden" value="${product.productId }" name="productId">
	<input type="hidden" value="${product.price }" name="price">
	<input type="hidden" value="${product.productName }" name="productName">
	<input type="hidden" value="${product.pimage }" name="pimage">
	
	<input type="number" class="form-control" name="quantity" required>
	
	<input class="btn btn-primary btn-lg" type="submit" value="Add To Cart">
</form>
</div>
</div>
<div class="col-xs-9">
<ul class="menu-items">
<li class="active">Details of product</li>
</ul>

</div>

</div>

</div>





</body>
</html>

































