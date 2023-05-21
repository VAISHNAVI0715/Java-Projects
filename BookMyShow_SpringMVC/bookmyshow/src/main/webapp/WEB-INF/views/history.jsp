<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">
<title>Booking History</title>
<style>

h1
{
font-weight: bold;
  color: #f44336;
}
.container {
  max-width: 800px;
  margin: 0 auto;
}

table {
  width: 100%;
  border-collapse: collapse;
}

th, td {
  padding: 12px 15px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

th {
  background-color: #f44336;
  color: #fff;
}

tr:hover {
  background-color: #f5f5f5;
}

.btn {
  font-size: 16px;
  padding: 12px 20px;
  margin-top: 20px;
  background-color: #f44336;
  border: none;
  border-radius: 5px;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.3s ease-in-out;
}

.btn:hover {
  background-color: #e53935;
}

</style>
</head>
<body>
	<div class="container my-5">
  <h1 class="text-center mb-5">Booking History</h1>
  <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">Booking ID</th>
        <th scope="col">Movie</th>
        <th scope="col">Cinema</th>
        <th scope="col">Date</th>
        <th scope="col">Time</th>
        <th scope="col">Seats</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${bookings}" var="book">
      <tr>
        <td>${book.bookingid }</td>
        <td>${book.movieName }</td>
        <td>${book.cinemaName }</td>
        <td>${book.date }</td>
        <td>${book.time }</td>
        <td>${book.seats }</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
   <div class="text-center">
  <a href="${pageContext.request.contextPath}/home" class="btn btn-primary mt-3 ">Return to Home</a>
 </div>
</div>
	
</body>
</html>