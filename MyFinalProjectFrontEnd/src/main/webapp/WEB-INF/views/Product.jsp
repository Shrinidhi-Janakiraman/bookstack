<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}
tr:hover{background-color:#f5f5f5}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<br>
<br>
<br>
<%-- <form:form action="InsertProduct" modelAttribute="product" enctype="multipart/form-data">
 
<h1>Product Details</h1>
<div class="container">
    <div class="col-xs-6">
<table align="center">	
		
	
	<tr>
		<td>Product ID</td>
		<td><form:input class="form-control" path="productId"/></td>		
	</tr>
	<tr>
		<td>Product Name</td>
		<td><form:input class="form-control" placeholder="ProductName" path="productName"/></td>		
	</tr>
	<tr>
		<td>Product Desc</td>
		<td><form:input class="form-control" placeholder="Description" path="productDesc"/></td>		
	</tr>	
	<tr>
		<td>Product Stock</td>
		<td><form:input class="form-control" placeholder="Num of Stock" path="stock"/></td>		
	</tr>
	<tr>
		<td>Product Price</td>
		<td><form:input class="form-control" placeholder="Price" path="price"/></td>		
	</tr>
	<tr>
		<td>Category</td>
		<td><form:select class="form-control"  path="catName">
			<form:option value="0" lable="---Select---"/>
			<form:options items="${categoryList}"/>
			</form:select>
		</td>		
	</tr>
	<tr>
		<td>Supplier</td>
		<td><form:select class="form-control" path="supplierId">
			<form:option value="0" lable="---Select---"/>
			<form:options items="${supplierList}"/>
			</form:select>		
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input class="form-control" type="file" path="pimage"/></td>		
	</tr>
	<tr>
		<td colspan="2">
			<center><input class="btn btn-lg btn-info" type="submit" value="Insert"/></center>
		</td>		
	</tr>

</table>
</div>
</div>
</form:form> --%>

<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Product ID</td>
	<td>Product Name</td>
	<td>Product Description</td>
	<td>Stock</td>
	<td>Price</td>
	<td>catName</td>
	<td>supplierID</td>
	<td>Photo</td>
	<td>Operation</td> 
</tr>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="cyan">
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.stock}</td>
		<td>${product.price}</td>
		<td>${product.catName}</td>
		<td>${product.supplierId}</td>
		<td>
			<a href="productDesc/${product.productId }">
		<img src="<c:url value="resources/images/${product.productId }.jpg"/>" width="50px" height="50px">
		</a>
		</td>
		<td>
			<a href="<c:url value="deleteProduct/${product.productId}"/>">DELETE</a>/
			<a href="<c:url value="updateProduct/${product.productId}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach> 
</table> 
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>