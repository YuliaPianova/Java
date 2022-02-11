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
<title>Show One Expense</title>
</head>
<body>

   <div class="container-md mx-auto">
		<h1 class="text-center"><c:out value="${expense.name}"/></h1>
		
		<a href="/">Back to All Expenses</a>
		
		<table class="table table-striped">
			<tr>
				<th>Vendor:</th>
				<td><c:out value="${expense.vendor}"/></td>
			</tr>
			<tr>
				<th>Expense Description:</th>
				<td><c:out value="${expense.description}"/></td>
			</tr>
	
			<tr>
				<th>Amount Spent:</th>
				<td><c:out value="${expense.price}"/></td>
			</tr>
		</table>
	</div>


</body>
</html>