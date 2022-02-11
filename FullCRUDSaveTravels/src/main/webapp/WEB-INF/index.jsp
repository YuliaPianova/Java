<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page isErrorPage="true" %>


<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">

<meta charset="UTF-8">
<title>All Expenses Table</title>
</head>
<body>

<div class="container-md mx-auto">

		<h1 class="text-center">Save Travels</h1>
		<a href="/expenses/new">Add a New Expense</a>
	
		<table class="table table-striped">
			<tr>
				<th>Name</th>
				<th>Vendor</th>
				<th>Price</th>
				<th>Description</th>
				<th>Action</th>
			</tr>
			
			<c:forEach var="oneExpense" items="${expenses}">
			
				<tr>
					<td><a href="/expenses/${oneExpense.id}"><c:out value="${oneExpense.name}"/></a></td>
					<td>${oneExpense.vendor}</td>
					<td>${oneExpense.price}</td>
					<td>${oneExpense.description}</td>
					
					<td><a href="expenses/<c:out value="${oneExpense.id}"/>/edit">Edit</a>
					 
					<form action="/expenses/${oneExpense.id}" method="post">
					    <input type="hidden" name="_method" value="delete">
					    <input type="submit" value="Delete" class="btn-warning">
					</form>
					</td>
				</tr>
			
			</c:forEach>
		
		</table>
		

</body>
</html>