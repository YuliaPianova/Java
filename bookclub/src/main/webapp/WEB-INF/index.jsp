<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Dashboard</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container-md mx-auto">

 <h1 class="text-center mt-3">Book Club!</h1>
 <h3 class="text-center mt-3 mb-5"> A place for friends to share thoughts on books.</h3>

<div class = "row">


	
		<form:form action="/register" modelAttribute="newUser" class="col-md-5">
		
		<h2>Register</h2>
		
			<div class="form-group">
			 	<form:errors path="userName"/>
				<form:label for="userName" path="userName">User Name:</form:label>
				<form:input type="text" path="userName" class="form-control"/>
			</div>
			
			<div class="form-group">
				<form:errors path="email"/>
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email" class="form-control"/>
			</div>
			
			<div class="form-group">
				<form:errors path="password"/>
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="text" path="password" class="form-control"/>
			</div>
			
			<div class="form-group">
				<form:errors path="confirm"/>
				<form:label for="" path="confirm">Confirm:</form:label>
				<form:input type="text" path="confirm" class="form-control"/>
			</div>
			
		
				<input type="submit" value="Submit" class="btn-primary mt-3"/>
			
		</form:form>
	
	

	
		<form:form action="/login" modelAttribute="newLogin" class="col-md-4">
		
		<h2>Login User</h2>
		
			<div class="form-group">
				<form:errors path="email"/>
				<form:label for="email" path="email">Email:</form:label>
				<form:input type="text" path="email" class="form-control"/>
			</div>
			
			<div class ="form-group">
				<form:errors path="password"/>
				<form:label for="password" path="password">Password:</form:label>
				<form:input type="text" path="password" class="form-control"/>
			</div>
			
			
				<input type="submit" value="Login" class="btn-primary mt-3"/>
			
		
		</form:form>
		
		
	</div>

</div>

</body>
</html>