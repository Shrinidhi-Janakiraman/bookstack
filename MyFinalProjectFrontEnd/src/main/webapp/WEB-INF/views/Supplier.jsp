<%@ page language="java" contentType="text/html" import="com.model.Supplier"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
<%-- <form:form action="AddSupplier" modelAttribute="supplier">
<h1>Supplier Details</h1>
<div class="container">
    <div class="col-xs-6">
<table align="center">
	<!-- <tr>
		<td colspan="2">Supplier Module</td>
	</tr> -->
	
	<tr>
		<td>Supplier ID</td>
		<!--<td><input type="text" name="catId"/></td>-->
		<td><form:input path="supplierId"/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<!-- <td><input type="text" name="catName"/></td> -->
		<td><form:input path="supplierName"/></td>
	</tr>
	<tr>
		<td>Supplier Desc</td>
		<!-- <td><input type="text" name="catDesc"/></td> -->
		<td><form:input path="supplierAddress"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Insert"/></center>
		</td>
	</tr>
</table>
</form:form> --%>

<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Supplier ID</td>
	<td>Supplier Name</td>
	<td>Supplier Address</td>
	<td>Operation</td> 
</tr>
 <c:forEach items="${supplierList}" var="supplier">
	<tr bgcolor="cyan">
		<td>${supplier.supplierId}</td>
		<td>${supplier.supplierName}</td>
		<td>${supplier.supplierAddress}</td>
		<td>
			<a href="<c:url value="deleteSupplier/${supplier.supplierId}"/>">DELETE</a>/
			<a href="<c:url value="updateSupplier/${supplier.supplierId}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>
 
</table>
<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>