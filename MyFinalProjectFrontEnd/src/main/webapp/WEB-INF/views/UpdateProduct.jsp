<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<style>

.modal-header, h4, .close {
    background-color: #333;
    color: #fff !important;
    text-align: center;
    font-size: 30px;
}
.modal-header, .modal-body {
    padding: 40px 50px;
}
.nav-tabs li a {
    color: #777;
}
</style>
<title></title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<br>
<br>
<br>
<br>


<form:form action="${pageContext.request.contextPath}//UpdateProduct" modelAttribute="product" method="post">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Product Module</td>
	</tr>
	<tr>
		<td>Product ID</td>
		<!--<td><input type="text" name="productId"/></td>-->
		<td><form:input path="productId"/></td>
	</tr>
	<tr>
		<td>Product Name</td>
		<!-- <td><input type="text" name="productName"/></td> -->
		<td><form:input path="productName"/></td>
	</tr>
	<tr>
		<td>Product Desc</td>
		<!-- <td><input type="text" name="productDesc"/></td> -->
		<td><form:input path="productDesc"/></td>
	</tr>
	<tr>
		<td>Stock</td>
		<!-- <td><input type="text" name="stock"/></td> -->
		<td><form:input path="stock"/></td>
	</tr>
	<tr>
		<td>Price</td>
		<!-- <td><input type="text" name="price"/></td> -->
		<td><form:input path="price"/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<!-- <td><input type="text" name="catId"/></td> -->
		<td><form:input path="catName"/></td>
	</tr>
	<tr>
		<td>Supplier Id</td>
		<!-- <td><input type="text" name="supplierId"/></td> -->
		<td><form:input path="supplierId"/></td>
	</tr>
	 <%-- <tr>
		<td>Pimage</td>
		<td><form:input type="file" path="pimage"/></td>		
	</tr> --%>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateProduct"/>
			<button type="Product.jsp" class="btn btn-lg btn-info">Cancel</button>
			</center>
			
		</td>
	</tr>
</table>
</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Product ID</td>
	<td>Product Name</td>
	<td>Product Description</td>
	<td>Stock</td>
	<td>Price</td>
	<td>Category Name</td>
	<td>Supplier Id</td>
	<!-- <td>Product Image</td>  -->
	<!-- <td>Operation</td> -->
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
		<%-- <td>
			<a href="productDesc/${product.productId }">
		<img src="<c:url value="resources/images/${product.productId }.jpg"/>" width="50px" height="50px">
		</a>
		</td>	 --%>
		
		<%-- <td>		
		<a href="<c:url value="deleteProduct/${product.productId}"/>">DELETE</a>
		<a href="<c:url value="updateProduct/${product.productId}"/>">UPDATE</a>
		</td> --%>	
	</tr>
</c:forEach>
</table>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>