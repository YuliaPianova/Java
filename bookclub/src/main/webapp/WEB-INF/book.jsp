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
	<title>Insert title here</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
	
	<!--<h1>Welcome, <c:out value="${user.userName}"/></h1> -->
	
	<nav class="d-flex justify-content-between align-items-center col-10 mx-auto mt-3 ">
        <h1 class="text-center pl-1"><c:out value="${book.title}"/></h1>
        
        <div class="d-flex col-6 justify-content-around">
            <a href="/home" class="btn btn-primary">Back to Shelves</a>
            <a href="/addPage" class="btn btn-primary">Add a new book</a>
            <a href="/logout" class="btn btn-primary">Logout</a>
        </div>
    </nav>
     
     <div class="container col-10 mt-5 ">
     	<c:choose>
     		<c:when test="${book.user.userName==user.userName}">
		
			<h3><span style="color: red;">You</span> read 
			<span style="color: rebeccapurple;"><c:out value="${book.title}"/></span> by 
			<span style="color: darkgreen;"><c:out value="${book.author}"/></span></h3>
		
		
		
			<h4>Here are your thoughts:</h4>
			<hr />
			
			<p><c:out value="${book.thoughts}"/></p>
			</c:when>
			
			<c:otherwise>
		
			
			<h3><span style="color: red;"><c:out value="${book.user.userName}"/></span> read 
			<span style="color: rebeccapurple;"><c:out value="${book.title}"/></span> by 
			<span style="color: darkgreen;"><c:out value="${book.author}"/></span></h3>
		
		
		
			<h4>Here are <c:out value="${book.user.userName}"/>'s thoughts:</h4>
			
			<hr />
			
			<p><c:out value="${book.thoughts}"/></p>
			
			</c:otherwise>
		</c:choose>
			
			
			
			
			<hr />
			
				<c:choose>
						<c:when test="${book.user.userName==user.userName}">
					
							<a href="/books/${book.id}/edit" class="btn btn-primary">Edit</a>
						</c:when>
				</c:choose>
			
			
		
		</div>
		
		
		</div>
	

</body>
</html>