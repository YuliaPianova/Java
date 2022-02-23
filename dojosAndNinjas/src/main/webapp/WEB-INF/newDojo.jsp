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
<title>New Dojo</title>
</head>
<body>
<div class="container-md mx-auto">
 <h1 class="text-center">Create a new Dojo</h1>
 
 <form:form method="Post" action="/dojo/create" modelAttribute="dojo">
 	<p>
 		<form:label path="name">Dojo Name:</form:label>
 		<form:errors path="name"> </form:errors>
 		<form:input path="name"></form:input>
	 </p>
 		<button class="btn-primary">Create</button>

 </form:form>
 </div>
</body>
</html>