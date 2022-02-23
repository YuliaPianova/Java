<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page isErrorPage="true" %>


    

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Dojo Details</title>
</head>

<body>
<div class="container-md mx-auto">
	<h1 class="text-center"><c:out value="${dojo.name}"/> Dojo</h1>
	<table class ="table table-striped">
		<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Age</th>
		</tr>
	

			<c:forEach items="${dojo.ninjas}" var="ninja">
			<tr>
				<td><c:out value="${ninja.firstName}"/></td>
				<td><c:out value="${ninja.lastName}"/></td>
				<td><c:out value="${ninja.age}"/></td>
			</tr>
			</c:forEach>
	</table>
	
	<a href ="/">Back to create a new dojo form</a>
</div>

</body>
</html>