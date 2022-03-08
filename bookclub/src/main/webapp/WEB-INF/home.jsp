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
	<title>All Books</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
	
	<nav class="d-flex justify-content-between align-items-center col-8 mx-auto mt-3">
        <h1 class="text-center">Welcome, <c:out value="${user.userName}"/>!</h1>
        
        <div class="d-flex col-4 justify-content-around">
            <a href="/addPage" class="btn btn-primary">Add a book</a>
            <a href="/logout" class="btn btn-primary">Logout</a>
        </div>
    </nav>
    
		
	<h3 class="text-center mt-5 mb-3" >Books from everyone shelves:</h3>
	
		
		<table class="table table-striped">
		
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Author Name</th>
				<th>Posted By</th>
				<th></th>
				<th></th>
		  	</tr>
		
			
			<c:forEach var="book" items="${books}">
			
				<tr>
					<td><c:out value="${book.id}"/></td>
					<td><a href="books/${book.id}"><c:out value="${book.title}"/></a></td>
					<td><c:out value="${book.author}"/></td>
					<td><c:out value="${book.user.userName}"/></td>
					<td>
					
					<c:choose>
						<c:when test="${book.user.userName==user.userName}">
					
							<a href="/books/${book.id}/edit" class="btn btn-primary">Edit</a>
						</c:when>
					</c:choose>
					
					</td>
					
					<td>
					<c:choose>
						<c:when test="${book.user.userName==user.userName}">
						
							<form action= "/books/${book.id}/destroy" method="post">
							<input type ="hidden" name ="method" value="delete">
							<input type = "submit" value =" delete" class="btn btn-primary">
							</form>
							
						</c:when>
					</c:choose>
						
					</td>
					
				</tr>
			</c:forEach>
		
		</table>
	</div>

</body>
</html>