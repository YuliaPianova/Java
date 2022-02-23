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
<title>new Ninja</title>
</head>

<body>
	<div class="container-md mx-auto">
		<h1 class ="text-center">Create a Ninja</h1>
		<form:form action="/ninja/create" method="post" modelAttribute="ninja">

   		 <p>
        <form:label path="firstName">First Name:</form:label>
        <form:errors path="firstName"></form:errors>
        <form:input path="firstName"/>
   		 </p>
    
   		 <p>
        <form:label path="lastName">Last Name:</form:label>
         <form:errors path="lastName"></form:errors>
        <form:input path="lastName"/>
    	</p>
   		 <p>
        <form:label path="age">Age:</form:label>
         <form:errors path="age"></form:errors>
        <form:input path="age"/>
   		 </p>
    
   		 <p>
        <form:label path="dojo">Dojo:</form:label>
        <form:select path="dojo">

        	<c:forEach var="eachDojo" items="${allDojos}">
	        
	        	<option value="${eachDojo.id}"><c:out value="${eachDojo.name}"/></option>
	        
        	</c:forEach>

        </form:select>
    </p>
    
    
    <input type="submit" value="Submit" class="btn-primary"/>
    
		</form:form> 
	</div> 
</body>
</html>