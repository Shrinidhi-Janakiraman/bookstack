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
<br>
<br>
<br>
<br>
<br>
<table>

	<tr>
		<td rowspan="5">
			<img src="<c:url value="/resources/images/${product.productId}.jpg"/>"  width="500px" height="500px" />
		</td>
		<td>&nbsp;</td>
	</tr>

	<tr>
		<td>Product Name :${product.productName}</td>
	</tr>
	<tr>
		<td>Product Desc :${product.productDesc}</td>
	</tr>
		<tr>
		<td>Product Price :${product.price}</td>
	</tr>
		

</table>

<div class="section" style="padding-bottom:20px;">
<form action="addToCart" method="post">
	<input type="hidden" value="${product.productId }" name="pId">
	<input type="hidden" value="${product.price }" name="pPrice">
	<input type="hidden" value="${product.productName }" name="productName">
<%-- 	<input type="hidden" value="${product.pimage }" name="imgname">
 --%>	
 <br>
 <br>
 <!-- <a href="addToCart" class="btn btn-success">Add to Cart </a> -->
   <!--  <input type="number" name="cartQnty" placeholder="Enter quantity" class="form-control"/> -->
	<!-- <input type="number" class="form-control" name="quantity" required> -->
	
	<input class="btn btn-primary btn-lg" type="submit" value="Add to Cart">
	
</form>
</div>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>