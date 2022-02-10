<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 



                 <!--  ASSIGNMENT -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show book</title>
</head>
<body>

<h1>All Books: </h1>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<table>
  <tr>
    <th>ID</th>
    <th>Title</th>
    <th>Description</th>
    <th>Language</th>
    <th>Number of Pages</th>
  </tr>
  
  <c:forEach var="book" items = "${books}">
  <tr>
    <td>${book.id }</td>
   <td><a href="books/{bookId">${book.title }</a></td>
    <td>${book.description }</td>
    <td>${book.language }</td>
    <td>${book.numberOfPages }</td>
  </tr>
  </c:forEach>
  
</table>





</body>
</html>